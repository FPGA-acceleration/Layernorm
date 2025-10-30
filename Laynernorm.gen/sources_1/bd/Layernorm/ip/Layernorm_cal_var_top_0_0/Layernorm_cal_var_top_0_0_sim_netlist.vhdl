-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Oct 30 19:38:14 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_cal_var_top_0_0/Layernorm_cal_var_top_0_0_sim_netlist.vhdl
-- Design      : Layernorm_cal_var_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_cal_var_top_0_0_var_fifo is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    S_AXIS_0_TREADY : out STD_LOGIC;
    S_AXIS_0_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    aclk : in STD_LOGIC;
    S_AXIS_0_TVALID : in STD_LOGIC;
    S_AXIS_1_TVALID : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    m_axis_result_tvalid : in STD_LOGIC;
    arstn : in STD_LOGIC;
    s_axis_a_tready : in STD_LOGIC;
    s_axis_b_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_cal_var_top_0_0_var_fifo : entity is "var_fifo";
end Layernorm_cal_var_top_0_0_var_fifo;

architecture STRUCTURE of Layernorm_cal_var_top_0_0_var_fifo is
  component Layernorm_cal_var_top_0_0_align_mul is
  port (
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component Layernorm_cal_var_top_0_0_align_mul;
  signal fifo_valid : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_tvalid1 : STD_LOGIC;
  signal \m_axis_tvalid[8]_i_1_n_0\ : STD_LOGIC;
  signal shift_ram_u_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of M_AXIS_TVALID_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_i_1\ : label is "soft_lutpair0";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shift_ram_u : label is "align_mul,c_shift_ram_v12_0_18,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shift_ram_u : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shift_ram_u : label is "c_shift_ram_v12_0_18,Vivado 2024.2";
begin
M_AXIS_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_result_tvalid,
      I1 => fifo_valid,
      O => M_AXIS_TVALID
    );
S_AXIS_1_TREADY_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s_axis_a_tready,
      I1 => s_axis_b_tready,
      I2 => M_AXIS_TREADY,
      I3 => fifo_valid,
      O => S_AXIS_0_TREADY
    );
\m_axis_tvalid[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => fifo_valid,
      I1 => M_AXIS_TREADY,
      I2 => S_AXIS_1_TVALID,
      I3 => S_AXIS_0_TVALID,
      O => m_axis_tvalid1
    );
\m_axis_tvalid[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => \m_axis_tvalid[8]_i_1_n_0\
    );
\m_axis_tvalid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid1,
      Q => \^m_axis_tvalid\(0)
    );
\m_axis_tvalid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(0),
      Q => \^m_axis_tvalid\(1)
    );
\m_axis_tvalid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(1),
      Q => \^m_axis_tvalid\(2)
    );
\m_axis_tvalid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(2),
      Q => \^m_axis_tvalid\(3)
    );
\m_axis_tvalid_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(3),
      Q => \^m_axis_tvalid\(4)
    );
\m_axis_tvalid_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(4),
      Q => \^m_axis_tvalid\(5)
    );
\m_axis_tvalid_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(5),
      Q => \^m_axis_tvalid\(6)
    );
\m_axis_tvalid_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(6),
      Q => \^m_axis_tvalid\(7)
    );
\m_axis_tvalid_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => \^m_axis_tvalid\(7),
      Q => fifo_valid
    );
shift_ram_u: component Layernorm_cal_var_top_0_0_align_mul
     port map (
      CE => shift_ram_u_i_1_n_0,
      CLK => aclk,
      D(127 downto 0) => S_AXIS_0_TDATA(127 downto 0),
      Q(127 downto 0) => M_AXIS_TDATA(127 downto 0)
    );
shift_ram_u_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => S_AXIS_0_TVALID,
      I1 => S_AXIS_1_TVALID,
      I2 => fifo_valid,
      I3 => M_AXIS_TREADY,
      O => shift_ram_u_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_cal_var_top_0_0_cal_var_top is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_0_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_0_TREADY : out STD_LOGIC;
    S_AXIS_0_TVALID : in STD_LOGIC;
    S_AXIS_1_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_1_TREADY : out STD_LOGIC;
    S_AXIS_1_TVALID : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 143 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_cal_var_top_0_0_cal_var_top : entity is "cal_var_top";
end Layernorm_cal_var_top_0_0_cal_var_top;

architecture STRUCTURE of Layernorm_cal_var_top_0_0_cal_var_top is
  component Layernorm_cal_var_top_0_0_bf_sub is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Layernorm_cal_var_top_0_0_bf_sub;
  signal \^s_axis_0_tready\ : STD_LOGIC;
  signal a_ready : STD_LOGIC;
  signal a_valid : STD_LOGIC;
  signal b_ready : STD_LOGIC;
  signal var_valid : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cal_var : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cal_var : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cal_var : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
  S_AXIS_0_TREADY <= \^s_axis_0_tready\;
  S_AXIS_1_TREADY <= \^s_axis_0_tready\;
cal_var: component Layernorm_cal_var_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => var_valid,
      s_axis_a_tdata(15 downto 0) => S_AXIS_0_TDATA(15 downto 0),
      s_axis_a_tready => a_ready,
      s_axis_a_tvalid => a_valid,
      s_axis_b_tdata(15 downto 0) => S_AXIS_1_TDATA(15 downto 0),
      s_axis_b_tready => b_ready,
      s_axis_b_tvalid => a_valid
    );
cal_var_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXIS_0_TVALID,
      I1 => S_AXIS_1_TVALID,
      O => a_valid
    );
fifo_uv: entity work.Layernorm_cal_var_top_0_0_var_fifo
     port map (
      M_AXIS_TDATA(127 downto 0) => M_AXIS_TDATA(143 downto 16),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_0_TDATA(127 downto 0) => S_AXIS_0_TDATA(143 downto 16),
      S_AXIS_0_TREADY => \^s_axis_0_tready\,
      S_AXIS_0_TVALID => S_AXIS_0_TVALID,
      S_AXIS_1_TVALID => S_AXIS_1_TVALID,
      aclk => aclk,
      arstn => arstn,
      m_axis_result_tvalid => var_valid,
      s_axis_a_tready => a_ready,
      s_axis_b_tready => b_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_cal_var_top_0_0 is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_0_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_0_TREADY : out STD_LOGIC;
    S_AXIS_0_TVALID : in STD_LOGIC;
    S_AXIS_1_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_1_TREADY : out STD_LOGIC;
    S_AXIS_1_TVALID : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 143 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Layernorm_cal_var_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Layernorm_cal_var_top_0_0 : entity is "Layernorm_cal_var_top_0_0,cal_var_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Layernorm_cal_var_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Layernorm_cal_var_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Layernorm_cal_var_top_0_0 : entity is "cal_var_top,Vivado 2024.2";
end Layernorm_cal_var_top_0_0;

architecture STRUCTURE of Layernorm_cal_var_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_0_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_0_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_1_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS_1 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_1_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS_1 TVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS_0:S_AXIS_1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE of M_AXIS_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_0_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_0_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_0_TDATA : signal is "XIL_INTERFACENAME S_AXIS_0, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_1_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS_1 TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_1_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_1_TDATA : signal is "XIL_INTERFACENAME S_AXIS_1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.Layernorm_cal_var_top_0_0_cal_var_top
     port map (
      M_AXIS_TDATA(143 downto 0) => M_AXIS_TDATA(143 downto 0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_0_TDATA(143 downto 0) => S_AXIS_0_TDATA(143 downto 0),
      S_AXIS_0_TREADY => S_AXIS_0_TREADY,
      S_AXIS_0_TVALID => S_AXIS_0_TVALID,
      S_AXIS_1_TDATA(15 downto 0) => S_AXIS_1_TDATA(15 downto 0),
      S_AXIS_1_TREADY => S_AXIS_1_TREADY,
      S_AXIS_1_TVALID => S_AXIS_1_TVALID,
      aclk => aclk,
      arstn => arstn
    );
end STRUCTURE;
