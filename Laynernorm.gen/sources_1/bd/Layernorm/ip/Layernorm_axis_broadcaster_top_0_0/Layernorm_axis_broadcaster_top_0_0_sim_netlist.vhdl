-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Oct 30 19:38:14 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_axis_broadcaster_top_0_0/Layernorm_axis_broadcaster_top_0_0_sim_netlist.vhdl
-- Design      : Layernorm_axis_broadcaster_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M0_AXIS_TVALID : out STD_LOGIC;
    M1_AXIS_TVALID : out STD_LOGIC;
    M0_AXIS_TREADY : in STD_LOGIC;
    M1_AXIS_TREADY : in STD_LOGIC;
    M0_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M1_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_top : entity is "axis_broadcaster_top";
end Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_top;

architecture STRUCTURE of Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_top is
  component Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_0;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_brdcstip : label is "axis_broadcaster_0,top_axis_broadcaster_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of u_brdcstip : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of u_brdcstip : label is "top_axis_broadcaster_0,Vivado 2024.2";
begin
u_brdcstip: component Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(255 downto 128) => M1_AXIS_TDATA(127 downto 0),
      m_axis_tdata(127 downto 0) => M0_AXIS_TDATA(127 downto 0),
      m_axis_tready(1) => M1_AXIS_TREADY,
      m_axis_tready(0) => M0_AXIS_TREADY,
      m_axis_tvalid(1) => M1_AXIS_TVALID,
      m_axis_tvalid(0) => M0_AXIS_TVALID,
      s_axis_tdata(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      s_axis_tready => S_AXIS_TREADY,
      s_axis_tvalid => S_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_axis_broadcaster_top_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M0_AXIS_TVALID : out STD_LOGIC;
    M1_AXIS_TVALID : out STD_LOGIC;
    M0_AXIS_TREADY : in STD_LOGIC;
    M1_AXIS_TREADY : in STD_LOGIC;
    M0_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M1_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Layernorm_axis_broadcaster_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Layernorm_axis_broadcaster_top_0_0 : entity is "Layernorm_axis_broadcaster_top_0_0,axis_broadcaster_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Layernorm_axis_broadcaster_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Layernorm_axis_broadcaster_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Layernorm_axis_broadcaster_top_0_0 : entity is "axis_broadcaster_top,Vivado 2024.2";
end Layernorm_axis_broadcaster_top_0_0;

architecture STRUCTURE of Layernorm_axis_broadcaster_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M0_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TREADY";
  attribute X_INTERFACE_INFO of M0_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TVALID";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of M0_AXIS_TVALID : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M0_AXIS_TVALID : signal is "XIL_INTERFACENAME M0_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M1_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TREADY";
  attribute X_INTERFACE_INFO of M1_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TVALID";
  attribute X_INTERFACE_MODE of M1_AXIS_TVALID : signal is "master";
  attribute X_INTERFACE_PARAMETER of M1_AXIS_TVALID : signal is "XIL_INTERFACENAME M1_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_MODE of S_AXIS_TVALID : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TVALID : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M0_AXIS:M1_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M0_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TDATA";
  attribute X_INTERFACE_INFO of M1_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TDATA";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
inst: entity work.Layernorm_axis_broadcaster_top_0_0_axis_broadcaster_top
     port map (
      M0_AXIS_TDATA(127 downto 0) => M0_AXIS_TDATA(127 downto 0),
      M0_AXIS_TREADY => M0_AXIS_TREADY,
      M0_AXIS_TVALID => M0_AXIS_TVALID,
      M1_AXIS_TDATA(127 downto 0) => M1_AXIS_TDATA(127 downto 0),
      M1_AXIS_TREADY => M1_AXIS_TREADY,
      M1_AXIS_TVALID => M1_AXIS_TVALID,
      S_AXIS_TDATA(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      aresetn => aresetn
    );
end STRUCTURE;
