-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity zed_top is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB_pin : in std_logic;
    processing_system7_0_PS_CLK_pin : in std_logic;
    processing_system7_0_PS_PORB_pin : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    i2s_addr : inout std_logic_vector(1 downto 0);
    hdmi_clk : out std_logic;
    hdmi_vsync : out std_logic;
    hdmi_hsync : out std_logic;
    hdmi_data_e : out std_logic;
    hdmi_data : out std_logic_vector(15 downto 0);
    i2s_bclk : out std_logic;
    i2s_lrclk : out std_logic;
    i2s_sdata_I : in std_logic;
    i2s_sdata_O : out std_logic;
    hdmi_int : in std_logic;
    hdmi_iic_sda : inout std_logic;
    hdmi_iic_scl : inout std_logic;
    i2s_iic_sda : inout std_logic;
    i2s_iic_scl : inout std_logic;
    hdmi_spdif : out std_logic;
    i2s_mclk : out std_logic;
    otg_oc : in std_logic;
    processing_system7_0_GPIO : inout std_logic_vector(51 downto 0);
    custom_led : out std_logic_vector(7 downto 0)
  );
end zed_top;

architecture STRUCTURE of zed_top is

  component system is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB_pin : in std_logic;
      processing_system7_0_PS_CLK_pin : in std_logic;
      processing_system7_0_PS_PORB_pin : in std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic;
      i2s_addr : inout std_logic_vector(1 downto 0);
      hdmi_clk : out std_logic;
      hdmi_vsync : out std_logic;
      hdmi_hsync : out std_logic;
      hdmi_data_e : out std_logic;
      hdmi_data : out std_logic_vector(15 downto 0);
      i2s_bclk : out std_logic;
      i2s_lrclk : out std_logic;
      i2s_sdata_I : in std_logic;
      i2s_sdata_O : out std_logic;
      hdmi_int : in std_logic;
      hdmi_iic_sda : inout std_logic;
      hdmi_iic_scl : inout std_logic;
      i2s_iic_sda : inout std_logic;
      i2s_iic_scl : inout std_logic;
      hdmi_spdif : out std_logic;
      i2s_mclk : out std_logic;
      otg_oc : in std_logic;
      processing_system7_0_GPIO : inout std_logic_vector(59 downto 0);
      custom_led : out std_logic_vector(7 downto 0)
    );
  end component;

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of system : component is "user_black_box";
 
 
  component asyncart_demo is
    port (
        --GCLK : in std_logic; -- 100 MHz input clock
        BTNC : in std_logic; -- 100 MHz input clock
        BTND : in std_logic; -- 100 MHz input clock
        --OTG-RESETN : in std_logic;
        LD0 : out std_logic;
        LD1 : out std_logic;
        LD2 : out std_logic;
        LD3 : out std_logic;
        LD4 : out std_logic;
        LD5 : out std_logic;
        LD6 : out std_logic;
        LD7 : out std_logic
    );
  end component;


  signal gpio_dummy : std_logic_vector(59 downto 0);

  signal async_control : std_logic_vector(7 downto 0);
  signal activate, clear : std_logic;
  signal led0, led1, led2, led3, led4, led5, led6, led7 : std_logic;
 

begin

  system_i : system
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB_pin => processing_system7_0_PS_SRSTB_pin,
      processing_system7_0_PS_CLK_pin => processing_system7_0_PS_CLK_pin,
      processing_system7_0_PS_PORB_pin => processing_system7_0_PS_PORB_pin,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      i2s_addr => i2s_addr,
      hdmi_clk => hdmi_clk,
      hdmi_vsync => hdmi_vsync,
      hdmi_hsync => hdmi_hsync,
      hdmi_data_e => hdmi_data_e,
      hdmi_data => hdmi_data,
      i2s_bclk => i2s_bclk,
      i2s_lrclk => i2s_lrclk,
      i2s_sdata_I => i2s_sdata_I,
      i2s_sdata_O => i2s_sdata_O,
      hdmi_int => hdmi_int,
      hdmi_iic_sda => hdmi_iic_sda,
      hdmi_iic_scl => hdmi_iic_scl,
      i2s_iic_sda => i2s_iic_sda,
      i2s_iic_scl => i2s_iic_scl,
      hdmi_spdif => hdmi_spdif,
      i2s_mclk => i2s_mclk,
      otg_oc => otg_oc,
      processing_system7_0_GPIO => gpio_dummy,
      custom_led => async_control
    );
    
  
      asyncart_i : asyncart_demo
      port map (
          BTNC => activate,
          BTND => clear,
          LD0 => led0,
          LD1 => led1,
          LD2 => led2,
          LD3 => led3,
          LD4 => led4,
          LD5 => led5,
          LD6 => led6,
          LD7 => led7
      );
  
      activate <= async_control(1);
      clear <= async_control(0);
  
      custom_led(0) <= led0;
      custom_led(1) <= led1;
      custom_led(2) <= led2;
      custom_led(3) <= led3;
      custom_led(4) <= led4;
      custom_led(5) <= led5;
      custom_led(6) <= led6;
      custom_led(7) <= led7;
  
      processing_system7_0_GPIO <= gpio_dummy(51 downto 0);

end architecture STRUCTURE;

