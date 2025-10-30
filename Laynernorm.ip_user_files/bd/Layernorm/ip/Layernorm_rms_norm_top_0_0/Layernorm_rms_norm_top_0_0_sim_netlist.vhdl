-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Oct 30 19:38:43 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_rms_norm_top_0_0/Layernorm_rms_norm_top_0_0_sim_netlist.vhdl
-- Design      : Layernorm_rms_norm_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0_bf_fifo is
  port (
    arstn_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    tvalid_align : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tready : out STD_LOGIC;
    arstn : in STD_LOGIC;
    m_axis_result_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_result_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_b_tready : in STD_LOGIC;
    \pipe_data_reg[0][15]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axis_a_tready : in STD_LOGIC;
    u_epsilon : in STD_LOGIC;
    u_epsilon_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_norm_top_0_0_bf_fifo : entity is "bf_fifo";
end Layernorm_rms_norm_top_0_0_bf_fifo;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0_bf_fifo is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^arstn_0\ : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pipe_data : STD_LOGIC;
  signal \pipe_data[10][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[11][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[12][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[13][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[14][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[15][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[16][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[17][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[18][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[19][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[20][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[21][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[22][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[23][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[24][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[25][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[26][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[6][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[7][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[8][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data[9][15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_data_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[10]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[11]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[12]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[13]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[14]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[16]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[17]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[18]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[19]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[20]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[21]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[22]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[23]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[24]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[25]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[7]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[8]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_data_reg[9]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pipe_valid[0]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[10]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[11]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[12]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[13]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[14]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[15]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[16]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[17]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[18]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[19]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[1]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[20]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[21]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[22]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[23]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[24]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[25]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[26]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[2]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[3]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[4]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[5]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[6]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[7]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[8]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid[9]_i_1_n_0\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[0]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[10]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[11]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[12]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[13]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[14]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[15]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[16]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[17]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[18]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[19]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[1]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[20]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[21]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[22]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[23]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[24]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[25]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[2]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[3]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[4]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[5]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[6]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[7]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[8]\ : STD_LOGIC;
  signal \pipe_valid_reg_n_0_[9]\ : STD_LOGIC;
  signal \^tvalid_align\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pipe_valid[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pipe_valid[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pipe_valid[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pipe_valid[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pipe_valid[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pipe_valid[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pipe_valid[20]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pipe_valid[21]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pipe_valid[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pipe_valid[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pipe_valid[25]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pipe_valid[9]_i_1\ : label is "soft_lutpair1";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  arstn_0 <= \^arstn_0\;
  tvalid_align <= \^tvalid_align\;
\data2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(2),
      O => DI(0)
    );
\m_axis_tvalid[44]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => \^arstn_0\
    );
\pipe_data[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[0]\,
      I1 => p_24_in,
      I2 => \pipe_valid_reg_n_0_[1]\,
      I3 => m_axis_result_tvalid,
      O => pipe_data
    );
\pipe_data[10][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[10]\,
      I1 => p_14_in,
      I2 => \pipe_valid_reg_n_0_[11]\,
      I3 => \pipe_valid_reg_n_0_[9]\,
      O => \pipe_data[10][15]_i_1_n_0\
    );
\pipe_data[11][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[11]\,
      I1 => p_14_in,
      I2 => \pipe_valid_reg_n_0_[10]\,
      O => \pipe_data[11][15]_i_1_n_0\
    );
\pipe_data[12][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_14_in,
      I1 => \pipe_valid_reg_n_0_[11]\,
      O => \pipe_data[12][15]_i_1_n_0\
    );
\pipe_data[13][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[13]\,
      I1 => \pipe_valid_reg_n_0_[15]\,
      I2 => p_9_in,
      I3 => \pipe_valid_reg_n_0_[16]\,
      I4 => \pipe_valid_reg_n_0_[14]\,
      I5 => \pipe_valid_reg_n_0_[12]\,
      O => \pipe_data[13][15]_i_1_n_0\
    );
\pipe_data[14][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[14]\,
      I1 => \pipe_valid_reg_n_0_[16]\,
      I2 => p_9_in,
      I3 => \pipe_valid_reg_n_0_[15]\,
      I4 => \pipe_valid_reg_n_0_[13]\,
      O => \pipe_data[14][15]_i_1_n_0\
    );
\pipe_data[15][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[15]\,
      I1 => p_9_in,
      I2 => \pipe_valid_reg_n_0_[16]\,
      I3 => \pipe_valid_reg_n_0_[14]\,
      O => \pipe_data[15][15]_i_1_n_0\
    );
\pipe_data[16][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[16]\,
      I1 => p_9_in,
      I2 => \pipe_valid_reg_n_0_[15]\,
      O => \pipe_data[16][15]_i_1_n_0\
    );
\pipe_data[17][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_9_in,
      I1 => \pipe_valid_reg_n_0_[16]\,
      O => \pipe_data[17][15]_i_1_n_0\
    );
\pipe_data[18][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[18]\,
      I1 => \pipe_valid_reg_n_0_[20]\,
      I2 => p_4_in,
      I3 => \pipe_valid_reg_n_0_[21]\,
      I4 => \pipe_valid_reg_n_0_[19]\,
      I5 => \pipe_valid_reg_n_0_[17]\,
      O => \pipe_data[18][15]_i_1_n_0\
    );
\pipe_data[19][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[19]\,
      I1 => \pipe_valid_reg_n_0_[21]\,
      I2 => p_4_in,
      I3 => \pipe_valid_reg_n_0_[20]\,
      I4 => \pipe_valid_reg_n_0_[18]\,
      O => \pipe_data[19][15]_i_1_n_0\
    );
\pipe_data[1][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[1]\,
      I1 => p_24_in,
      I2 => \pipe_valid_reg_n_0_[0]\,
      O => \pipe_data[1][15]_i_1_n_0\
    );
\pipe_data[20][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[20]\,
      I1 => p_4_in,
      I2 => \pipe_valid_reg_n_0_[21]\,
      I3 => \pipe_valid_reg_n_0_[19]\,
      O => \pipe_data[20][15]_i_1_n_0\
    );
\pipe_data[21][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[21]\,
      I1 => p_4_in,
      I2 => \pipe_valid_reg_n_0_[20]\,
      O => \pipe_data[21][15]_i_1_n_0\
    );
\pipe_data[22][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_4_in,
      I1 => \pipe_valid_reg_n_0_[21]\,
      O => \pipe_data[22][15]_i_1_n_0\
    );
\pipe_data[23][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[23]\,
      I1 => \pipe_valid_reg_n_0_[25]\,
      I2 => s_axis_b_tready,
      I3 => \^tvalid_align\,
      I4 => \pipe_valid_reg_n_0_[24]\,
      I5 => \pipe_valid_reg_n_0_[22]\,
      O => \pipe_data[23][15]_i_1_n_0\
    );
\pipe_data[24][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[24]\,
      I1 => \^tvalid_align\,
      I2 => s_axis_b_tready,
      I3 => \pipe_valid_reg_n_0_[25]\,
      I4 => \pipe_valid_reg_n_0_[23]\,
      O => \pipe_data[24][15]_i_1_n_0\
    );
\pipe_data[25][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[25]\,
      I1 => s_axis_b_tready,
      I2 => \^tvalid_align\,
      I3 => \pipe_valid_reg_n_0_[24]\,
      O => \pipe_data[25][15]_i_1_n_0\
    );
\pipe_data[26][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^tvalid_align\,
      I1 => s_axis_b_tready,
      I2 => \pipe_valid_reg_n_0_[25]\,
      O => \pipe_data[26][15]_i_1_n_0\
    );
\pipe_data[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_24_in,
      I1 => \pipe_valid_reg_n_0_[1]\,
      O => \pipe_data[2][15]_i_1_n_0\
    );
\pipe_data[3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[3]\,
      I1 => \pipe_valid_reg_n_0_[5]\,
      I2 => p_19_in,
      I3 => \pipe_valid_reg_n_0_[6]\,
      I4 => \pipe_valid_reg_n_0_[4]\,
      I5 => \pipe_valid_reg_n_0_[2]\,
      O => \pipe_data[3][15]_i_1_n_0\
    );
\pipe_data[4][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[4]\,
      I1 => \pipe_valid_reg_n_0_[6]\,
      I2 => p_19_in,
      I3 => \pipe_valid_reg_n_0_[5]\,
      I4 => \pipe_valid_reg_n_0_[3]\,
      O => \pipe_data[4][15]_i_1_n_0\
    );
\pipe_data[5][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[5]\,
      I1 => p_19_in,
      I2 => \pipe_valid_reg_n_0_[6]\,
      I3 => \pipe_valid_reg_n_0_[4]\,
      O => \pipe_data[5][15]_i_1_n_0\
    );
\pipe_data[6][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[6]\,
      I1 => p_19_in,
      I2 => \pipe_valid_reg_n_0_[5]\,
      O => \pipe_data[6][15]_i_1_n_0\
    );
\pipe_data[7][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_19_in,
      I1 => \pipe_valid_reg_n_0_[6]\,
      O => \pipe_data[7][15]_i_1_n_0\
    );
\pipe_data[8][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[8]\,
      I1 => \pipe_valid_reg_n_0_[10]\,
      I2 => p_14_in,
      I3 => \pipe_valid_reg_n_0_[11]\,
      I4 => \pipe_valid_reg_n_0_[9]\,
      I5 => \pipe_valid_reg_n_0_[7]\,
      O => \pipe_data[8][15]_i_1_n_0\
    );
\pipe_data[9][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[9]\,
      I1 => \pipe_valid_reg_n_0_[11]\,
      I2 => p_14_in,
      I3 => \pipe_valid_reg_n_0_[10]\,
      I4 => \pipe_valid_reg_n_0_[8]\,
      O => \pipe_data[9][15]_i_1_n_0\
    );
\pipe_data_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \^d\(0),
      Q => \pipe_data_reg[0]\(0)
    );
\pipe_data_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(8),
      Q => \pipe_data_reg[0]\(10)
    );
\pipe_data_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(9),
      Q => \pipe_data_reg[0]\(11)
    );
\pipe_data_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(10),
      Q => \pipe_data_reg[0]\(12)
    );
\pipe_data_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(11),
      Q => \pipe_data_reg[0]\(13)
    );
\pipe_data_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(12),
      Q => \pipe_data_reg[0]\(14)
    );
\pipe_data_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(13),
      Q => \pipe_data_reg[0]\(15)
    );
\pipe_data_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \^d\(1),
      Q => \pipe_data_reg[0]\(1)
    );
\pipe_data_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(0),
      Q => \pipe_data_reg[0]\(2)
    );
\pipe_data_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(1),
      Q => \pipe_data_reg[0]\(3)
    );
\pipe_data_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(2),
      Q => \pipe_data_reg[0]\(4)
    );
\pipe_data_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(3),
      Q => \pipe_data_reg[0]\(5)
    );
\pipe_data_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(4),
      Q => \pipe_data_reg[0]\(6)
    );
\pipe_data_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(5),
      Q => \pipe_data_reg[0]\(7)
    );
\pipe_data_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(6),
      Q => \pipe_data_reg[0]\(8)
    );
\pipe_data_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => pipe_data,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0][15]_0\(7),
      Q => \pipe_data_reg[0]\(9)
    );
\pipe_data_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(0),
      Q => \pipe_data_reg[10]\(0)
    );
\pipe_data_reg[10][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(10),
      Q => \pipe_data_reg[10]\(10)
    );
\pipe_data_reg[10][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(11),
      Q => \pipe_data_reg[10]\(11)
    );
\pipe_data_reg[10][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(12),
      Q => \pipe_data_reg[10]\(12)
    );
\pipe_data_reg[10][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(13),
      Q => \pipe_data_reg[10]\(13)
    );
\pipe_data_reg[10][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(14),
      Q => \pipe_data_reg[10]\(14)
    );
\pipe_data_reg[10][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(15),
      Q => \pipe_data_reg[10]\(15)
    );
\pipe_data_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(1),
      Q => \pipe_data_reg[10]\(1)
    );
\pipe_data_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(2),
      Q => \pipe_data_reg[10]\(2)
    );
\pipe_data_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(3),
      Q => \pipe_data_reg[10]\(3)
    );
\pipe_data_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(4),
      Q => \pipe_data_reg[10]\(4)
    );
\pipe_data_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(5),
      Q => \pipe_data_reg[10]\(5)
    );
\pipe_data_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(6),
      Q => \pipe_data_reg[10]\(6)
    );
\pipe_data_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(7),
      Q => \pipe_data_reg[10]\(7)
    );
\pipe_data_reg[10][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(8),
      Q => \pipe_data_reg[10]\(8)
    );
\pipe_data_reg[10][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[10][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[9]\(9),
      Q => \pipe_data_reg[10]\(9)
    );
\pipe_data_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(0),
      Q => \pipe_data_reg[11]\(0)
    );
\pipe_data_reg[11][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(10),
      Q => \pipe_data_reg[11]\(10)
    );
\pipe_data_reg[11][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(11),
      Q => \pipe_data_reg[11]\(11)
    );
\pipe_data_reg[11][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(12),
      Q => \pipe_data_reg[11]\(12)
    );
\pipe_data_reg[11][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(13),
      Q => \pipe_data_reg[11]\(13)
    );
\pipe_data_reg[11][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(14),
      Q => \pipe_data_reg[11]\(14)
    );
\pipe_data_reg[11][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(15),
      Q => \pipe_data_reg[11]\(15)
    );
\pipe_data_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(1),
      Q => \pipe_data_reg[11]\(1)
    );
\pipe_data_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(2),
      Q => \pipe_data_reg[11]\(2)
    );
\pipe_data_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(3),
      Q => \pipe_data_reg[11]\(3)
    );
\pipe_data_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(4),
      Q => \pipe_data_reg[11]\(4)
    );
\pipe_data_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(5),
      Q => \pipe_data_reg[11]\(5)
    );
\pipe_data_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(6),
      Q => \pipe_data_reg[11]\(6)
    );
\pipe_data_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(7),
      Q => \pipe_data_reg[11]\(7)
    );
\pipe_data_reg[11][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(8),
      Q => \pipe_data_reg[11]\(8)
    );
\pipe_data_reg[11][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[11][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[10]\(9),
      Q => \pipe_data_reg[11]\(9)
    );
\pipe_data_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(0),
      Q => \pipe_data_reg[12]\(0)
    );
\pipe_data_reg[12][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(10),
      Q => \pipe_data_reg[12]\(10)
    );
\pipe_data_reg[12][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(11),
      Q => \pipe_data_reg[12]\(11)
    );
\pipe_data_reg[12][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(12),
      Q => \pipe_data_reg[12]\(12)
    );
\pipe_data_reg[12][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(13),
      Q => \pipe_data_reg[12]\(13)
    );
\pipe_data_reg[12][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(14),
      Q => \pipe_data_reg[12]\(14)
    );
\pipe_data_reg[12][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(15),
      Q => \pipe_data_reg[12]\(15)
    );
\pipe_data_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(1),
      Q => \pipe_data_reg[12]\(1)
    );
\pipe_data_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(2),
      Q => \pipe_data_reg[12]\(2)
    );
\pipe_data_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(3),
      Q => \pipe_data_reg[12]\(3)
    );
\pipe_data_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(4),
      Q => \pipe_data_reg[12]\(4)
    );
\pipe_data_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(5),
      Q => \pipe_data_reg[12]\(5)
    );
\pipe_data_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(6),
      Q => \pipe_data_reg[12]\(6)
    );
\pipe_data_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(7),
      Q => \pipe_data_reg[12]\(7)
    );
\pipe_data_reg[12][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(8),
      Q => \pipe_data_reg[12]\(8)
    );
\pipe_data_reg[12][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[12][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[11]\(9),
      Q => \pipe_data_reg[12]\(9)
    );
\pipe_data_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(0),
      Q => \pipe_data_reg[13]\(0)
    );
\pipe_data_reg[13][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(10),
      Q => \pipe_data_reg[13]\(10)
    );
\pipe_data_reg[13][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(11),
      Q => \pipe_data_reg[13]\(11)
    );
\pipe_data_reg[13][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(12),
      Q => \pipe_data_reg[13]\(12)
    );
\pipe_data_reg[13][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(13),
      Q => \pipe_data_reg[13]\(13)
    );
\pipe_data_reg[13][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(14),
      Q => \pipe_data_reg[13]\(14)
    );
\pipe_data_reg[13][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(15),
      Q => \pipe_data_reg[13]\(15)
    );
\pipe_data_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(1),
      Q => \pipe_data_reg[13]\(1)
    );
\pipe_data_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(2),
      Q => \pipe_data_reg[13]\(2)
    );
\pipe_data_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(3),
      Q => \pipe_data_reg[13]\(3)
    );
\pipe_data_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(4),
      Q => \pipe_data_reg[13]\(4)
    );
\pipe_data_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(5),
      Q => \pipe_data_reg[13]\(5)
    );
\pipe_data_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(6),
      Q => \pipe_data_reg[13]\(6)
    );
\pipe_data_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(7),
      Q => \pipe_data_reg[13]\(7)
    );
\pipe_data_reg[13][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(8),
      Q => \pipe_data_reg[13]\(8)
    );
\pipe_data_reg[13][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[13][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[12]\(9),
      Q => \pipe_data_reg[13]\(9)
    );
\pipe_data_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(0),
      Q => \pipe_data_reg[14]\(0)
    );
\pipe_data_reg[14][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(10),
      Q => \pipe_data_reg[14]\(10)
    );
\pipe_data_reg[14][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(11),
      Q => \pipe_data_reg[14]\(11)
    );
\pipe_data_reg[14][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(12),
      Q => \pipe_data_reg[14]\(12)
    );
\pipe_data_reg[14][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(13),
      Q => \pipe_data_reg[14]\(13)
    );
\pipe_data_reg[14][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(14),
      Q => \pipe_data_reg[14]\(14)
    );
\pipe_data_reg[14][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(15),
      Q => \pipe_data_reg[14]\(15)
    );
\pipe_data_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(1),
      Q => \pipe_data_reg[14]\(1)
    );
\pipe_data_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(2),
      Q => \pipe_data_reg[14]\(2)
    );
\pipe_data_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(3),
      Q => \pipe_data_reg[14]\(3)
    );
\pipe_data_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(4),
      Q => \pipe_data_reg[14]\(4)
    );
\pipe_data_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(5),
      Q => \pipe_data_reg[14]\(5)
    );
\pipe_data_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(6),
      Q => \pipe_data_reg[14]\(6)
    );
\pipe_data_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(7),
      Q => \pipe_data_reg[14]\(7)
    );
\pipe_data_reg[14][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(8),
      Q => \pipe_data_reg[14]\(8)
    );
\pipe_data_reg[14][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[14][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[13]\(9),
      Q => \pipe_data_reg[14]\(9)
    );
\pipe_data_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(0),
      Q => \pipe_data_reg[15]\(0)
    );
\pipe_data_reg[15][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(10),
      Q => \pipe_data_reg[15]\(10)
    );
\pipe_data_reg[15][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(11),
      Q => \pipe_data_reg[15]\(11)
    );
\pipe_data_reg[15][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(12),
      Q => \pipe_data_reg[15]\(12)
    );
\pipe_data_reg[15][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(13),
      Q => \pipe_data_reg[15]\(13)
    );
\pipe_data_reg[15][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(14),
      Q => \pipe_data_reg[15]\(14)
    );
\pipe_data_reg[15][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(15),
      Q => \pipe_data_reg[15]\(15)
    );
\pipe_data_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(1),
      Q => \pipe_data_reg[15]\(1)
    );
\pipe_data_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(2),
      Q => \pipe_data_reg[15]\(2)
    );
\pipe_data_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(3),
      Q => \pipe_data_reg[15]\(3)
    );
\pipe_data_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(4),
      Q => \pipe_data_reg[15]\(4)
    );
\pipe_data_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(5),
      Q => \pipe_data_reg[15]\(5)
    );
\pipe_data_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(6),
      Q => \pipe_data_reg[15]\(6)
    );
\pipe_data_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(7),
      Q => \pipe_data_reg[15]\(7)
    );
\pipe_data_reg[15][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(8),
      Q => \pipe_data_reg[15]\(8)
    );
\pipe_data_reg[15][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[15][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[14]\(9),
      Q => \pipe_data_reg[15]\(9)
    );
\pipe_data_reg[16][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(0),
      Q => \pipe_data_reg[16]\(0)
    );
\pipe_data_reg[16][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(10),
      Q => \pipe_data_reg[16]\(10)
    );
\pipe_data_reg[16][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(11),
      Q => \pipe_data_reg[16]\(11)
    );
\pipe_data_reg[16][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(12),
      Q => \pipe_data_reg[16]\(12)
    );
\pipe_data_reg[16][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(13),
      Q => \pipe_data_reg[16]\(13)
    );
\pipe_data_reg[16][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(14),
      Q => \pipe_data_reg[16]\(14)
    );
\pipe_data_reg[16][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(15),
      Q => \pipe_data_reg[16]\(15)
    );
\pipe_data_reg[16][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(1),
      Q => \pipe_data_reg[16]\(1)
    );
\pipe_data_reg[16][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(2),
      Q => \pipe_data_reg[16]\(2)
    );
\pipe_data_reg[16][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(3),
      Q => \pipe_data_reg[16]\(3)
    );
\pipe_data_reg[16][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(4),
      Q => \pipe_data_reg[16]\(4)
    );
\pipe_data_reg[16][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(5),
      Q => \pipe_data_reg[16]\(5)
    );
\pipe_data_reg[16][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(6),
      Q => \pipe_data_reg[16]\(6)
    );
\pipe_data_reg[16][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(7),
      Q => \pipe_data_reg[16]\(7)
    );
\pipe_data_reg[16][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(8),
      Q => \pipe_data_reg[16]\(8)
    );
\pipe_data_reg[16][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[16][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[15]\(9),
      Q => \pipe_data_reg[16]\(9)
    );
\pipe_data_reg[17][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(0),
      Q => \pipe_data_reg[17]\(0)
    );
\pipe_data_reg[17][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(10),
      Q => \pipe_data_reg[17]\(10)
    );
\pipe_data_reg[17][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(11),
      Q => \pipe_data_reg[17]\(11)
    );
\pipe_data_reg[17][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(12),
      Q => \pipe_data_reg[17]\(12)
    );
\pipe_data_reg[17][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(13),
      Q => \pipe_data_reg[17]\(13)
    );
\pipe_data_reg[17][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(14),
      Q => \pipe_data_reg[17]\(14)
    );
\pipe_data_reg[17][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(15),
      Q => \pipe_data_reg[17]\(15)
    );
\pipe_data_reg[17][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(1),
      Q => \pipe_data_reg[17]\(1)
    );
\pipe_data_reg[17][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(2),
      Q => \pipe_data_reg[17]\(2)
    );
\pipe_data_reg[17][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(3),
      Q => \pipe_data_reg[17]\(3)
    );
\pipe_data_reg[17][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(4),
      Q => \pipe_data_reg[17]\(4)
    );
\pipe_data_reg[17][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(5),
      Q => \pipe_data_reg[17]\(5)
    );
\pipe_data_reg[17][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(6),
      Q => \pipe_data_reg[17]\(6)
    );
\pipe_data_reg[17][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(7),
      Q => \pipe_data_reg[17]\(7)
    );
\pipe_data_reg[17][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(8),
      Q => \pipe_data_reg[17]\(8)
    );
\pipe_data_reg[17][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[17][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[16]\(9),
      Q => \pipe_data_reg[17]\(9)
    );
\pipe_data_reg[18][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(0),
      Q => \pipe_data_reg[18]\(0)
    );
\pipe_data_reg[18][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(10),
      Q => \pipe_data_reg[18]\(10)
    );
\pipe_data_reg[18][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(11),
      Q => \pipe_data_reg[18]\(11)
    );
\pipe_data_reg[18][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(12),
      Q => \pipe_data_reg[18]\(12)
    );
\pipe_data_reg[18][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(13),
      Q => \pipe_data_reg[18]\(13)
    );
\pipe_data_reg[18][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(14),
      Q => \pipe_data_reg[18]\(14)
    );
\pipe_data_reg[18][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(15),
      Q => \pipe_data_reg[18]\(15)
    );
\pipe_data_reg[18][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(1),
      Q => \pipe_data_reg[18]\(1)
    );
\pipe_data_reg[18][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(2),
      Q => \pipe_data_reg[18]\(2)
    );
\pipe_data_reg[18][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(3),
      Q => \pipe_data_reg[18]\(3)
    );
\pipe_data_reg[18][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(4),
      Q => \pipe_data_reg[18]\(4)
    );
\pipe_data_reg[18][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(5),
      Q => \pipe_data_reg[18]\(5)
    );
\pipe_data_reg[18][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(6),
      Q => \pipe_data_reg[18]\(6)
    );
\pipe_data_reg[18][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(7),
      Q => \pipe_data_reg[18]\(7)
    );
\pipe_data_reg[18][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(8),
      Q => \pipe_data_reg[18]\(8)
    );
\pipe_data_reg[18][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[18][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[17]\(9),
      Q => \pipe_data_reg[18]\(9)
    );
\pipe_data_reg[19][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(0),
      Q => \pipe_data_reg[19]\(0)
    );
\pipe_data_reg[19][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(10),
      Q => \pipe_data_reg[19]\(10)
    );
\pipe_data_reg[19][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(11),
      Q => \pipe_data_reg[19]\(11)
    );
\pipe_data_reg[19][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(12),
      Q => \pipe_data_reg[19]\(12)
    );
\pipe_data_reg[19][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(13),
      Q => \pipe_data_reg[19]\(13)
    );
\pipe_data_reg[19][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(14),
      Q => \pipe_data_reg[19]\(14)
    );
\pipe_data_reg[19][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(15),
      Q => \pipe_data_reg[19]\(15)
    );
\pipe_data_reg[19][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(1),
      Q => \pipe_data_reg[19]\(1)
    );
\pipe_data_reg[19][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(2),
      Q => \pipe_data_reg[19]\(2)
    );
\pipe_data_reg[19][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(3),
      Q => \pipe_data_reg[19]\(3)
    );
\pipe_data_reg[19][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(4),
      Q => \pipe_data_reg[19]\(4)
    );
\pipe_data_reg[19][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(5),
      Q => \pipe_data_reg[19]\(5)
    );
\pipe_data_reg[19][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(6),
      Q => \pipe_data_reg[19]\(6)
    );
\pipe_data_reg[19][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(7),
      Q => \pipe_data_reg[19]\(7)
    );
\pipe_data_reg[19][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(8),
      Q => \pipe_data_reg[19]\(8)
    );
\pipe_data_reg[19][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[19][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[18]\(9),
      Q => \pipe_data_reg[19]\(9)
    );
\pipe_data_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(0),
      Q => \pipe_data_reg[1]\(0)
    );
\pipe_data_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(10),
      Q => \pipe_data_reg[1]\(10)
    );
\pipe_data_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(11),
      Q => \pipe_data_reg[1]\(11)
    );
\pipe_data_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(12),
      Q => \pipe_data_reg[1]\(12)
    );
\pipe_data_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(13),
      Q => \pipe_data_reg[1]\(13)
    );
\pipe_data_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(14),
      Q => \pipe_data_reg[1]\(14)
    );
\pipe_data_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(15),
      Q => \pipe_data_reg[1]\(15)
    );
\pipe_data_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(1),
      Q => \pipe_data_reg[1]\(1)
    );
\pipe_data_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(2),
      Q => \pipe_data_reg[1]\(2)
    );
\pipe_data_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(3),
      Q => \pipe_data_reg[1]\(3)
    );
\pipe_data_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(4),
      Q => \pipe_data_reg[1]\(4)
    );
\pipe_data_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(5),
      Q => \pipe_data_reg[1]\(5)
    );
\pipe_data_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(6),
      Q => \pipe_data_reg[1]\(6)
    );
\pipe_data_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(7),
      Q => \pipe_data_reg[1]\(7)
    );
\pipe_data_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(8),
      Q => \pipe_data_reg[1]\(8)
    );
\pipe_data_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[1][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[0]\(9),
      Q => \pipe_data_reg[1]\(9)
    );
\pipe_data_reg[20][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(0),
      Q => \pipe_data_reg[20]\(0)
    );
\pipe_data_reg[20][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(10),
      Q => \pipe_data_reg[20]\(10)
    );
\pipe_data_reg[20][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(11),
      Q => \pipe_data_reg[20]\(11)
    );
\pipe_data_reg[20][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(12),
      Q => \pipe_data_reg[20]\(12)
    );
\pipe_data_reg[20][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(13),
      Q => \pipe_data_reg[20]\(13)
    );
\pipe_data_reg[20][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(14),
      Q => \pipe_data_reg[20]\(14)
    );
\pipe_data_reg[20][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(15),
      Q => \pipe_data_reg[20]\(15)
    );
\pipe_data_reg[20][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(1),
      Q => \pipe_data_reg[20]\(1)
    );
\pipe_data_reg[20][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(2),
      Q => \pipe_data_reg[20]\(2)
    );
\pipe_data_reg[20][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(3),
      Q => \pipe_data_reg[20]\(3)
    );
\pipe_data_reg[20][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(4),
      Q => \pipe_data_reg[20]\(4)
    );
\pipe_data_reg[20][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(5),
      Q => \pipe_data_reg[20]\(5)
    );
\pipe_data_reg[20][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(6),
      Q => \pipe_data_reg[20]\(6)
    );
\pipe_data_reg[20][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(7),
      Q => \pipe_data_reg[20]\(7)
    );
\pipe_data_reg[20][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(8),
      Q => \pipe_data_reg[20]\(8)
    );
\pipe_data_reg[20][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[20][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[19]\(9),
      Q => \pipe_data_reg[20]\(9)
    );
\pipe_data_reg[21][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(0),
      Q => \pipe_data_reg[21]\(0)
    );
\pipe_data_reg[21][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(10),
      Q => \pipe_data_reg[21]\(10)
    );
\pipe_data_reg[21][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(11),
      Q => \pipe_data_reg[21]\(11)
    );
\pipe_data_reg[21][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(12),
      Q => \pipe_data_reg[21]\(12)
    );
\pipe_data_reg[21][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(13),
      Q => \pipe_data_reg[21]\(13)
    );
\pipe_data_reg[21][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(14),
      Q => \pipe_data_reg[21]\(14)
    );
\pipe_data_reg[21][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(15),
      Q => \pipe_data_reg[21]\(15)
    );
\pipe_data_reg[21][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(1),
      Q => \pipe_data_reg[21]\(1)
    );
\pipe_data_reg[21][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(2),
      Q => \pipe_data_reg[21]\(2)
    );
\pipe_data_reg[21][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(3),
      Q => \pipe_data_reg[21]\(3)
    );
\pipe_data_reg[21][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(4),
      Q => \pipe_data_reg[21]\(4)
    );
\pipe_data_reg[21][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(5),
      Q => \pipe_data_reg[21]\(5)
    );
\pipe_data_reg[21][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(6),
      Q => \pipe_data_reg[21]\(6)
    );
\pipe_data_reg[21][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(7),
      Q => \pipe_data_reg[21]\(7)
    );
\pipe_data_reg[21][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(8),
      Q => \pipe_data_reg[21]\(8)
    );
\pipe_data_reg[21][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[21][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[20]\(9),
      Q => \pipe_data_reg[21]\(9)
    );
\pipe_data_reg[22][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(0),
      Q => \pipe_data_reg[22]\(0)
    );
\pipe_data_reg[22][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(10),
      Q => \pipe_data_reg[22]\(10)
    );
\pipe_data_reg[22][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(11),
      Q => \pipe_data_reg[22]\(11)
    );
\pipe_data_reg[22][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(12),
      Q => \pipe_data_reg[22]\(12)
    );
\pipe_data_reg[22][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(13),
      Q => \pipe_data_reg[22]\(13)
    );
\pipe_data_reg[22][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(14),
      Q => \pipe_data_reg[22]\(14)
    );
\pipe_data_reg[22][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(15),
      Q => \pipe_data_reg[22]\(15)
    );
\pipe_data_reg[22][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(1),
      Q => \pipe_data_reg[22]\(1)
    );
\pipe_data_reg[22][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(2),
      Q => \pipe_data_reg[22]\(2)
    );
\pipe_data_reg[22][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(3),
      Q => \pipe_data_reg[22]\(3)
    );
\pipe_data_reg[22][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(4),
      Q => \pipe_data_reg[22]\(4)
    );
\pipe_data_reg[22][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(5),
      Q => \pipe_data_reg[22]\(5)
    );
\pipe_data_reg[22][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(6),
      Q => \pipe_data_reg[22]\(6)
    );
\pipe_data_reg[22][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(7),
      Q => \pipe_data_reg[22]\(7)
    );
\pipe_data_reg[22][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(8),
      Q => \pipe_data_reg[22]\(8)
    );
\pipe_data_reg[22][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[22][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[21]\(9),
      Q => \pipe_data_reg[22]\(9)
    );
\pipe_data_reg[23][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(0),
      Q => \pipe_data_reg[23]\(0)
    );
\pipe_data_reg[23][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(10),
      Q => \pipe_data_reg[23]\(10)
    );
\pipe_data_reg[23][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(11),
      Q => \pipe_data_reg[23]\(11)
    );
\pipe_data_reg[23][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(12),
      Q => \pipe_data_reg[23]\(12)
    );
\pipe_data_reg[23][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(13),
      Q => \pipe_data_reg[23]\(13)
    );
\pipe_data_reg[23][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(14),
      Q => \pipe_data_reg[23]\(14)
    );
\pipe_data_reg[23][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(15),
      Q => \pipe_data_reg[23]\(15)
    );
\pipe_data_reg[23][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(1),
      Q => \pipe_data_reg[23]\(1)
    );
\pipe_data_reg[23][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(2),
      Q => \pipe_data_reg[23]\(2)
    );
\pipe_data_reg[23][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(3),
      Q => \pipe_data_reg[23]\(3)
    );
\pipe_data_reg[23][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(4),
      Q => \pipe_data_reg[23]\(4)
    );
\pipe_data_reg[23][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(5),
      Q => \pipe_data_reg[23]\(5)
    );
\pipe_data_reg[23][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(6),
      Q => \pipe_data_reg[23]\(6)
    );
\pipe_data_reg[23][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(7),
      Q => \pipe_data_reg[23]\(7)
    );
\pipe_data_reg[23][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(8),
      Q => \pipe_data_reg[23]\(8)
    );
\pipe_data_reg[23][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[23][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[22]\(9),
      Q => \pipe_data_reg[23]\(9)
    );
\pipe_data_reg[24][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(0),
      Q => \pipe_data_reg[24]\(0)
    );
\pipe_data_reg[24][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(10),
      Q => \pipe_data_reg[24]\(10)
    );
\pipe_data_reg[24][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(11),
      Q => \pipe_data_reg[24]\(11)
    );
\pipe_data_reg[24][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(12),
      Q => \pipe_data_reg[24]\(12)
    );
\pipe_data_reg[24][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(13),
      Q => \pipe_data_reg[24]\(13)
    );
\pipe_data_reg[24][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(14),
      Q => \pipe_data_reg[24]\(14)
    );
\pipe_data_reg[24][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(15),
      Q => \pipe_data_reg[24]\(15)
    );
\pipe_data_reg[24][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(1),
      Q => \pipe_data_reg[24]\(1)
    );
\pipe_data_reg[24][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(2),
      Q => \pipe_data_reg[24]\(2)
    );
\pipe_data_reg[24][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(3),
      Q => \pipe_data_reg[24]\(3)
    );
\pipe_data_reg[24][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(4),
      Q => \pipe_data_reg[24]\(4)
    );
\pipe_data_reg[24][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(5),
      Q => \pipe_data_reg[24]\(5)
    );
\pipe_data_reg[24][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(6),
      Q => \pipe_data_reg[24]\(6)
    );
\pipe_data_reg[24][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(7),
      Q => \pipe_data_reg[24]\(7)
    );
\pipe_data_reg[24][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(8),
      Q => \pipe_data_reg[24]\(8)
    );
\pipe_data_reg[24][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[24][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[23]\(9),
      Q => \pipe_data_reg[24]\(9)
    );
\pipe_data_reg[25][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(0),
      Q => \pipe_data_reg[25]\(0)
    );
\pipe_data_reg[25][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(10),
      Q => \pipe_data_reg[25]\(10)
    );
\pipe_data_reg[25][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(11),
      Q => \pipe_data_reg[25]\(11)
    );
\pipe_data_reg[25][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(12),
      Q => \pipe_data_reg[25]\(12)
    );
\pipe_data_reg[25][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(13),
      Q => \pipe_data_reg[25]\(13)
    );
\pipe_data_reg[25][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(14),
      Q => \pipe_data_reg[25]\(14)
    );
\pipe_data_reg[25][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(15),
      Q => \pipe_data_reg[25]\(15)
    );
\pipe_data_reg[25][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(1),
      Q => \pipe_data_reg[25]\(1)
    );
\pipe_data_reg[25][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(2),
      Q => \pipe_data_reg[25]\(2)
    );
\pipe_data_reg[25][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(3),
      Q => \pipe_data_reg[25]\(3)
    );
\pipe_data_reg[25][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(4),
      Q => \pipe_data_reg[25]\(4)
    );
\pipe_data_reg[25][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(5),
      Q => \pipe_data_reg[25]\(5)
    );
\pipe_data_reg[25][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(6),
      Q => \pipe_data_reg[25]\(6)
    );
\pipe_data_reg[25][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(7),
      Q => \pipe_data_reg[25]\(7)
    );
\pipe_data_reg[25][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(8),
      Q => \pipe_data_reg[25]\(8)
    );
\pipe_data_reg[25][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[25][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[24]\(9),
      Q => \pipe_data_reg[25]\(9)
    );
\pipe_data_reg[26][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(0),
      Q => Q(0)
    );
\pipe_data_reg[26][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(10),
      Q => Q(10)
    );
\pipe_data_reg[26][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(11),
      Q => Q(11)
    );
\pipe_data_reg[26][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(12),
      Q => Q(12)
    );
\pipe_data_reg[26][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(13),
      Q => Q(13)
    );
\pipe_data_reg[26][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(14),
      Q => Q(14)
    );
\pipe_data_reg[26][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(15),
      Q => Q(15)
    );
\pipe_data_reg[26][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(1),
      Q => Q(1)
    );
\pipe_data_reg[26][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(2),
      Q => Q(2)
    );
\pipe_data_reg[26][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(3),
      Q => Q(3)
    );
\pipe_data_reg[26][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(4),
      Q => Q(4)
    );
\pipe_data_reg[26][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(5),
      Q => Q(5)
    );
\pipe_data_reg[26][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(6),
      Q => Q(6)
    );
\pipe_data_reg[26][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(7),
      Q => Q(7)
    );
\pipe_data_reg[26][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(8),
      Q => Q(8)
    );
\pipe_data_reg[26][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[26][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[25]\(9),
      Q => Q(9)
    );
\pipe_data_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(0),
      Q => \pipe_data_reg[2]\(0)
    );
\pipe_data_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(10),
      Q => \pipe_data_reg[2]\(10)
    );
\pipe_data_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(11),
      Q => \pipe_data_reg[2]\(11)
    );
\pipe_data_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(12),
      Q => \pipe_data_reg[2]\(12)
    );
\pipe_data_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(13),
      Q => \pipe_data_reg[2]\(13)
    );
\pipe_data_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(14),
      Q => \pipe_data_reg[2]\(14)
    );
\pipe_data_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(15),
      Q => \pipe_data_reg[2]\(15)
    );
\pipe_data_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(1),
      Q => \pipe_data_reg[2]\(1)
    );
\pipe_data_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(2),
      Q => \pipe_data_reg[2]\(2)
    );
\pipe_data_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(3),
      Q => \pipe_data_reg[2]\(3)
    );
\pipe_data_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(4),
      Q => \pipe_data_reg[2]\(4)
    );
\pipe_data_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(5),
      Q => \pipe_data_reg[2]\(5)
    );
\pipe_data_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(6),
      Q => \pipe_data_reg[2]\(6)
    );
\pipe_data_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(7),
      Q => \pipe_data_reg[2]\(7)
    );
\pipe_data_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(8),
      Q => \pipe_data_reg[2]\(8)
    );
\pipe_data_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[2][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[1]\(9),
      Q => \pipe_data_reg[2]\(9)
    );
\pipe_data_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(0),
      Q => \pipe_data_reg[3]\(0)
    );
\pipe_data_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(10),
      Q => \pipe_data_reg[3]\(10)
    );
\pipe_data_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(11),
      Q => \pipe_data_reg[3]\(11)
    );
\pipe_data_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(12),
      Q => \pipe_data_reg[3]\(12)
    );
\pipe_data_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(13),
      Q => \pipe_data_reg[3]\(13)
    );
\pipe_data_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(14),
      Q => \pipe_data_reg[3]\(14)
    );
\pipe_data_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(15),
      Q => \pipe_data_reg[3]\(15)
    );
\pipe_data_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(1),
      Q => \pipe_data_reg[3]\(1)
    );
\pipe_data_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(2),
      Q => \pipe_data_reg[3]\(2)
    );
\pipe_data_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(3),
      Q => \pipe_data_reg[3]\(3)
    );
\pipe_data_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(4),
      Q => \pipe_data_reg[3]\(4)
    );
\pipe_data_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(5),
      Q => \pipe_data_reg[3]\(5)
    );
\pipe_data_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(6),
      Q => \pipe_data_reg[3]\(6)
    );
\pipe_data_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(7),
      Q => \pipe_data_reg[3]\(7)
    );
\pipe_data_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(8),
      Q => \pipe_data_reg[3]\(8)
    );
\pipe_data_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[3][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[2]\(9),
      Q => \pipe_data_reg[3]\(9)
    );
\pipe_data_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(0),
      Q => \pipe_data_reg[4]\(0)
    );
\pipe_data_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(10),
      Q => \pipe_data_reg[4]\(10)
    );
\pipe_data_reg[4][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(11),
      Q => \pipe_data_reg[4]\(11)
    );
\pipe_data_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(12),
      Q => \pipe_data_reg[4]\(12)
    );
\pipe_data_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(13),
      Q => \pipe_data_reg[4]\(13)
    );
\pipe_data_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(14),
      Q => \pipe_data_reg[4]\(14)
    );
\pipe_data_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(15),
      Q => \pipe_data_reg[4]\(15)
    );
\pipe_data_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(1),
      Q => \pipe_data_reg[4]\(1)
    );
\pipe_data_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(2),
      Q => \pipe_data_reg[4]\(2)
    );
\pipe_data_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(3),
      Q => \pipe_data_reg[4]\(3)
    );
\pipe_data_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(4),
      Q => \pipe_data_reg[4]\(4)
    );
\pipe_data_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(5),
      Q => \pipe_data_reg[4]\(5)
    );
\pipe_data_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(6),
      Q => \pipe_data_reg[4]\(6)
    );
\pipe_data_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(7),
      Q => \pipe_data_reg[4]\(7)
    );
\pipe_data_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(8),
      Q => \pipe_data_reg[4]\(8)
    );
\pipe_data_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[4][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[3]\(9),
      Q => \pipe_data_reg[4]\(9)
    );
\pipe_data_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(0),
      Q => \pipe_data_reg[5]\(0)
    );
\pipe_data_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(10),
      Q => \pipe_data_reg[5]\(10)
    );
\pipe_data_reg[5][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(11),
      Q => \pipe_data_reg[5]\(11)
    );
\pipe_data_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(12),
      Q => \pipe_data_reg[5]\(12)
    );
\pipe_data_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(13),
      Q => \pipe_data_reg[5]\(13)
    );
\pipe_data_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(14),
      Q => \pipe_data_reg[5]\(14)
    );
\pipe_data_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(15),
      Q => \pipe_data_reg[5]\(15)
    );
\pipe_data_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(1),
      Q => \pipe_data_reg[5]\(1)
    );
\pipe_data_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(2),
      Q => \pipe_data_reg[5]\(2)
    );
\pipe_data_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(3),
      Q => \pipe_data_reg[5]\(3)
    );
\pipe_data_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(4),
      Q => \pipe_data_reg[5]\(4)
    );
\pipe_data_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(5),
      Q => \pipe_data_reg[5]\(5)
    );
\pipe_data_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(6),
      Q => \pipe_data_reg[5]\(6)
    );
\pipe_data_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(7),
      Q => \pipe_data_reg[5]\(7)
    );
\pipe_data_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(8),
      Q => \pipe_data_reg[5]\(8)
    );
\pipe_data_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[5][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[4]\(9),
      Q => \pipe_data_reg[5]\(9)
    );
\pipe_data_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(0),
      Q => \pipe_data_reg[6]\(0)
    );
\pipe_data_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(10),
      Q => \pipe_data_reg[6]\(10)
    );
\pipe_data_reg[6][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(11),
      Q => \pipe_data_reg[6]\(11)
    );
\pipe_data_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(12),
      Q => \pipe_data_reg[6]\(12)
    );
\pipe_data_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(13),
      Q => \pipe_data_reg[6]\(13)
    );
\pipe_data_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(14),
      Q => \pipe_data_reg[6]\(14)
    );
\pipe_data_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(15),
      Q => \pipe_data_reg[6]\(15)
    );
\pipe_data_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(1),
      Q => \pipe_data_reg[6]\(1)
    );
\pipe_data_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(2),
      Q => \pipe_data_reg[6]\(2)
    );
\pipe_data_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(3),
      Q => \pipe_data_reg[6]\(3)
    );
\pipe_data_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(4),
      Q => \pipe_data_reg[6]\(4)
    );
\pipe_data_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(5),
      Q => \pipe_data_reg[6]\(5)
    );
\pipe_data_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(6),
      Q => \pipe_data_reg[6]\(6)
    );
\pipe_data_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(7),
      Q => \pipe_data_reg[6]\(7)
    );
\pipe_data_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(8),
      Q => \pipe_data_reg[6]\(8)
    );
\pipe_data_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[6][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[5]\(9),
      Q => \pipe_data_reg[6]\(9)
    );
\pipe_data_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(0),
      Q => \pipe_data_reg[7]\(0)
    );
\pipe_data_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(10),
      Q => \pipe_data_reg[7]\(10)
    );
\pipe_data_reg[7][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(11),
      Q => \pipe_data_reg[7]\(11)
    );
\pipe_data_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(12),
      Q => \pipe_data_reg[7]\(12)
    );
\pipe_data_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(13),
      Q => \pipe_data_reg[7]\(13)
    );
\pipe_data_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(14),
      Q => \pipe_data_reg[7]\(14)
    );
\pipe_data_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(15),
      Q => \pipe_data_reg[7]\(15)
    );
\pipe_data_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(1),
      Q => \pipe_data_reg[7]\(1)
    );
\pipe_data_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(2),
      Q => \pipe_data_reg[7]\(2)
    );
\pipe_data_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(3),
      Q => \pipe_data_reg[7]\(3)
    );
\pipe_data_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(4),
      Q => \pipe_data_reg[7]\(4)
    );
\pipe_data_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(5),
      Q => \pipe_data_reg[7]\(5)
    );
\pipe_data_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(6),
      Q => \pipe_data_reg[7]\(6)
    );
\pipe_data_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(7),
      Q => \pipe_data_reg[7]\(7)
    );
\pipe_data_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(8),
      Q => \pipe_data_reg[7]\(8)
    );
\pipe_data_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[7][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[6]\(9),
      Q => \pipe_data_reg[7]\(9)
    );
\pipe_data_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(0),
      Q => \pipe_data_reg[8]\(0)
    );
\pipe_data_reg[8][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(10),
      Q => \pipe_data_reg[8]\(10)
    );
\pipe_data_reg[8][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(11),
      Q => \pipe_data_reg[8]\(11)
    );
\pipe_data_reg[8][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(12),
      Q => \pipe_data_reg[8]\(12)
    );
\pipe_data_reg[8][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(13),
      Q => \pipe_data_reg[8]\(13)
    );
\pipe_data_reg[8][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(14),
      Q => \pipe_data_reg[8]\(14)
    );
\pipe_data_reg[8][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(15),
      Q => \pipe_data_reg[8]\(15)
    );
\pipe_data_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(1),
      Q => \pipe_data_reg[8]\(1)
    );
\pipe_data_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(2),
      Q => \pipe_data_reg[8]\(2)
    );
\pipe_data_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(3),
      Q => \pipe_data_reg[8]\(3)
    );
\pipe_data_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(4),
      Q => \pipe_data_reg[8]\(4)
    );
\pipe_data_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(5),
      Q => \pipe_data_reg[8]\(5)
    );
\pipe_data_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(6),
      Q => \pipe_data_reg[8]\(6)
    );
\pipe_data_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(7),
      Q => \pipe_data_reg[8]\(7)
    );
\pipe_data_reg[8][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(8),
      Q => \pipe_data_reg[8]\(8)
    );
\pipe_data_reg[8][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[8][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[7]\(9),
      Q => \pipe_data_reg[8]\(9)
    );
\pipe_data_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(0),
      Q => \pipe_data_reg[9]\(0)
    );
\pipe_data_reg[9][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(10),
      Q => \pipe_data_reg[9]\(10)
    );
\pipe_data_reg[9][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(11),
      Q => \pipe_data_reg[9]\(11)
    );
\pipe_data_reg[9][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(12),
      Q => \pipe_data_reg[9]\(12)
    );
\pipe_data_reg[9][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(13),
      Q => \pipe_data_reg[9]\(13)
    );
\pipe_data_reg[9][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(14),
      Q => \pipe_data_reg[9]\(14)
    );
\pipe_data_reg[9][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(15),
      Q => \pipe_data_reg[9]\(15)
    );
\pipe_data_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(1),
      Q => \pipe_data_reg[9]\(1)
    );
\pipe_data_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(2),
      Q => \pipe_data_reg[9]\(2)
    );
\pipe_data_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(3),
      Q => \pipe_data_reg[9]\(3)
    );
\pipe_data_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(4),
      Q => \pipe_data_reg[9]\(4)
    );
\pipe_data_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(5),
      Q => \pipe_data_reg[9]\(5)
    );
\pipe_data_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(6),
      Q => \pipe_data_reg[9]\(6)
    );
\pipe_data_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(7),
      Q => \pipe_data_reg[9]\(7)
    );
\pipe_data_reg[9][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(8),
      Q => \pipe_data_reg[9]\(8)
    );
\pipe_data_reg[9][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \pipe_data[9][15]_i_1_n_0\,
      CLR => \^arstn_0\,
      D => \pipe_data_reg[8]\(9),
      Q => \pipe_data_reg[9]\(9)
    );
\pipe_valid[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => m_axis_result_tvalid,
      I1 => \pipe_valid_reg_n_0_[1]\,
      I2 => p_24_in,
      I3 => \pipe_valid_reg_n_0_[0]\,
      O => \pipe_valid[0]_i_1_n_0\
    );
\pipe_valid[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[9]\,
      I1 => \pipe_valid_reg_n_0_[11]\,
      I2 => p_14_in,
      I3 => \pipe_valid_reg_n_0_[10]\,
      O => \pipe_valid[10]_i_1_n_0\
    );
\pipe_valid[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[10]\,
      I1 => p_14_in,
      I2 => \pipe_valid_reg_n_0_[11]\,
      O => \pipe_valid[11]_i_1_n_0\
    );
\pipe_valid[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[11]\,
      I1 => p_14_in,
      I2 => \pipe_valid_reg_n_0_[12]\,
      O => \pipe_valid[12]_i_1_n_0\
    );
\pipe_valid[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[12]\,
      I1 => \pipe_valid_reg_n_0_[14]\,
      I2 => \pipe_valid_reg_n_0_[16]\,
      I3 => p_9_in,
      I4 => \pipe_valid_reg_n_0_[15]\,
      I5 => \pipe_valid_reg_n_0_[13]\,
      O => \pipe_valid[13]_i_1_n_0\
    );
\pipe_valid[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[18]\,
      I1 => \pipe_valid_reg_n_0_[20]\,
      I2 => p_4_in,
      I3 => \pipe_valid_reg_n_0_[21]\,
      I4 => \pipe_valid_reg_n_0_[19]\,
      I5 => \pipe_valid_reg_n_0_[17]\,
      O => p_9_in
    );
\pipe_valid[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[13]\,
      I1 => \pipe_valid_reg_n_0_[15]\,
      I2 => p_9_in,
      I3 => \pipe_valid_reg_n_0_[16]\,
      I4 => \pipe_valid_reg_n_0_[14]\,
      O => \pipe_valid[14]_i_1_n_0\
    );
\pipe_valid[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[14]\,
      I1 => \pipe_valid_reg_n_0_[16]\,
      I2 => p_9_in,
      I3 => \pipe_valid_reg_n_0_[15]\,
      O => \pipe_valid[15]_i_1_n_0\
    );
\pipe_valid[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[15]\,
      I1 => p_9_in,
      I2 => \pipe_valid_reg_n_0_[16]\,
      O => \pipe_valid[16]_i_1_n_0\
    );
\pipe_valid[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[16]\,
      I1 => p_9_in,
      I2 => \pipe_valid_reg_n_0_[17]\,
      O => \pipe_valid[17]_i_1_n_0\
    );
\pipe_valid[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[17]\,
      I1 => \pipe_valid_reg_n_0_[19]\,
      I2 => \pipe_valid_reg_n_0_[21]\,
      I3 => p_4_in,
      I4 => \pipe_valid_reg_n_0_[20]\,
      I5 => \pipe_valid_reg_n_0_[18]\,
      O => \pipe_valid[18]_i_1_n_0\
    );
\pipe_valid[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[23]\,
      I1 => \pipe_valid_reg_n_0_[25]\,
      I2 => s_axis_b_tready,
      I3 => \^tvalid_align\,
      I4 => \pipe_valid_reg_n_0_[24]\,
      I5 => \pipe_valid_reg_n_0_[22]\,
      O => p_4_in
    );
\pipe_valid[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[18]\,
      I1 => \pipe_valid_reg_n_0_[20]\,
      I2 => p_4_in,
      I3 => \pipe_valid_reg_n_0_[21]\,
      I4 => \pipe_valid_reg_n_0_[19]\,
      O => \pipe_valid[19]_i_1_n_0\
    );
\pipe_valid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[0]\,
      I1 => p_24_in,
      I2 => \pipe_valid_reg_n_0_[1]\,
      O => \pipe_valid[1]_i_1_n_0\
    );
\pipe_valid[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[19]\,
      I1 => \pipe_valid_reg_n_0_[21]\,
      I2 => p_4_in,
      I3 => \pipe_valid_reg_n_0_[20]\,
      O => \pipe_valid[20]_i_1_n_0\
    );
\pipe_valid[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[20]\,
      I1 => p_4_in,
      I2 => \pipe_valid_reg_n_0_[21]\,
      O => \pipe_valid[21]_i_1_n_0\
    );
\pipe_valid[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[21]\,
      I1 => p_4_in,
      I2 => \pipe_valid_reg_n_0_[22]\,
      O => \pipe_valid[22]_i_1_n_0\
    );
\pipe_valid[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[22]\,
      I1 => \pipe_valid_reg_n_0_[24]\,
      I2 => \^tvalid_align\,
      I3 => s_axis_b_tready,
      I4 => \pipe_valid_reg_n_0_[25]\,
      I5 => \pipe_valid_reg_n_0_[23]\,
      O => \pipe_valid[23]_i_1_n_0\
    );
\pipe_valid[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[23]\,
      I1 => \pipe_valid_reg_n_0_[25]\,
      I2 => s_axis_b_tready,
      I3 => \^tvalid_align\,
      I4 => \pipe_valid_reg_n_0_[24]\,
      O => \pipe_valid[24]_i_1_n_0\
    );
\pipe_valid[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[24]\,
      I1 => \^tvalid_align\,
      I2 => s_axis_b_tready,
      I3 => \pipe_valid_reg_n_0_[25]\,
      O => \pipe_valid[25]_i_1_n_0\
    );
\pipe_valid[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[25]\,
      I1 => s_axis_b_tready,
      I2 => \^tvalid_align\,
      O => \pipe_valid[26]_i_1_n_0\
    );
\pipe_valid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[1]\,
      I1 => p_24_in,
      I2 => \pipe_valid_reg_n_0_[2]\,
      O => \pipe_valid[2]_i_1_n_0\
    );
\pipe_valid[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[2]\,
      I1 => \pipe_valid_reg_n_0_[4]\,
      I2 => \pipe_valid_reg_n_0_[6]\,
      I3 => p_19_in,
      I4 => \pipe_valid_reg_n_0_[5]\,
      I5 => \pipe_valid_reg_n_0_[3]\,
      O => \pipe_valid[3]_i_1_n_0\
    );
\pipe_valid[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[8]\,
      I1 => \pipe_valid_reg_n_0_[10]\,
      I2 => p_14_in,
      I3 => \pipe_valid_reg_n_0_[11]\,
      I4 => \pipe_valid_reg_n_0_[9]\,
      I5 => \pipe_valid_reg_n_0_[7]\,
      O => p_19_in
    );
\pipe_valid[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[3]\,
      I1 => \pipe_valid_reg_n_0_[5]\,
      I2 => p_19_in,
      I3 => \pipe_valid_reg_n_0_[6]\,
      I4 => \pipe_valid_reg_n_0_[4]\,
      O => \pipe_valid[4]_i_1_n_0\
    );
\pipe_valid[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[4]\,
      I1 => \pipe_valid_reg_n_0_[6]\,
      I2 => p_19_in,
      I3 => \pipe_valid_reg_n_0_[5]\,
      O => \pipe_valid[5]_i_1_n_0\
    );
\pipe_valid[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[5]\,
      I1 => p_19_in,
      I2 => \pipe_valid_reg_n_0_[6]\,
      O => \pipe_valid[6]_i_1_n_0\
    );
\pipe_valid[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[6]\,
      I1 => p_19_in,
      I2 => \pipe_valid_reg_n_0_[7]\,
      O => \pipe_valid[7]_i_1_n_0\
    );
\pipe_valid[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[7]\,
      I1 => \pipe_valid_reg_n_0_[9]\,
      I2 => \pipe_valid_reg_n_0_[11]\,
      I3 => p_14_in,
      I4 => \pipe_valid_reg_n_0_[10]\,
      I5 => \pipe_valid_reg_n_0_[8]\,
      O => \pipe_valid[8]_i_1_n_0\
    );
\pipe_valid[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[13]\,
      I1 => \pipe_valid_reg_n_0_[15]\,
      I2 => p_9_in,
      I3 => \pipe_valid_reg_n_0_[16]\,
      I4 => \pipe_valid_reg_n_0_[14]\,
      I5 => \pipe_valid_reg_n_0_[12]\,
      O => p_14_in
    );
\pipe_valid[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[8]\,
      I1 => \pipe_valid_reg_n_0_[10]\,
      I2 => p_14_in,
      I3 => \pipe_valid_reg_n_0_[11]\,
      I4 => \pipe_valid_reg_n_0_[9]\,
      O => \pipe_valid[9]_i_1_n_0\
    );
\pipe_valid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[0]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[0]\
    );
\pipe_valid_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[10]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[10]\
    );
\pipe_valid_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[11]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[11]\
    );
\pipe_valid_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[12]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[12]\
    );
\pipe_valid_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[13]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[13]\
    );
\pipe_valid_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[14]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[14]\
    );
\pipe_valid_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[15]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[15]\
    );
\pipe_valid_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[16]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[16]\
    );
\pipe_valid_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[17]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[17]\
    );
\pipe_valid_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[18]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[18]\
    );
\pipe_valid_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[19]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[19]\
    );
\pipe_valid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[1]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[1]\
    );
\pipe_valid_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[20]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[20]\
    );
\pipe_valid_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[21]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[21]\
    );
\pipe_valid_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[22]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[22]\
    );
\pipe_valid_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[23]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[23]\
    );
\pipe_valid_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[24]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[24]\
    );
\pipe_valid_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[25]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[25]\
    );
\pipe_valid_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[26]_i_1_n_0\,
      Q => \^tvalid_align\
    );
\pipe_valid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[2]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[2]\
    );
\pipe_valid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[3]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[3]\
    );
\pipe_valid_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[4]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[4]\
    );
\pipe_valid_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[5]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[5]\
    );
\pipe_valid_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[6]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[6]\
    );
\pipe_valid_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[7]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[7]\
    );
\pipe_valid_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[8]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[8]\
    );
\pipe_valid_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arstn_0\,
      D => \pipe_valid[9]_i_1_n_0\,
      Q => \pipe_valid_reg_n_0_[9]\
    );
u_epsilon_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00000000000000"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[1]\,
      I1 => p_24_in,
      I2 => \pipe_valid_reg_n_0_[0]\,
      I3 => s_axis_a_tready,
      I4 => u_epsilon,
      I5 => u_epsilon_0,
      O => m_axis_result_tready
    );
u_epsilon_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pipe_valid_reg_n_0_[3]\,
      I1 => \pipe_valid_reg_n_0_[5]\,
      I2 => p_19_in,
      I3 => \pipe_valid_reg_n_0_[6]\,
      I4 => \pipe_valid_reg_n_0_[4]\,
      I5 => \pipe_valid_reg_n_0_[2]\,
      O => p_24_in
    );
u_newton1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(1),
      O => \^d\(1)
    );
u_newton1_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(0),
      O => \^d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0_inv_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    top_ready : out STD_LOGIC;
    \m_axis_tvalid_reg[44]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tready : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    data_ready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rms_ready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \m_axis_tvalid_reg[44]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_norm_top_0_0_inv_fifo : entity is "inv_fifo";
end Layernorm_rms_norm_top_0_0_inv_fifo;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0_inv_fifo is
  component Layernorm_rms_norm_top_0_0_c_shift_ram_3 is
  port (
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component Layernorm_rms_norm_top_0_0_c_shift_ram_3;
  signal S_AXIS_TREADY_INST_0_i_2_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_INST_0_i_3_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_INST_0_i_4_n_0 : STD_LOGIC;
  signal m_axis_tvalid1 : STD_LOGIC;
  signal \^m_axis_tvalid_reg[44]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \m_axis_tvalid_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[7]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[8]\ : STD_LOGIC;
  signal \m_axis_tvalid_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_ram_u_i_1_n_0 : STD_LOGIC;
  signal \^top_ready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXIS_TREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_i_1\ : label is "soft_lutpair0";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shift_ram_u : label is "c_shift_ram_3,c_shift_ram_v12_0_18,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shift_ram_u : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shift_ram_u : label is "c_shift_ram_v12_0_18,Vivado 2024.2";
begin
  \m_axis_tvalid_reg[44]_0\(0) <= \^m_axis_tvalid_reg[44]_0\(0);
  top_ready <= \^top_ready\;
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^top_ready\,
      I1 => \^m_axis_tvalid_reg[44]_0\(0),
      I2 => s_axis_a_tready,
      O => S_AXIS_TREADY
    );
S_AXIS_TREADY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => S_AXIS_TREADY_INST_0_i_2_n_0,
      I1 => data_ready(1),
      I2 => data_ready(0),
      I3 => data_ready(3),
      I4 => data_ready(2),
      I5 => S_AXIS_TREADY_INST_0_i_3_n_0,
      O => \^top_ready\
    );
S_AXIS_TREADY_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => data_ready(5),
      I1 => data_ready(4),
      I2 => data_ready(7),
      I3 => data_ready(6),
      O => S_AXIS_TREADY_INST_0_i_2_n_0
    );
S_AXIS_TREADY_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => rms_ready(2),
      I1 => rms_ready(3),
      I2 => rms_ready(0),
      I3 => rms_ready(1),
      I4 => S_AXIS_TREADY_INST_0_i_4_n_0,
      O => S_AXIS_TREADY_INST_0_i_3_n_0
    );
S_AXIS_TREADY_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rms_ready(5),
      I1 => rms_ready(4),
      I2 => rms_ready(7),
      I3 => rms_ready(6),
      O => S_AXIS_TREADY_INST_0_i_4_n_0
    );
\m_axis_tvalid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^top_ready\,
      I1 => \^m_axis_tvalid_reg[44]_0\(0),
      I2 => S_AXIS_TVALID,
      O => m_axis_tvalid1
    );
\m_axis_tvalid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => m_axis_tvalid1,
      Q => \m_axis_tvalid_reg_n_0_[0]\
    );
\m_axis_tvalid_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[9]\,
      Q => \m_axis_tvalid_reg_n_0_[10]\
    );
\m_axis_tvalid_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[10]\,
      Q => \m_axis_tvalid_reg_n_0_[11]\
    );
\m_axis_tvalid_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[11]\,
      Q => \m_axis_tvalid_reg_n_0_[12]\
    );
\m_axis_tvalid_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[12]\,
      Q => \m_axis_tvalid_reg_n_0_[13]\
    );
\m_axis_tvalid_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[13]\,
      Q => \m_axis_tvalid_reg_n_0_[14]\
    );
\m_axis_tvalid_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[14]\,
      Q => \m_axis_tvalid_reg_n_0_[15]\
    );
\m_axis_tvalid_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[15]\,
      Q => \m_axis_tvalid_reg_n_0_[16]\
    );
\m_axis_tvalid_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[16]\,
      Q => \m_axis_tvalid_reg_n_0_[17]\
    );
\m_axis_tvalid_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[17]\,
      Q => \m_axis_tvalid_reg_n_0_[18]\
    );
\m_axis_tvalid_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[18]\,
      Q => \m_axis_tvalid_reg_n_0_[19]\
    );
\m_axis_tvalid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[0]\,
      Q => \m_axis_tvalid_reg_n_0_[1]\
    );
\m_axis_tvalid_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[19]\,
      Q => \m_axis_tvalid_reg_n_0_[20]\
    );
\m_axis_tvalid_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[20]\,
      Q => \m_axis_tvalid_reg_n_0_[21]\
    );
\m_axis_tvalid_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[21]\,
      Q => \m_axis_tvalid_reg_n_0_[22]\
    );
\m_axis_tvalid_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[22]\,
      Q => \m_axis_tvalid_reg_n_0_[23]\
    );
\m_axis_tvalid_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[23]\,
      Q => \m_axis_tvalid_reg_n_0_[24]\
    );
\m_axis_tvalid_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[24]\,
      Q => \m_axis_tvalid_reg_n_0_[25]\
    );
\m_axis_tvalid_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[25]\,
      Q => \m_axis_tvalid_reg_n_0_[26]\
    );
\m_axis_tvalid_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[26]\,
      Q => \m_axis_tvalid_reg_n_0_[27]\
    );
\m_axis_tvalid_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[27]\,
      Q => \m_axis_tvalid_reg_n_0_[28]\
    );
\m_axis_tvalid_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[28]\,
      Q => \m_axis_tvalid_reg_n_0_[29]\
    );
\m_axis_tvalid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[1]\,
      Q => \m_axis_tvalid_reg_n_0_[2]\
    );
\m_axis_tvalid_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[29]\,
      Q => \m_axis_tvalid_reg_n_0_[30]\
    );
\m_axis_tvalid_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[30]\,
      Q => \m_axis_tvalid_reg_n_0_[31]\
    );
\m_axis_tvalid_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[31]\,
      Q => \m_axis_tvalid_reg_n_0_[32]\
    );
\m_axis_tvalid_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[32]\,
      Q => \m_axis_tvalid_reg_n_0_[33]\
    );
\m_axis_tvalid_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[33]\,
      Q => \m_axis_tvalid_reg_n_0_[34]\
    );
\m_axis_tvalid_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[34]\,
      Q => \m_axis_tvalid_reg_n_0_[35]\
    );
\m_axis_tvalid_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[35]\,
      Q => \m_axis_tvalid_reg_n_0_[36]\
    );
\m_axis_tvalid_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[36]\,
      Q => \m_axis_tvalid_reg_n_0_[37]\
    );
\m_axis_tvalid_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[37]\,
      Q => \m_axis_tvalid_reg_n_0_[38]\
    );
\m_axis_tvalid_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[38]\,
      Q => \m_axis_tvalid_reg_n_0_[39]\
    );
\m_axis_tvalid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[2]\,
      Q => \m_axis_tvalid_reg_n_0_[3]\
    );
\m_axis_tvalid_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[39]\,
      Q => \m_axis_tvalid_reg_n_0_[40]\
    );
\m_axis_tvalid_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[40]\,
      Q => \m_axis_tvalid_reg_n_0_[41]\
    );
\m_axis_tvalid_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[41]\,
      Q => \m_axis_tvalid_reg_n_0_[42]\
    );
\m_axis_tvalid_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[42]\,
      Q => \m_axis_tvalid_reg_n_0_[43]\
    );
\m_axis_tvalid_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[43]\,
      Q => \^m_axis_tvalid_reg[44]_0\(0)
    );
\m_axis_tvalid_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[3]\,
      Q => \m_axis_tvalid_reg_n_0_[4]\
    );
\m_axis_tvalid_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[4]\,
      Q => \m_axis_tvalid_reg_n_0_[5]\
    );
\m_axis_tvalid_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[5]\,
      Q => \m_axis_tvalid_reg_n_0_[6]\
    );
\m_axis_tvalid_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[6]\,
      Q => \m_axis_tvalid_reg_n_0_[7]\
    );
\m_axis_tvalid_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[7]\,
      Q => \m_axis_tvalid_reg_n_0_[8]\
    );
\m_axis_tvalid_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid_reg[44]_1\,
      D => \m_axis_tvalid_reg_n_0_[8]\,
      Q => \m_axis_tvalid_reg_n_0_[9]\
    );
shift_ram_u: component Layernorm_rms_norm_top_0_0_c_shift_ram_3
     port map (
      CE => shift_ram_u_i_1_n_0,
      CLK => aclk,
      D(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      Q(127 downto 0) => Q(127 downto 0)
    );
shift_ram_u_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => \^m_axis_tvalid_reg[44]_0\(0),
      I2 => \^top_ready\,
      O => shift_ram_u_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0_inv_sqrt is
  port (
    \bbstub_m_axis_result_tdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arstn_0 : out STD_LOGIC;
    s_axis_b_tvalid : out STD_LOGIC;
    m_axis_result_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    m_axis_result_tvalid : in STD_LOGIC;
    m_axis_result_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    top_ready : in STD_LOGIC;
    \M_AXIS_TDATA[127]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_norm_top_0_0_inv_sqrt : entity is "inv_sqrt";
end Layernorm_rms_norm_top_0_0_inv_sqrt;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0_inv_sqrt is
  component Layernorm_rms_norm_top_0_0_bf_mul is
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
  end component Layernorm_rms_norm_top_0_0_bf_mul;
  component Layernorm_rms_norm_top_0_0_bf_sub is
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
  end component Layernorm_rms_norm_top_0_0_bf_sub;
  component Layernorm_rms_norm_top_0_0_bf_mul_HD1 is
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
  end component Layernorm_rms_norm_top_0_0_bf_mul_HD1;
  signal S_AXIS_TREADY1 : STD_LOGIC;
  signal S_AXIS_TREADY2 : STD_LOGIC;
  signal S_AXIS_TREADY3 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal data2_align : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data2_carry__0_n_0\ : STD_LOGIC;
  signal \data2_carry__0_n_1\ : STD_LOGIC;
  signal \data2_carry__0_n_2\ : STD_LOGIC;
  signal \data2_carry__0_n_3\ : STD_LOGIC;
  signal \data2_carry__1_n_0\ : STD_LOGIC;
  signal \data2_carry__1_n_1\ : STD_LOGIC;
  signal \data2_carry__1_n_2\ : STD_LOGIC;
  signal \data2_carry__1_n_3\ : STD_LOGIC;
  signal \data2_carry__2_n_3\ : STD_LOGIC;
  signal data2_carry_n_0 : STD_LOGIC;
  signal data2_carry_n_1 : STD_LOGIC;
  signal data2_carry_n_2 : STD_LOGIC;
  signal data2_carry_n_3 : STD_LOGIC;
  signal data_newton1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_newton2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_newton3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal invsqrt_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal tready_align : STD_LOGIC;
  signal tready_gethalf : STD_LOGIC;
  signal tready_newton1 : STD_LOGIC;
  signal tready_newton2 : STD_LOGIC;
  signal tready_newton3 : STD_LOGIC;
  signal tvalid_align : STD_LOGIC;
  signal tvalid_gethalf : STD_LOGIC;
  signal tvalid_newton1 : STD_LOGIC;
  signal tvalid_newton2 : STD_LOGIC;
  signal tvalid_newton3 : STD_LOGIC;
  signal \NLW_data2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_u_gethalf_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_u_newton3_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_gethalf : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of u_gethalf : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of u_gethalf : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of u_newton1 : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of u_newton1 : label is "yes";
  attribute X_CORE_INFO of u_newton1 : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of u_newton2 : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of u_newton2 : label is "yes";
  attribute X_CORE_INFO of u_newton2 : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of u_newton3 : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of u_newton3 : label is "yes";
  attribute X_CORE_INFO of u_newton3 : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of u_newton4 : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of u_newton4 : label is "yes";
  attribute X_CORE_INFO of u_newton4 : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
data2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data2_carry_n_0,
      CO(2) => data2_carry_n_1,
      CO(1) => data2_carry_n_2,
      CO(0) => data2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \p_0_in__0\(5 downto 3),
      DI(0) => '0',
      O(3 downto 0) => data2(5 downto 2),
      S(3 downto 1) => m_axis_result_tdata(6 downto 4),
      S(0) => \p_0_in__0\(2)
    );
\data2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data2_carry_n_0,
      CO(3) => \data2_carry__0_n_0\,
      CO(2) => \data2_carry__0_n_1\,
      CO(1) => \data2_carry__0_n_2\,
      CO(0) => \data2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \p_0_in__0\(9 downto 8),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => data2(9 downto 6),
      S(3 downto 2) => m_axis_result_tdata(10 downto 9),
      S(1 downto 0) => \p_0_in__0\(7 downto 6)
    );
\data2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(10),
      O => \p_0_in__0\(9)
    );
\data2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(9),
      O => \p_0_in__0\(8)
    );
\data2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(8),
      O => \p_0_in__0\(7)
    );
\data2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(7),
      O => \p_0_in__0\(6)
    );
\data2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data2_carry__0_n_0\,
      CO(3) => \data2_carry__1_n_0\,
      CO(2) => \data2_carry__1_n_1\,
      CO(1) => \data2_carry__1_n_2\,
      CO(0) => \data2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \p_0_in__0\(12 downto 10),
      O(3 downto 0) => data2(13 downto 10),
      S(3) => \p_0_in__0\(13),
      S(2 downto 0) => m_axis_result_tdata(13 downto 11)
    );
\data2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(13),
      O => \p_0_in__0\(12)
    );
\data2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(12),
      O => \p_0_in__0\(11)
    );
\data2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(11),
      O => \p_0_in__0\(10)
    );
\data2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(14),
      O => \p_0_in__0\(13)
    );
\data2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data2_carry__1_n_0\,
      CO(3 downto 1) => \NLW_data2_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \data2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \p_0_in__0\(14),
      O(3 downto 2) => \NLW_data2_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data2(15 downto 14),
      S(3 downto 1) => B"001",
      S(0) => m_axis_result_tdata(15)
    );
data2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(6),
      O => \p_0_in__0\(5)
    );
data2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(5),
      O => \p_0_in__0\(4)
    );
data2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(4),
      O => \p_0_in__0\(3)
    );
data2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_result_tdata(3),
      O => \p_0_in__0\(2)
    );
\mul_invsqrtrms[7].mul_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => invsqrt_valid,
      I1 => \M_AXIS_TDATA[127]\(0),
      O => s_axis_b_tvalid
    );
u_fifo: entity work.Layernorm_rms_norm_top_0_0_bf_fifo
     port map (
      D(1 downto 0) => p_0_in(1 downto 0),
      DI(0) => \p_0_in__0\(14),
      Q(15 downto 0) => data2_align(15 downto 0),
      aclk => aclk,
      arstn => arstn,
      arstn_0 => arstn_0,
      m_axis_result_tdata(2) => m_axis_result_tdata(15),
      m_axis_result_tdata(1 downto 0) => m_axis_result_tdata(2 downto 1),
      m_axis_result_tready => m_axis_result_tready,
      m_axis_result_tvalid => m_axis_result_tvalid,
      \pipe_data_reg[0][15]_0\(13 downto 0) => data2(15 downto 2),
      s_axis_a_tready => S_AXIS_TREADY1,
      s_axis_b_tready => tready_align,
      tvalid_align => tvalid_align,
      u_epsilon => S_AXIS_TREADY2,
      u_epsilon_0 => S_AXIS_TREADY3
    );
u_gethalf: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => data1(15 downto 0),
      m_axis_result_tready => tready_gethalf,
      m_axis_result_tvalid => tvalid_gethalf,
      s_axis_a_tdata(15 downto 0) => m_axis_result_tdata(15 downto 0),
      s_axis_a_tready => S_AXIS_TREADY1,
      s_axis_a_tvalid => m_axis_result_tvalid,
      s_axis_b_tdata(15 downto 0) => B"0011111100000000",
      s_axis_b_tready => NLW_u_gethalf_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tvalid => '1'
    );
u_newton1: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => data_newton1(15 downto 0),
      m_axis_result_tready => tready_newton1,
      m_axis_result_tvalid => tvalid_newton1,
      s_axis_a_tdata(15 downto 2) => data2(15 downto 2),
      s_axis_a_tdata(1 downto 0) => p_0_in(1 downto 0),
      s_axis_a_tready => S_AXIS_TREADY2,
      s_axis_a_tvalid => m_axis_result_tvalid,
      s_axis_b_tdata(15 downto 2) => data2(15 downto 2),
      s_axis_b_tdata(1 downto 0) => p_0_in(1 downto 0),
      s_axis_b_tready => S_AXIS_TREADY3,
      s_axis_b_tvalid => m_axis_result_tvalid
    );
u_newton2: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => data_newton2(15 downto 0),
      m_axis_result_tready => tready_newton2,
      m_axis_result_tvalid => tvalid_newton2,
      s_axis_a_tdata(15 downto 0) => data1(15 downto 0),
      s_axis_a_tready => tready_gethalf,
      s_axis_a_tvalid => tvalid_gethalf,
      s_axis_b_tdata(15 downto 0) => data_newton1(15 downto 0),
      s_axis_b_tready => tready_newton1,
      s_axis_b_tvalid => tvalid_newton1
    );
u_newton3: component Layernorm_rms_norm_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => data_newton3(15 downto 0),
      m_axis_result_tready => tready_newton3,
      m_axis_result_tvalid => tvalid_newton3,
      s_axis_a_tdata(15 downto 0) => B"0011111111000000",
      s_axis_a_tready => NLW_u_newton3_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tvalid => '1',
      s_axis_b_tdata(15 downto 0) => data_newton2(15 downto 0),
      s_axis_b_tready => tready_newton2,
      s_axis_b_tvalid => tvalid_newton2
    );
u_newton4: component Layernorm_rms_norm_top_0_0_bf_mul_HD1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => \bbstub_m_axis_result_tdata[15]\(15 downto 0),
      m_axis_result_tready => top_ready,
      m_axis_result_tvalid => invsqrt_valid,
      s_axis_a_tdata(15 downto 0) => data_newton3(15 downto 0),
      s_axis_a_tready => tready_newton3,
      s_axis_a_tvalid => tvalid_newton3,
      s_axis_b_tdata(15 downto 0) => data2_align(15 downto 0),
      s_axis_b_tready => tready_align,
      s_axis_b_tvalid => tvalid_align
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0_inv_sqrt_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    s_axis_b_tvalid : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    data_ready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rms_ready : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_norm_top_0_0_inv_sqrt_top : entity is "inv_sqrt_top";
end Layernorm_rms_norm_top_0_0_inv_sqrt_top;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0_inv_sqrt_top is
  component Layernorm_rms_norm_top_0_0_bf_add is
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
  end component Layernorm_rms_norm_top_0_0_bf_add;
  signal align_valid : STD_LOGIC;
  signal ms_eps_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ms_eps_ready : STD_LOGIC;
  signal ms_eps_valid : STD_LOGIC;
  signal ms_ready : STD_LOGIC;
  signal top_ready : STD_LOGIC;
  signal u_inv_sqrt_n_16 : STD_LOGIC;
  signal NLW_u_epsilon_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_epsilon : label is "bf_add,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of u_epsilon : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of u_epsilon : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
u_epsilon: component Layernorm_rms_norm_top_0_0_bf_add
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => ms_eps_data(15 downto 0),
      m_axis_result_tready => ms_eps_ready,
      m_axis_result_tvalid => ms_eps_valid,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(15 downto 0),
      s_axis_a_tready => ms_ready,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => B"0011011100101000",
      s_axis_b_tready => NLW_u_epsilon_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tvalid => S_AXIS_TVALID
    );
u_inv_fifo: entity work.Layernorm_rms_norm_top_0_0_inv_fifo
     port map (
      Q(127 downto 0) => Q(127 downto 0),
      S_AXIS_TDATA(127 downto 0) => S_AXIS_TDATA(143 downto 16),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      data_ready(7 downto 0) => data_ready(7 downto 0),
      \m_axis_tvalid_reg[44]_0\(0) => align_valid,
      \m_axis_tvalid_reg[44]_1\ => u_inv_sqrt_n_16,
      rms_ready(7 downto 0) => rms_ready(7 downto 0),
      s_axis_a_tready => ms_ready,
      top_ready => top_ready
    );
u_inv_sqrt: entity work.Layernorm_rms_norm_top_0_0_inv_sqrt
     port map (
      \M_AXIS_TDATA[127]\(0) => align_valid,
      aclk => aclk,
      arstn => arstn,
      arstn_0 => u_inv_sqrt_n_16,
      \bbstub_m_axis_result_tdata[15]\(15 downto 0) => m_axis_result_tdata(15 downto 0),
      m_axis_result_tdata(15 downto 0) => ms_eps_data(15 downto 0),
      m_axis_result_tready => ms_eps_ready,
      m_axis_result_tvalid => ms_eps_valid,
      s_axis_b_tvalid => s_axis_b_tvalid,
      top_ready => top_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0_rms_norm_top is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Layernorm_rms_norm_top_0_0_rms_norm_top : entity is "rms_norm_top";
end Layernorm_rms_norm_top_0_0_rms_norm_top;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0_rms_norm_top is
  component Layernorm_rms_norm_top_0_0_bf_mul is
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
  end component Layernorm_rms_norm_top_0_0_bf_mul;
  signal M_AXIS_TVALID_INST_0_i_1_n_0 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal data_ready : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mul_valid : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rms_ready : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_valid : STD_LOGIC;
  signal u_inv_sqrt_top_n_128 : STD_LOGIC;
  signal u_inv_sqrt_top_n_129 : STD_LOGIC;
  signal u_inv_sqrt_top_n_130 : STD_LOGIC;
  signal u_inv_sqrt_top_n_131 : STD_LOGIC;
  signal u_inv_sqrt_top_n_132 : STD_LOGIC;
  signal u_inv_sqrt_top_n_133 : STD_LOGIC;
  signal u_inv_sqrt_top_n_134 : STD_LOGIC;
  signal u_inv_sqrt_top_n_135 : STD_LOGIC;
  signal u_inv_sqrt_top_n_136 : STD_LOGIC;
  signal u_inv_sqrt_top_n_137 : STD_LOGIC;
  signal u_inv_sqrt_top_n_138 : STD_LOGIC;
  signal u_inv_sqrt_top_n_139 : STD_LOGIC;
  signal u_inv_sqrt_top_n_140 : STD_LOGIC;
  signal u_inv_sqrt_top_n_141 : STD_LOGIC;
  signal u_inv_sqrt_top_n_142 : STD_LOGIC;
  signal u_inv_sqrt_top_n_143 : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[0].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[0].mul\ : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \mul_invsqrtrms[0].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[1].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[1].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[1].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[2].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[2].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[2].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[3].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[3].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[3].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[4].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[4].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[4].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[5].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[5].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[5].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[6].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[6].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[6].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \mul_invsqrtrms[7].mul\ : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \mul_invsqrtrms[7].mul\ : label is "yes";
  attribute X_CORE_INFO of \mul_invsqrtrms[7].mul\ : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
M_AXIS_TVALID_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => mul_valid(2),
      I1 => mul_valid(3),
      I2 => mul_valid(0),
      I3 => mul_valid(1),
      I4 => M_AXIS_TVALID_INST_0_i_1_n_0,
      O => M_AXIS_TVALID
    );
M_AXIS_TVALID_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => mul_valid(5),
      I1 => mul_valid(4),
      I2 => mul_valid(7),
      I3 => mul_valid(6),
      O => M_AXIS_TVALID_INST_0_i_1_n_0
    );
\mul_invsqrtrms[0].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(0),
      s_axis_a_tdata(15 downto 0) => data(15 downto 0),
      s_axis_a_tready => data_ready(0),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(0),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[1].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(31 downto 16),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(1),
      s_axis_a_tdata(15 downto 0) => data(31 downto 16),
      s_axis_a_tready => data_ready(1),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(1),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[2].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(47 downto 32),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(2),
      s_axis_a_tdata(15 downto 0) => data(47 downto 32),
      s_axis_a_tready => data_ready(2),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(2),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[3].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(63 downto 48),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(3),
      s_axis_a_tdata(15 downto 0) => data(63 downto 48),
      s_axis_a_tready => data_ready(3),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(3),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[4].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(79 downto 64),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(4),
      s_axis_a_tdata(15 downto 0) => data(79 downto 64),
      s_axis_a_tready => data_ready(4),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(4),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[5].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(95 downto 80),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(5),
      s_axis_a_tdata(15 downto 0) => data(95 downto 80),
      s_axis_a_tready => data_ready(5),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(5),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[6].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(111 downto 96),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(6),
      s_axis_a_tdata(15 downto 0) => data(111 downto 96),
      s_axis_a_tready => data_ready(6),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(6),
      s_axis_b_tvalid => top_valid
    );
\mul_invsqrtrms[7].mul\: component Layernorm_rms_norm_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(127 downto 112),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => mul_valid(7),
      s_axis_a_tdata(15 downto 0) => data(127 downto 112),
      s_axis_a_tready => data_ready(7),
      s_axis_a_tvalid => top_valid,
      s_axis_b_tdata(15) => u_inv_sqrt_top_n_128,
      s_axis_b_tdata(14) => u_inv_sqrt_top_n_129,
      s_axis_b_tdata(13) => u_inv_sqrt_top_n_130,
      s_axis_b_tdata(12) => u_inv_sqrt_top_n_131,
      s_axis_b_tdata(11) => u_inv_sqrt_top_n_132,
      s_axis_b_tdata(10) => u_inv_sqrt_top_n_133,
      s_axis_b_tdata(9) => u_inv_sqrt_top_n_134,
      s_axis_b_tdata(8) => u_inv_sqrt_top_n_135,
      s_axis_b_tdata(7) => u_inv_sqrt_top_n_136,
      s_axis_b_tdata(6) => u_inv_sqrt_top_n_137,
      s_axis_b_tdata(5) => u_inv_sqrt_top_n_138,
      s_axis_b_tdata(4) => u_inv_sqrt_top_n_139,
      s_axis_b_tdata(3) => u_inv_sqrt_top_n_140,
      s_axis_b_tdata(2) => u_inv_sqrt_top_n_141,
      s_axis_b_tdata(1) => u_inv_sqrt_top_n_142,
      s_axis_b_tdata(0) => u_inv_sqrt_top_n_143,
      s_axis_b_tready => rms_ready(7),
      s_axis_b_tvalid => top_valid
    );
u_inv_sqrt_top: entity work.Layernorm_rms_norm_top_0_0_inv_sqrt_top
     port map (
      Q(127 downto 0) => data(127 downto 0),
      S_AXIS_TDATA(143 downto 0) => S_AXIS_TDATA(143 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn,
      data_ready(7 downto 0) => data_ready(7 downto 0),
      m_axis_result_tdata(15) => u_inv_sqrt_top_n_128,
      m_axis_result_tdata(14) => u_inv_sqrt_top_n_129,
      m_axis_result_tdata(13) => u_inv_sqrt_top_n_130,
      m_axis_result_tdata(12) => u_inv_sqrt_top_n_131,
      m_axis_result_tdata(11) => u_inv_sqrt_top_n_132,
      m_axis_result_tdata(10) => u_inv_sqrt_top_n_133,
      m_axis_result_tdata(9) => u_inv_sqrt_top_n_134,
      m_axis_result_tdata(8) => u_inv_sqrt_top_n_135,
      m_axis_result_tdata(7) => u_inv_sqrt_top_n_136,
      m_axis_result_tdata(6) => u_inv_sqrt_top_n_137,
      m_axis_result_tdata(5) => u_inv_sqrt_top_n_138,
      m_axis_result_tdata(4) => u_inv_sqrt_top_n_139,
      m_axis_result_tdata(3) => u_inv_sqrt_top_n_140,
      m_axis_result_tdata(2) => u_inv_sqrt_top_n_141,
      m_axis_result_tdata(1) => u_inv_sqrt_top_n_142,
      m_axis_result_tdata(0) => u_inv_sqrt_top_n_143,
      rms_ready(7 downto 0) => rms_ready(7 downto 0),
      s_axis_b_tvalid => top_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Layernorm_rms_norm_top_0_0 is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Layernorm_rms_norm_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Layernorm_rms_norm_top_0_0 : entity is "Layernorm_rms_norm_top_0_0,rms_norm_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Layernorm_rms_norm_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Layernorm_rms_norm_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Layernorm_rms_norm_top_0_0 : entity is "rms_norm_top,Vivado 2024.2";
end Layernorm_rms_norm_top_0_0;

architecture STRUCTURE of Layernorm_rms_norm_top_0_0 is
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
  attribute X_INTERFACE_PARAMETER of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TDATA : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.Layernorm_rms_norm_top_0_0_rms_norm_top
     port map (
      M_AXIS_TDATA(127 downto 0) => M_AXIS_TDATA(127 downto 0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(143 downto 0) => S_AXIS_TDATA(143 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn
    );
end STRUCTURE;
