// Initialisation file for SSM2603 audio codec on the Zynq-7020
#include "xparameters.h"
#include "xil_printf.h"
#include "xiicps.h"
#include <sleep.h>
#include <stdio.h>
#include <stdlib.h>


#define IIC_SSM_SLAVE_ADDR		0b00011010
#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID
#define IIC_SCLK_RATE		400000

XIicPs Iic;

enum ssmRegisterAddresses { // as per register map
	R0_LEFT_ADC_VOL		= 0x00,
	R1_RIGHT_ADC_VOL	= 0x01,
	R2_LEFT_DAC_VOL		= 0x02,
	R3_RIGHT_DAC_VOL	= 0x03,
	R4_ANALOG_PATH		= 0x04,
	R5_DIGITAL_PATH		= 0x05,
	R6_POWER_MGMT		= 0x06,
	R7_DIGITAL_IF		= 0x07,
	R8_SAMPLE_RATE		= 0x08,
	R9_ACTIVE			= 0x09,
	R15_SOFTWARE_RESET	= 0x0F,
	R16_ALC_CONTROL_1	= 0x10,
	R17_ALC_CONTROL_2	= 0x11,
	R18_ALC_CONTROL_2	= 0x12
};

int fnInitIic();
int SSMRegSet(XIicPs*, u8, u16);
int SSMSetConfig();

int main(void){

	xil_printf("IIC Start\n");

	// Codec Initialization
	if(fnInitIic() != XST_SUCCESS) {
		xil_printf("I2C Initialization Failed");
				return XST_FAILURE;
	}
	if(SSMSetConfig() != XST_SUCCESS) {
		xil_printf("Error Codec Initialization");
		return XST_FAILURE;
	}

	xil_printf("IIC Finished\n");
	return XST_SUCCESS;
}

/***	fnInitIic()
**
**	Return Value: int
**		XST_SUCCESS if successful
**
**	Errors:
**
**	Description:
**		Initializes the Audio demo. Must be called once and only once
**
*/
int fnInitIic()
{
	int Status;
	XIicPs_Config *Config;

	/*
	 * Initialize the IIC driver so that it's ready to use
	 * Look up the configuration in the config table,
	 * then initialize it.
	 */
	Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XIicPs_SelfTest(&Iic);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the IIC serial clock rate.
	 */
	Status = XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/* --------------------------- SSM -------------------------- */
/* ------------------------------------------------------------ */

/***	SSMRegSet(XIicPs *IIcPtr, u8 regAddr, u16 regData)
**
**	Parameters:
**		IIcPtr - Pointer to the initialized XIicPs struct
**		regAddr - Register in the SSM2603 to write to
**		regData - Data to write to the register (lower 9 bits are used)
**
**	Return Value: int
**		XST_SUCCESS if successful
**
**	Errors:
**
**	Description:
**		Writes a value to a register in the SSM2603 device over IIC.
**
*/
int SSMRegSet(XIicPs *IIcPtr, u8 regAddr, u16 regData)
{
	int Status;
	u8 SendBuffer[2];

	SendBuffer[0] = regAddr << 1;
	SendBuffer[0] = SendBuffer[0] | ((regData >> 8) & 0b1);

	SendBuffer[1] = regData & 0xFF;

	Status = XIicPs_MasterSendPolled(IIcPtr, SendBuffer, 2, IIC_SSM_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		xil_printf("IIC send failed\n\r");
		return XST_FAILURE;
	}
	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(IIcPtr)) {
		/* NOP */
	}
	return XST_SUCCESS;

}

/***	SSMSetConfig()
**
**  Argument:
**		int volume: SSM output volume
**		int R7: SSM R7 register to select bit width
**		int R8: SSM R8 register to select ADC/DAC frequency
**	Return Value: int
**		XST_SUCCESS if successful
**
**	Errors:
**
**	Description:
**		Initializes registers of SSM. Separate from initialization to call the init only one time before preheat
**
*/
int SSMSetConfig()
{
	int Status;
	/*
	 * Write to the SSM2603 audio codec registers to configure the device. Refer to the
	 * SSM2603 Audio Codec data sheet for information on what these writes do.
	 */
	Status = SSMRegSet(&Iic, 15, 0b000000000); //Perform Reset
	usleep(75000);
	Status |= SSMRegSet(&Iic, 6, 0b010011111); //Power up F**KING PATCHED
	Status |= SSMRegSet(&Iic, 0, 0b000010111);
	Status |= SSMRegSet(&Iic, 1, 0b000010111);
	Status |= SSMRegSet(&Iic, 2, 0b001011111);
	Status |= SSMRegSet(&Iic, 3, 0b001011111);
	Status |= SSMRegSet(&Iic, 4, 0b000010010); //000001010 to bypass (enable bypass, disable DAC)
	Status |= SSMRegSet(&Iic, 5, 0b000000000);
	Status |= SSMRegSet(&Iic, 7, 0b000001010); //Changed so Word length is 24
	Status |= SSMRegSet(&Iic, 8, 0b001000000); //CLKDIV2, sampling rate of 48kHZ
	usleep(75000);
	Status |= SSMRegSet(&Iic, 9, 0b000000001);
	Status |= SSMRegSet(&Iic, 6, 0b000100000);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
