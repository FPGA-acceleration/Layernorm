-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Oct 30 19:49:57 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_rms_sum_nofifo_0_0/Layernorm_rms_sum_nofifo_0_0_sim_netlist.vhdl
-- Design      : Layernorm_rms_sum_nofifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_gen_tlast is
  port (
    tvalid_last2acc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tlast : out STD_LOGIC;
    m_axis_result_tready : out STD_LOGIC;
    m_axis_result_tvalid : in STD_LOGIC;
    s_axis_a_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \count_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_gen_tlast : entity is "gen_tlast";
end Layernorm_rms_sum_nofifo_0_0_gen_tlast;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_gen_tlast is
  signal acc_u1_i_3_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal count_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal s_axis_tdata0 : STD_LOGIC;
  signal \^tvalid_last2acc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of acc_u1_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of acc_u1_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of add_s3_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair4";
begin
  tvalid_last2acc <= \^tvalid_last2acc\;
acc_u1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => count(5),
      I1 => count(6),
      I2 => acc_u1_i_3_n_0,
      O => s_axis_a_tlast
    );
acc_u1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => count(4),
      O => acc_u1_i_3_n_0
    );
add_s3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_a_tready,
      I1 => \^tvalid_last2acc\,
      O => m_axis_result_tready
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      O => count_0(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      I3 => count(3),
      O => count_0(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => count(4),
      O => count_0(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => acc_u1_i_3_n_0,
      I1 => count(5),
      I2 => count(6),
      O => count_0(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => acc_u1_i_3_n_0,
      I1 => count(5),
      I2 => count(6),
      O => count_0(6)
    );
\count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(0),
      PRE => \count_reg[6]_0\,
      Q => count(0)
    );
\count_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(1),
      PRE => \count_reg[6]_0\,
      Q => count(1)
    );
\count_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(2),
      PRE => \count_reg[6]_0\,
      Q => count(2)
    );
\count_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(3),
      PRE => \count_reg[6]_0\,
      Q => count(3)
    );
\count_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(4),
      PRE => \count_reg[6]_0\,
      Q => count(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => count_0(5),
      Q => count(5)
    );
\count_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      D => count_0(6),
      PRE => \count_reg[6]_0\,
      Q => count(6)
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => m_axis_result_tvalid,
      I1 => \^tvalid_last2acc\,
      I2 => s_axis_a_tready,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \count_reg[6]_0\,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^tvalid_last2acc\
    );
\s_axis_tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^tvalid_last2acc\,
      I1 => s_axis_a_tready,
      I2 => m_axis_result_tvalid,
      O => s_axis_tdata0
    );
\s_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(0),
      Q => Q(0)
    );
\s_axis_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(10),
      Q => Q(10)
    );
\s_axis_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(11),
      Q => Q(11)
    );
\s_axis_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(12),
      Q => Q(12)
    );
\s_axis_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(13),
      Q => Q(13)
    );
\s_axis_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(14),
      Q => Q(14)
    );
\s_axis_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(15),
      Q => Q(15)
    );
\s_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(1),
      Q => Q(1)
    );
\s_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(2),
      Q => Q(2)
    );
\s_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(3),
      Q => Q(3)
    );
\s_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(4),
      Q => Q(4)
    );
\s_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(5),
      Q => Q(5)
    );
\s_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(6),
      Q => Q(6)
    );
\s_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(7),
      Q => Q(7)
    );
\s_axis_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(8),
      Q => Q(8)
    );
\s_axis_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => s_axis_tdata0,
      CLR => \count_reg[6]_0\,
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_sum_keep is
  port (
    arstn_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tready : out STD_LOGIC;
    \acc_data_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arstn : in STD_LOGIC;
    s_axis_a_tready : in STD_LOGIC;
    m_axis_result_tvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \acc_data_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_sum_keep : entity is "sum_keep";
end Layernorm_rms_sum_nofifo_0_0_sum_keep;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_sum_keep is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^arstn_0\ : STD_LOGIC;
  signal m_axis_tvalid1 : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[10]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[11]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[12]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[13]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[14]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[15]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[16]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[17]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[18]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[19]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[20]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[21]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[22]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[23]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[24]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[25]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[26]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[27]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[28]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[29]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[30]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[31]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[32]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[33]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[34]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[35]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[36]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[37]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[38]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[39]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[40]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[41]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[42]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[43]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[44]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[45]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[46]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[47]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[48]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[49]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[50]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[51]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[52]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[53]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[54]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[55]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[56]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[57]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[58]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[59]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[60]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[61]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[62]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[63]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[64]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[65]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[66]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[67]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[68]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[69]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[70]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[71]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[72]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[73]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[74]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[75]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[76]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[77]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[78]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[79]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[7]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[80]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[81]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[82]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[83]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[84]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[85]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[86]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[87]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[88]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[89]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[8]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[90]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[91]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[92]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[93]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[94]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of acc_u1_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_i_1\ : label is "soft_lutpair0";
begin
  Q(0) <= \^q\(0);
  arstn_0 <= \^arstn_0\;
\acc_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(0),
      Q => \acc_data_reg_reg[15]_0\(0)
    );
\acc_data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(10),
      Q => \acc_data_reg_reg[15]_0\(10)
    );
\acc_data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(11),
      Q => \acc_data_reg_reg[15]_0\(11)
    );
\acc_data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(12),
      Q => \acc_data_reg_reg[15]_0\(12)
    );
\acc_data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(13),
      Q => \acc_data_reg_reg[15]_0\(13)
    );
\acc_data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(14),
      Q => \acc_data_reg_reg[15]_0\(14)
    );
\acc_data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(15),
      Q => \acc_data_reg_reg[15]_0\(15)
    );
\acc_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(1),
      Q => \acc_data_reg_reg[15]_0\(1)
    );
\acc_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(2),
      Q => \acc_data_reg_reg[15]_0\(2)
    );
\acc_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(3),
      Q => \acc_data_reg_reg[15]_0\(3)
    );
\acc_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(4),
      Q => \acc_data_reg_reg[15]_0\(4)
    );
\acc_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(5),
      Q => \acc_data_reg_reg[15]_0\(5)
    );
\acc_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(6),
      Q => \acc_data_reg_reg[15]_0\(6)
    );
\acc_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(7),
      Q => \acc_data_reg_reg[15]_0\(7)
    );
\acc_data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(8),
      Q => \acc_data_reg_reg[15]_0\(8)
    );
\acc_data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \acc_data_reg_reg[15]_1\(0),
      CLR => \^arstn_0\,
      D => D(9),
      Q => \acc_data_reg_reg[15]_0\(9)
    );
acc_u1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_a_tready,
      I1 => \^q\(0),
      O => m_axis_result_tready
    );
\m_axis_tvalid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axis_a_tready,
      I2 => m_axis_result_tvalid,
      O => m_axis_tvalid1
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => \^arstn_0\
    );
\m_axis_tvalid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => m_axis_tvalid1,
      Q => \m_axis_tvalid_reg_n_0_[0]\
    );
\m_axis_tvalid_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[9]\,
      Q => \m_axis_tvalid_reg_n_0_[10]\
    );
\m_axis_tvalid_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[10]\,
      Q => \m_axis_tvalid_reg_n_0_[11]\
    );
\m_axis_tvalid_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[11]\,
      Q => \m_axis_tvalid_reg_n_0_[12]\
    );
\m_axis_tvalid_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[12]\,
      Q => \m_axis_tvalid_reg_n_0_[13]\
    );
\m_axis_tvalid_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[13]\,
      Q => \m_axis_tvalid_reg_n_0_[14]\
    );
\m_axis_tvalid_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[14]\,
      Q => \m_axis_tvalid_reg_n_0_[15]\
    );
\m_axis_tvalid_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[15]\,
      Q => \m_axis_tvalid_reg_n_0_[16]\
    );
\m_axis_tvalid_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[16]\,
      Q => \m_axis_tvalid_reg_n_0_[17]\
    );
\m_axis_tvalid_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[17]\,
      Q => \m_axis_tvalid_reg_n_0_[18]\
    );
\m_axis_tvalid_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[18]\,
      Q => \m_axis_tvalid_reg_n_0_[19]\
    );
\m_axis_tvalid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[0]\,
      Q => \m_axis_tvalid_reg_n_0_[1]\
    );
\m_axis_tvalid_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[19]\,
      Q => \m_axis_tvalid_reg_n_0_[20]\
    );
\m_axis_tvalid_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[20]\,
      Q => \m_axis_tvalid_reg_n_0_[21]\
    );
\m_axis_tvalid_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[21]\,
      Q => \m_axis_tvalid_reg_n_0_[22]\
    );
\m_axis_tvalid_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[22]\,
      Q => \m_axis_tvalid_reg_n_0_[23]\
    );
\m_axis_tvalid_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[23]\,
      Q => \m_axis_tvalid_reg_n_0_[24]\
    );
\m_axis_tvalid_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[24]\,
      Q => \m_axis_tvalid_reg_n_0_[25]\
    );
\m_axis_tvalid_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[25]\,
      Q => \m_axis_tvalid_reg_n_0_[26]\
    );
\m_axis_tvalid_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[26]\,
      Q => \m_axis_tvalid_reg_n_0_[27]\
    );
\m_axis_tvalid_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[27]\,
      Q => \m_axis_tvalid_reg_n_0_[28]\
    );
\m_axis_tvalid_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[28]\,
      Q => \m_axis_tvalid_reg_n_0_[29]\
    );
\m_axis_tvalid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[1]\,
      Q => \m_axis_tvalid_reg_n_0_[2]\
    );
\m_axis_tvalid_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[29]\,
      Q => \m_axis_tvalid_reg_n_0_[30]\
    );
\m_axis_tvalid_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[30]\,
      Q => \m_axis_tvalid_reg_n_0_[31]\
    );
\m_axis_tvalid_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[31]\,
      Q => \m_axis_tvalid_reg_n_0_[32]\
    );
\m_axis_tvalid_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[32]\,
      Q => \m_axis_tvalid_reg_n_0_[33]\
    );
\m_axis_tvalid_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[33]\,
      Q => \m_axis_tvalid_reg_n_0_[34]\
    );
\m_axis_tvalid_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[34]\,
      Q => \m_axis_tvalid_reg_n_0_[35]\
    );
\m_axis_tvalid_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[35]\,
      Q => \m_axis_tvalid_reg_n_0_[36]\
    );
\m_axis_tvalid_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[36]\,
      Q => \m_axis_tvalid_reg_n_0_[37]\
    );
\m_axis_tvalid_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[37]\,
      Q => \m_axis_tvalid_reg_n_0_[38]\
    );
\m_axis_tvalid_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[38]\,
      Q => \m_axis_tvalid_reg_n_0_[39]\
    );
\m_axis_tvalid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[2]\,
      Q => \m_axis_tvalid_reg_n_0_[3]\
    );
\m_axis_tvalid_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[39]\,
      Q => \m_axis_tvalid_reg_n_0_[40]\
    );
\m_axis_tvalid_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[40]\,
      Q => \m_axis_tvalid_reg_n_0_[41]\
    );
\m_axis_tvalid_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[41]\,
      Q => \m_axis_tvalid_reg_n_0_[42]\
    );
\m_axis_tvalid_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[42]\,
      Q => \m_axis_tvalid_reg_n_0_[43]\
    );
\m_axis_tvalid_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[43]\,
      Q => \m_axis_tvalid_reg_n_0_[44]\
    );
\m_axis_tvalid_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[44]\,
      Q => \m_axis_tvalid_reg_n_0_[45]\
    );
\m_axis_tvalid_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[45]\,
      Q => \m_axis_tvalid_reg_n_0_[46]\
    );
\m_axis_tvalid_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[46]\,
      Q => \m_axis_tvalid_reg_n_0_[47]\
    );
\m_axis_tvalid_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[47]\,
      Q => \m_axis_tvalid_reg_n_0_[48]\
    );
\m_axis_tvalid_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[48]\,
      Q => \m_axis_tvalid_reg_n_0_[49]\
    );
\m_axis_tvalid_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[3]\,
      Q => \m_axis_tvalid_reg_n_0_[4]\
    );
\m_axis_tvalid_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[49]\,
      Q => \m_axis_tvalid_reg_n_0_[50]\
    );
\m_axis_tvalid_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[50]\,
      Q => \m_axis_tvalid_reg_n_0_[51]\
    );
\m_axis_tvalid_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[51]\,
      Q => \m_axis_tvalid_reg_n_0_[52]\
    );
\m_axis_tvalid_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[52]\,
      Q => \m_axis_tvalid_reg_n_0_[53]\
    );
\m_axis_tvalid_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[53]\,
      Q => \m_axis_tvalid_reg_n_0_[54]\
    );
\m_axis_tvalid_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[54]\,
      Q => \m_axis_tvalid_reg_n_0_[55]\
    );
\m_axis_tvalid_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[55]\,
      Q => \m_axis_tvalid_reg_n_0_[56]\
    );
\m_axis_tvalid_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[56]\,
      Q => \m_axis_tvalid_reg_n_0_[57]\
    );
\m_axis_tvalid_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[57]\,
      Q => \m_axis_tvalid_reg_n_0_[58]\
    );
\m_axis_tvalid_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[58]\,
      Q => \m_axis_tvalid_reg_n_0_[59]\
    );
\m_axis_tvalid_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[4]\,
      Q => \m_axis_tvalid_reg_n_0_[5]\
    );
\m_axis_tvalid_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[59]\,
      Q => \m_axis_tvalid_reg_n_0_[60]\
    );
\m_axis_tvalid_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[60]\,
      Q => \m_axis_tvalid_reg_n_0_[61]\
    );
\m_axis_tvalid_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[61]\,
      Q => \m_axis_tvalid_reg_n_0_[62]\
    );
\m_axis_tvalid_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[62]\,
      Q => \m_axis_tvalid_reg_n_0_[63]\
    );
\m_axis_tvalid_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[63]\,
      Q => \m_axis_tvalid_reg_n_0_[64]\
    );
\m_axis_tvalid_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[64]\,
      Q => \m_axis_tvalid_reg_n_0_[65]\
    );
\m_axis_tvalid_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[65]\,
      Q => \m_axis_tvalid_reg_n_0_[66]\
    );
\m_axis_tvalid_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[66]\,
      Q => \m_axis_tvalid_reg_n_0_[67]\
    );
\m_axis_tvalid_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[67]\,
      Q => \m_axis_tvalid_reg_n_0_[68]\
    );
\m_axis_tvalid_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[68]\,
      Q => \m_axis_tvalid_reg_n_0_[69]\
    );
\m_axis_tvalid_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[5]\,
      Q => \m_axis_tvalid_reg_n_0_[6]\
    );
\m_axis_tvalid_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[69]\,
      Q => \m_axis_tvalid_reg_n_0_[70]\
    );
\m_axis_tvalid_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[70]\,
      Q => \m_axis_tvalid_reg_n_0_[71]\
    );
\m_axis_tvalid_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[71]\,
      Q => \m_axis_tvalid_reg_n_0_[72]\
    );
\m_axis_tvalid_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[72]\,
      Q => \m_axis_tvalid_reg_n_0_[73]\
    );
\m_axis_tvalid_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[73]\,
      Q => \m_axis_tvalid_reg_n_0_[74]\
    );
\m_axis_tvalid_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[74]\,
      Q => \m_axis_tvalid_reg_n_0_[75]\
    );
\m_axis_tvalid_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[75]\,
      Q => \m_axis_tvalid_reg_n_0_[76]\
    );
\m_axis_tvalid_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[76]\,
      Q => \m_axis_tvalid_reg_n_0_[77]\
    );
\m_axis_tvalid_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[77]\,
      Q => \m_axis_tvalid_reg_n_0_[78]\
    );
\m_axis_tvalid_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[78]\,
      Q => \m_axis_tvalid_reg_n_0_[79]\
    );
\m_axis_tvalid_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[6]\,
      Q => \m_axis_tvalid_reg_n_0_[7]\
    );
\m_axis_tvalid_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[79]\,
      Q => \m_axis_tvalid_reg_n_0_[80]\
    );
\m_axis_tvalid_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[80]\,
      Q => \m_axis_tvalid_reg_n_0_[81]\
    );
\m_axis_tvalid_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[81]\,
      Q => \m_axis_tvalid_reg_n_0_[82]\
    );
\m_axis_tvalid_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[82]\,
      Q => \m_axis_tvalid_reg_n_0_[83]\
    );
\m_axis_tvalid_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[83]\,
      Q => \m_axis_tvalid_reg_n_0_[84]\
    );
\m_axis_tvalid_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[84]\,
      Q => \m_axis_tvalid_reg_n_0_[85]\
    );
\m_axis_tvalid_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[85]\,
      Q => \m_axis_tvalid_reg_n_0_[86]\
    );
\m_axis_tvalid_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[86]\,
      Q => \m_axis_tvalid_reg_n_0_[87]\
    );
\m_axis_tvalid_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[87]\,
      Q => \m_axis_tvalid_reg_n_0_[88]\
    );
\m_axis_tvalid_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[88]\,
      Q => \m_axis_tvalid_reg_n_0_[89]\
    );
\m_axis_tvalid_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[7]\,
      Q => \m_axis_tvalid_reg_n_0_[8]\
    );
\m_axis_tvalid_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[89]\,
      Q => \m_axis_tvalid_reg_n_0_[90]\
    );
\m_axis_tvalid_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[90]\,
      Q => \m_axis_tvalid_reg_n_0_[91]\
    );
\m_axis_tvalid_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[91]\,
      Q => \m_axis_tvalid_reg_n_0_[92]\
    );
\m_axis_tvalid_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[92]\,
      Q => \m_axis_tvalid_reg_n_0_[93]\
    );
\m_axis_tvalid_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[93]\,
      Q => \m_axis_tvalid_reg_n_0_[94]\
    );
\m_axis_tvalid_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[94]\,
      Q => \^q\(0)
    );
\m_axis_tvalid_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arstn_0\,
      D => \m_axis_tvalid_reg_n_0_[8]\,
      Q => \m_axis_tvalid_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_add8 is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \square[0].square_i_2_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    M_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_result_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_add8 : entity is "add8";
end Layernorm_rms_sum_nofifo_0_0_add8;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_add8 is
  component Layernorm_rms_sum_nofifo_0_0_floating_point_1 is
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
  end component Layernorm_rms_sum_nofifo_0_0_floating_point_1;
  component Layernorm_rms_sum_nofifo_0_0_floating_point_1_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Layernorm_rms_sum_nofifo_0_0_floating_point_1_HD2;
  signal ready : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s1_out[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s1_out[1]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s1_out[2]_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s1_out[3]_6\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s1_ready[0]_11\ : STD_LOGIC;
  signal \s1_ready[1]_10\ : STD_LOGIC;
  signal \s1_ready[2]_15\ : STD_LOGIC;
  signal \s1_ready[3]_14\ : STD_LOGIC;
  signal \s1_valid[0]_1\ : STD_LOGIC;
  signal \s1_valid[1]_3\ : STD_LOGIC;
  signal \s1_valid[2]_5\ : STD_LOGIC;
  signal \s1_valid[3]_7\ : STD_LOGIC;
  signal \s2_out[0]_8\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s2_out[1]_12\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s2_ready[0]_17\ : STD_LOGIC;
  signal \s2_ready[1]_16\ : STD_LOGIC;
  signal \s2_valid[0]_9\ : STD_LOGIC;
  signal \s2_valid[1]_13\ : STD_LOGIC;
  signal \square[0].square_i_2_n_0\ : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \STAGE1[0].add_s1\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \STAGE1[0].add_s1\ : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \STAGE1[0].add_s1\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \STAGE1[1].add_s1\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \STAGE1[1].add_s1\ : label is "yes";
  attribute X_CORE_INFO of \STAGE1[1].add_s1\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \STAGE1[2].add_s1\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \STAGE1[2].add_s1\ : label is "yes";
  attribute X_CORE_INFO of \STAGE1[2].add_s1\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \STAGE1[3].add_s1\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \STAGE1[3].add_s1\ : label is "yes";
  attribute X_CORE_INFO of \STAGE1[3].add_s1\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \STAGE2[0].add_s2\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \STAGE2[0].add_s2\ : label is "yes";
  attribute X_CORE_INFO of \STAGE2[0].add_s2\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \STAGE2[1].add_s2\ : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \STAGE2[1].add_s2\ : label is "yes";
  attribute X_CORE_INFO of \STAGE2[1].add_s2\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of add_s3 : label is "floating_point_1,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of add_s3 : label is "yes";
  attribute X_CORE_INFO of add_s3 : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
\STAGE1[0].add_s1\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s1_out[0]_0\(15 downto 0),
      m_axis_result_tready => \s1_ready[0]_11\,
      m_axis_result_tvalid => \s1_valid[0]_1\,
      s_axis_a_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      s_axis_a_tready => ready(0),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(15 downto 0) => M_AXIS_TDATA(31 downto 16),
      s_axis_b_tready => ready(1),
      s_axis_b_tvalid => s_axis_a_tvalid
    );
\STAGE1[1].add_s1\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s1_out[1]_2\(15 downto 0),
      m_axis_result_tready => \s1_ready[1]_10\,
      m_axis_result_tvalid => \s1_valid[1]_3\,
      s_axis_a_tdata(15 downto 0) => M_AXIS_TDATA(47 downto 32),
      s_axis_a_tready => ready(2),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(15 downto 0) => M_AXIS_TDATA(63 downto 48),
      s_axis_b_tready => ready(3),
      s_axis_b_tvalid => s_axis_a_tvalid
    );
\STAGE1[2].add_s1\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s1_out[2]_4\(15 downto 0),
      m_axis_result_tready => \s1_ready[2]_15\,
      m_axis_result_tvalid => \s1_valid[2]_5\,
      s_axis_a_tdata(15 downto 0) => M_AXIS_TDATA(79 downto 64),
      s_axis_a_tready => ready(4),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(15 downto 0) => M_AXIS_TDATA(95 downto 80),
      s_axis_b_tready => ready(5),
      s_axis_b_tvalid => s_axis_a_tvalid
    );
\STAGE1[3].add_s1\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s1_out[3]_6\(15 downto 0),
      m_axis_result_tready => \s1_ready[3]_14\,
      m_axis_result_tvalid => \s1_valid[3]_7\,
      s_axis_a_tdata(15 downto 0) => M_AXIS_TDATA(111 downto 96),
      s_axis_a_tready => ready(6),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(15 downto 0) => M_AXIS_TDATA(127 downto 112),
      s_axis_b_tready => ready(7),
      s_axis_b_tvalid => s_axis_a_tvalid
    );
\STAGE2[0].add_s2\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s2_out[0]_8\(15 downto 0),
      m_axis_result_tready => \s2_ready[0]_17\,
      m_axis_result_tvalid => \s2_valid[0]_9\,
      s_axis_a_tdata(15 downto 0) => \s1_out[0]_0\(15 downto 0),
      s_axis_a_tready => \s1_ready[0]_11\,
      s_axis_a_tvalid => \s1_valid[0]_1\,
      s_axis_b_tdata(15 downto 0) => \s1_out[1]_2\(15 downto 0),
      s_axis_b_tready => \s1_ready[1]_10\,
      s_axis_b_tvalid => \s1_valid[1]_3\
    );
\STAGE2[1].add_s2\: component Layernorm_rms_sum_nofifo_0_0_floating_point_1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \s2_out[1]_12\(15 downto 0),
      m_axis_result_tready => \s2_ready[1]_16\,
      m_axis_result_tvalid => \s2_valid[1]_13\,
      s_axis_a_tdata(15 downto 0) => \s1_out[2]_4\(15 downto 0),
      s_axis_a_tready => \s1_ready[2]_15\,
      s_axis_a_tvalid => \s1_valid[2]_5\,
      s_axis_b_tdata(15 downto 0) => \s1_out[3]_6\(15 downto 0),
      s_axis_b_tready => \s1_ready[3]_14\,
      s_axis_b_tvalid => \s1_valid[3]_7\
    );
add_s3: component Layernorm_rms_sum_nofifo_0_0_floating_point_1_HD2
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => D(15 downto 0),
      m_axis_result_tready => m_axis_result_tready,
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(15 downto 0) => \s2_out[0]_8\(15 downto 0),
      s_axis_a_tready => \s2_ready[0]_17\,
      s_axis_a_tvalid => \s2_valid[0]_9\,
      s_axis_b_tdata(15 downto 0) => \s2_out[1]_12\(15 downto 0),
      s_axis_b_tready => \s2_ready[1]_16\,
      s_axis_b_tvalid => \s2_valid[1]_13\
    );
\square[0].square_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => ready(2),
      I1 => ready(3),
      I2 => ready(0),
      I3 => ready(1),
      I4 => \square[0].square_i_2_n_0\,
      O => \square[0].square_i_2_0\
    );
\square[0].square_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ready(5),
      I1 => ready(4),
      I2 => ready(7),
      I3 => ready(6),
      O => \square[0].square_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_parallel_squarev2 is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    s_axis_a_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_TREADY_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_parallel_squarev2 : entity is "parallel_squarev2";
end Layernorm_rms_sum_nofifo_0_0_parallel_squarev2;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_parallel_squarev2 is
  component Layernorm_rms_sum_nofifo_0_0_bf_mul is
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
  end component Layernorm_rms_sum_nofifo_0_0_bf_mul;
  component Layernorm_rms_sum_nofifo_0_0_bf_mul_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Layernorm_rms_sum_nofifo_0_0_bf_mul_HD1;
  signal \STAGE1[0].add_s1_i_2_n_0\ : STD_LOGIC;
  signal S_AXIS_TREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_INST_0_i_2_n_0 : STD_LOGIC;
  signal \a_ready[0]_2\ : STD_LOGIC;
  signal \a_ready[1]_5\ : STD_LOGIC;
  signal \a_ready[2]_8\ : STD_LOGIC;
  signal \a_ready[3]_11\ : STD_LOGIC;
  signal \a_ready[4]_14\ : STD_LOGIC;
  signal \a_ready[5]_17\ : STD_LOGIC;
  signal \a_ready[6]_20\ : STD_LOGIC;
  signal \a_ready[7]_23\ : STD_LOGIC;
  signal \b_ready[0]_1\ : STD_LOGIC;
  signal \b_ready[1]_4\ : STD_LOGIC;
  signal \b_ready[2]_7\ : STD_LOGIC;
  signal \b_ready[3]_10\ : STD_LOGIC;
  signal \b_ready[4]_13\ : STD_LOGIC;
  signal \b_ready[5]_16\ : STD_LOGIC;
  signal \b_ready[6]_19\ : STD_LOGIC;
  signal \b_ready[7]_22\ : STD_LOGIC;
  signal \square_valid[0]_0\ : STD_LOGIC;
  signal \square_valid[1]_3\ : STD_LOGIC;
  signal \square_valid[2]_6\ : STD_LOGIC;
  signal \square_valid[3]_9\ : STD_LOGIC;
  signal \square_valid[4]_12\ : STD_LOGIC;
  signal \square_valid[5]_15\ : STD_LOGIC;
  signal \square_valid[6]_18\ : STD_LOGIC;
  signal \square_valid[7]_21\ : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \square[0].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \square[0].square\ : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \square[0].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[1].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[1].square\ : label is "yes";
  attribute X_CORE_INFO of \square[1].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[2].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[2].square\ : label is "yes";
  attribute X_CORE_INFO of \square[2].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[3].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[3].square\ : label is "yes";
  attribute X_CORE_INFO of \square[3].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[4].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[4].square\ : label is "yes";
  attribute X_CORE_INFO of \square[4].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[5].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[5].square\ : label is "yes";
  attribute X_CORE_INFO of \square[5].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[6].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[6].square\ : label is "yes";
  attribute X_CORE_INFO of \square[6].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \square[7].square\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \square[7].square\ : label is "yes";
  attribute X_CORE_INFO of \square[7].square\ : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
\STAGE1[0].add_s1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \square_valid[6]_18\,
      I1 => \square_valid[5]_15\,
      I2 => \square_valid[0]_0\,
      I3 => \square_valid[7]_21\,
      I4 => \STAGE1[0].add_s1_i_2_n_0\,
      O => s_axis_a_tvalid
    );
\STAGE1[0].add_s1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \square_valid[3]_9\,
      I1 => \square_valid[4]_12\,
      I2 => \square_valid[1]_3\,
      I3 => \square_valid[2]_6\,
      O => \STAGE1[0].add_s1_i_2_n_0\
    );
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I1 => \b_ready[0]_1\,
      I2 => \a_ready[7]_23\,
      I3 => \b_ready[2]_7\,
      I4 => \b_ready[1]_4\,
      I5 => S_AXIS_TREADY_INST_0_i_2_n_0,
      O => S_AXIS_TREADY
    );
S_AXIS_TREADY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \a_ready[3]_11\,
      I1 => \a_ready[4]_14\,
      I2 => \a_ready[1]_5\,
      I3 => \a_ready[2]_8\,
      I4 => \a_ready[6]_20\,
      I5 => \a_ready[5]_17\,
      O => S_AXIS_TREADY_INST_0_i_1_n_0
    );
S_AXIS_TREADY_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \b_ready[5]_16\,
      I1 => \b_ready[6]_19\,
      I2 => \b_ready[3]_10\,
      I3 => \b_ready[4]_13\,
      I4 => \a_ready[0]_2\,
      I5 => \b_ready[7]_22\,
      O => S_AXIS_TREADY_INST_0_i_2_n_0
    );
\square[0].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[0]_0\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(15 downto 0),
      s_axis_a_tready => \a_ready[0]_2\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(15 downto 0),
      s_axis_b_tready => \b_ready[0]_1\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[1].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(31 downto 16),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[1]_3\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(31 downto 16),
      s_axis_a_tready => \a_ready[1]_5\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(31 downto 16),
      s_axis_b_tready => \b_ready[1]_4\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[2].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(47 downto 32),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[2]_6\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(47 downto 32),
      s_axis_a_tready => \a_ready[2]_8\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(47 downto 32),
      s_axis_b_tready => \b_ready[2]_7\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[3].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(63 downto 48),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[3]_9\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(63 downto 48),
      s_axis_a_tready => \a_ready[3]_11\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(63 downto 48),
      s_axis_b_tready => \b_ready[3]_10\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[4].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(79 downto 64),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[4]_12\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(79 downto 64),
      s_axis_a_tready => \a_ready[4]_14\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(79 downto 64),
      s_axis_b_tready => \b_ready[4]_13\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[5].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(95 downto 80),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[5]_15\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(95 downto 80),
      s_axis_a_tready => \a_ready[5]_17\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(95 downto 80),
      s_axis_b_tready => \b_ready[5]_16\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[6].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(111 downto 96),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[6]_18\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(111 downto 96),
      s_axis_a_tready => \a_ready[6]_20\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(111 downto 96),
      s_axis_b_tready => \b_ready[6]_19\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
\square[7].square\: component Layernorm_rms_sum_nofifo_0_0_bf_mul_HD1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(127 downto 112),
      m_axis_result_tready => S_AXIS_TREADY_0,
      m_axis_result_tvalid => \square_valid[7]_21\,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(127 downto 112),
      s_axis_a_tready => \a_ready[7]_23\,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => S_AXIS_TDATA(127 downto 112),
      s_axis_b_tready => \b_ready[7]_22\,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_squaresum_acc is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tvalid_reg[95]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \square[0].square_i_2\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    M_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_result_tready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tready : in STD_LOGIC;
    \count_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_squaresum_acc : entity is "squaresum_acc";
end Layernorm_rms_sum_nofifo_0_0_squaresum_acc;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_squaresum_acc is
  component Layernorm_rms_sum_nofifo_0_0_floating_point_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  end component Layernorm_rms_sum_nofifo_0_0_floating_point_2;
  signal acc_last : STD_LOGIC;
  signal \^m_axis_result_tvalid\ : STD_LOGIC;
  signal tdata_add2last : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tdata_last2acc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tlast_last2acc : STD_LOGIC;
  signal tready_add2last : STD_LOGIC;
  signal tready_last2acc : STD_LOGIC;
  signal tvalid_add2last : STD_LOGIC;
  signal tvalid_last2acc : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc_data_reg[15]_i_1\ : label is "soft_lutpair6";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of acc_u1 : label is "floating_point_2,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of acc_u1 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of acc_u1 : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute SOFT_HLUTNM of \m_axis_tvalid[95]_i_1\ : label is "soft_lutpair6";
begin
  m_axis_result_tvalid <= \^m_axis_result_tvalid\;
\acc_data_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \^m_axis_result_tvalid\,
      I1 => s_axis_a_tready,
      I2 => Q(0),
      I3 => acc_last,
      O => \m_axis_tvalid_reg[95]\(0)
    );
acc_u1: component Layernorm_rms_sum_nofifo_0_0_floating_point_2
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => m_axis_result_tdata(15 downto 0),
      m_axis_result_tlast => acc_last,
      m_axis_result_tready => m_axis_result_tready,
      m_axis_result_tvalid => \^m_axis_result_tvalid\,
      s_axis_a_tdata(15 downto 0) => tdata_last2acc(15 downto 0),
      s_axis_a_tlast => tlast_last2acc,
      s_axis_a_tready => tready_last2acc,
      s_axis_a_tvalid => tvalid_last2acc
    );
add8_u1: entity work.Layernorm_rms_sum_nofifo_0_0_add8
     port map (
      D(15 downto 0) => tdata_add2last(15 downto 0),
      M_AXIS_TDATA(127 downto 0) => M_AXIS_TDATA(127 downto 0),
      aclk => aclk,
      arstn => arstn,
      m_axis_result_tready => tready_add2last,
      m_axis_result_tvalid => tvalid_add2last,
      s_axis_a_tvalid => s_axis_a_tvalid,
      \square[0].square_i_2_0\ => \square[0].square_i_2\
    );
gen_last_u1: entity work.Layernorm_rms_sum_nofifo_0_0_gen_tlast
     port map (
      D(15 downto 0) => tdata_add2last(15 downto 0),
      Q(15 downto 0) => tdata_last2acc(15 downto 0),
      aclk => aclk,
      \count_reg[6]_0\ => \count_reg[6]\,
      m_axis_result_tready => tready_add2last,
      m_axis_result_tvalid => tvalid_add2last,
      s_axis_a_tlast => tlast_last2acc,
      s_axis_a_tready => tready_last2acc,
      tvalid_last2acc => tvalid_last2acc
    );
\m_axis_tvalid[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^m_axis_result_tvalid\,
      I1 => Q(0),
      I2 => s_axis_a_tready,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0_rms_sum_nofifo is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_sum_nofifo_0_0_rms_sum_nofifo : entity is "rms_sum_nofifo";
end Layernorm_rms_sum_nofifo_0_0_rms_sum_nofifo;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0_rms_sum_nofifo is
  component Layernorm_rms_sum_nofifo_0_0_bf_mul is
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
  end component Layernorm_rms_sum_nofifo_0_0_bf_mul;
  signal acc_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal acc_data_reg0 : STD_LOGIC;
  signal acc_ready : STD_LOGIC;
  signal acc_valid : STD_LOGIC;
  signal keep_n_0 : STD_LOGIC;
  signal mean_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mean_ready : STD_LOGIC;
  signal mean_valid : STD_LOGIC;
  signal sum_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sum_ready : STD_LOGIC;
  signal sum_valid : STD_LOGIC;
  signal u_accumulatorv2_n_17 : STD_LOGIC;
  signal NLW_variance_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of variance : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of variance : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of variance : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
keep: entity work.Layernorm_rms_sum_nofifo_0_0_sum_keep
     port map (
      D(15 downto 0) => acc_data(15 downto 0),
      E(0) => u_accumulatorv2_n_17,
      Q(0) => sum_valid,
      \acc_data_reg_reg[15]_0\(15 downto 0) => sum_data(15 downto 0),
      \acc_data_reg_reg[15]_1\(0) => acc_data_reg0,
      aclk => aclk,
      arstn => arstn,
      arstn_0 => keep_n_0,
      m_axis_result_tready => acc_ready,
      m_axis_result_tvalid => acc_valid,
      s_axis_a_tready => sum_ready
    );
u_accumulatorv2: entity work.Layernorm_rms_sum_nofifo_0_0_squaresum_acc
     port map (
      E(0) => u_accumulatorv2_n_17,
      M_AXIS_TDATA(127 downto 0) => mean_data(127 downto 0),
      Q(0) => sum_valid,
      aclk => aclk,
      arstn => arstn,
      \count_reg[6]\ => keep_n_0,
      m_axis_result_tdata(15 downto 0) => acc_data(15 downto 0),
      m_axis_result_tready => acc_ready,
      m_axis_result_tvalid => acc_valid,
      \m_axis_tvalid_reg[95]\(0) => acc_data_reg0,
      s_axis_a_tready => sum_ready,
      s_axis_a_tvalid => mean_valid,
      \square[0].square_i_2\ => mean_ready
    );
u_ps: entity work.Layernorm_rms_sum_nofifo_0_0_parallel_squarev2
     port map (
      M_AXIS_TDATA(127 downto 0) => mean_data(127 downto 0),
      S_AXIS_TDATA(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TREADY_0 => mean_ready,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn,
      s_axis_a_tvalid => mean_valid
    );
variance: component Layernorm_rms_sum_nofifo_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => M_AXIS_TVALID,
      s_axis_a_tdata(15 downto 0) => sum_data(15 downto 0),
      s_axis_a_tready => sum_ready,
      s_axis_a_tvalid => sum_valid,
      s_axis_b_tdata(15 downto 0) => B"0011101010101011",
      s_axis_b_tready => NLW_variance_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tvalid => '1'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_sum_nofifo_0_0 is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Layernorm_rms_sum_nofifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Layernorm_rms_sum_nofifo_0_0 : entity is "Layernorm_rms_sum_nofifo_0_0,rms_sum_nofifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Layernorm_rms_sum_nofifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Layernorm_rms_sum_nofifo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Layernorm_rms_sum_nofifo_0_0 : entity is "rms_sum_nofifo,Vivado 2024.2";
end Layernorm_rms_sum_nofifo_0_0;

architecture STRUCTURE of Layernorm_rms_sum_nofifo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE of M_AXIS_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TDATA : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.Layernorm_rms_sum_nofifo_0_0_rms_sum_nofifo
     port map (
      M_AXIS_TDATA(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn
    );
end STRUCTURE;
