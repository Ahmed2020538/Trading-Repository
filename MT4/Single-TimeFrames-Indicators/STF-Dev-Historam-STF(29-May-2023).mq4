//+------------------------------------------------------------------+
//|                                  Devs_Overs_Sindle Timeframe.mq4 |
//|                        Copyright 2022, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//--------------------------------------------------------------------
//=========================================================================================================================================================================================================================================
//=========================================================================================================================================================================================================================================
                           /*
                           
                              There are some Noties Relared our Indictors data ::
                              //-------------------------------------------------
                              
                                 [1] - When we need to Fit Higher TF indicator in Low Time frame, we must  calculatedivide Higher TF on the Low TF or (Tf \ current TF).
                                 [2] - when we need to Fit Higher Tf indicator in lower timeframe , we must use some built in function such as (iBars func) for drawing 
                                       we use stander indixing and set shiffting values of iBar func as shifiting values as MTFDev, MTFDev1,MTFDev2 and MTFDev3
                                 [3] - But For use that in calculation we must assess alon of hihger tf in lower tf and applied our calvulation on it and
                                       make its effected on one sindgle bars at one single mine or 5 mis or other as we make to get Plot Histogram and Signale Histogram.
                                 [4] - over I created that version i consider some issues to calculeted values of MA and FP over multiple timeframes.


                        */
//=========================================================================================================================================================================================================================================
//=========================================================================================================================================================================================================================================
//=========================================================================================================================================================================================================================================
#property copyright   "© 2023, Ahmad Elsayed"
#property description "Dev over Single Timeframe"
#property link        "https://www.mql5.com"
#property version     "1.00"
//-------------------------------------------   
#include <MovingAverages.mqh>
#property indicator_separate_window
//-------------------------------------------
// num of Buffers::
#property indicator_buffers 84

//-------------------------------------------
#property indicator_color1 clrPurple
#property indicator_type1  DRAW_NONE
#property indicator_width1 2
#property indicator_label1 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color2 clrPurple
#property indicator_type2  DRAW_NONE
#property indicator_width2 2
#property indicator_label2 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color3 clrPurple
#property indicator_type3  DRAW_NONE
#property indicator_width3 2
#property indicator_label3 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color4 clrPurple
#property indicator_type4  DRAW_NONE
#property indicator_width4 2
#property indicator_label4 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color5 clrPurple
#property indicator_type5  DRAW_NONE
#property indicator_width5 2
#property indicator_label5 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color6 clrPurple
#property indicator_type6  DRAW_NONE
#property indicator_width6 2
#property indicator_label6 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color7 clrPurple
#property indicator_type7  DRAW_NONE
#property indicator_width7 2
#property indicator_label7 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color8 clrPurple
#property indicator_type8  DRAW_NONE
#property indicator_width8 2
#property indicator_label8 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color9 clrPurple
#property indicator_type9  DRAW_NONE
#property indicator_width9 2
#property indicator_label9 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color10 clrPurple
#property indicator_type10  DRAW_NONE
#property indicator_width10 2
#property indicator_label10 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color11 clrPurple
#property indicator_type11  DRAW_NONE
#property indicator_width11 2
#property indicator_label11 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color12 clrPurple
#property indicator_type12  DRAW_NONE
#property indicator_width12 2
#property indicator_label12 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color13 clrPurple
#property indicator_type13  DRAW_NONE
#property indicator_width13 2
#property indicator_label13 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color14 clrPurple
#property indicator_type14  DRAW_NONE
#property indicator_width14 2
#property indicator_label14 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color15 clrPurple
#property indicator_type15  DRAW_NONE
#property indicator_width15 2
#property indicator_label15 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color16 clrPurple
#property indicator_type16  DRAW_NONE
#property indicator_width16 2
#property indicator_label16 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color17 clrPurple
#property indicator_type17  DRAW_NONE
#property indicator_width17 2
#property indicator_label17 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color18 clrPurple
#property indicator_type18  DRAW_NONE
#property indicator_width18 2
#property indicator_label18 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color19 clrPurple
#property indicator_type19  DRAW_NONE
#property indicator_width19 2
#property indicator_label19 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color20 clrPurple
#property indicator_type20  DRAW_NONE
#property indicator_width20 2
#property indicator_label20 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color21 clrPurple
#property indicator_type21  DRAW_NONE
#property indicator_width21 2
#property indicator_label21 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color22 clrPurple
#property indicator_type22  DRAW_NONE
#property indicator_width22 2
#property indicator_label22 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color23 clrPurple
#property indicator_type23  DRAW_NONE
#property indicator_width23 2
#property indicator_label23 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color24 clrPurple
#property indicator_type24  DRAW_NONE
#property indicator_width24 2
#property indicator_label24 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color25 clrPurple
#property indicator_type25  DRAW_NONE
#property indicator_width25 2
#property indicator_label25 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color26 clrPurple
#property indicator_type26  DRAW_NONE
#property indicator_width26 2
#property indicator_label26 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color27 clrPurple
#property indicator_type27  DRAW_NONE
#property indicator_width27 2
#property indicator_label27 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color28 clrPurple
#property indicator_type28  DRAW_NONE
#property indicator_width28 2
#property indicator_label28 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color29 clrPurple
#property indicator_type29  DRAW_NONE
#property indicator_width29 2
#property indicator_label29 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color30 clrPurple
#property indicator_type30  DRAW_NONE
#property indicator_width30 2
#property indicator_label30 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color31 clrPurple
#property indicator_type31  DRAW_NONE
#property indicator_width31 2
#property indicator_label31 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color32 clrPurple
#property indicator_type32  DRAW_NONE
#property indicator_width32 2
#property indicator_label32 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color33 clrPurple
#property indicator_type33  DRAW_NONE
#property indicator_width33 2
#property indicator_label33 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color34 clrPurple
#property indicator_type34  DRAW_NONE
#property indicator_width34 2
#property indicator_label34 ""
//--------------------------------------------
//--------------------------------------------

#property indicator_color35 clrPurple
#property indicator_type35  DRAW_NONE
#property indicator_width35 2
#property indicator_label35 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color36 clrPurple
#property indicator_type36  DRAW_NONE
#property indicator_width36 2
#property indicator_label36 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color37 clrPurple
#property indicator_type37  DRAW_NONE
#property indicator_width37 2
#property indicator_label37 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color38 clrPurple
#property indicator_type38  DRAW_NONE
#property indicator_width38 2
#property indicator_label38 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color39 clrPurple
#property indicator_type39  DRAW_NONE
#property indicator_width39 2
#property indicator_label39 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color40 clrPurple
#property indicator_type40  DRAW_NONE
#property indicator_width40 2
#property indicator_label40 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color41 clrPurple
#property indicator_type41  DRAW_NONE
#property indicator_width41 2
#property indicator_label41 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color42 clrPurple
#property indicator_type42  DRAW_NONE
#property indicator_width42 2
#property indicator_label42 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color43 clrPurple
#property indicator_type43  DRAW_NONE
#property indicator_width43 2
#property indicator_label43 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color44 clrPurple
#property indicator_type44  DRAW_NONE
#property indicator_width44 2
#property indicator_label44 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color45 clrPurple
#property indicator_type45  DRAW_NONE
#property indicator_width45 2
#property indicator_label45 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color46 clrPurple
#property indicator_type46  DRAW_NONE
#property indicator_width46 2
#property indicator_label46 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color47 clrPurple
#property indicator_type47  DRAW_NONE
#property indicator_width47 2
#property indicator_label47 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color48 clrPurple
#property indicator_type48  DRAW_NONE
#property indicator_width48 2
#property indicator_label48 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color49 clrPurple
#property indicator_type49  DRAW_NONE
#property indicator_width49 2
#property indicator_label49 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color50 clrPurple
#property indicator_type50  DRAW_NONE
#property indicator_width50 2
#property indicator_label50 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color51 clrPurple
#property indicator_type51  DRAW_NONE
#property indicator_width51 2
#property indicator_label51 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color52 clrPurple
#property indicator_type52  DRAW_NONE
#property indicator_width52 2
#property indicator_label52 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color53 clrPurple
#property indicator_type53  DRAW_NONE
#property indicator_width53 2
#property indicator_label53 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color54 clrPurple
#property indicator_type54  DRAW_NONE
#property indicator_width54 2
#property indicator_label54 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color55 clrPurple
#property indicator_type55  DRAW_NONE
#property indicator_width55 2
#property indicator_label55 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color56 clrPurple
#property indicator_type56  DRAW_NONE
#property indicator_width56 2
#property indicator_label56 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color57 clrPurple
#property indicator_type57  DRAW_NONE
#property indicator_width57 2
#property indicator_label57 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color58 clrPurple
#property indicator_type58  DRAW_NONE
#property indicator_width58 2
#property indicator_label58 ""
//--------------------------------------------
//--------------------------------------------
#property indicator_color59 clrPurple
#property indicator_type59  DRAW_NONE
#property indicator_width59 2
#property indicator_label59 ""
//--------------------------------------------
//--------------------------------------------

#property indicator_color60 clrPurple
#property indicator_type60  DRAW_NONE
#property indicator_width60 2
#property indicator_label60 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color61 clrYellow
#property indicator_type61  DRAW_NONE
#property indicator_width61 2
#property indicator_label61 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color62 clrYellow
#property indicator_type62  DRAW_NONE
#property indicator_width62 2
#property indicator_label62 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color63 clrYellow
#property indicator_type63  DRAW_NONE
#property indicator_width63 2
#property indicator_label63 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color64 clrYellow
#property indicator_type64  DRAW_NONE
#property indicator_width64 2
#property indicator_label64 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color65 clrYellow
#property indicator_type65  DRAW_NONE
#property indicator_width65 2
#property indicator_label65 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color66 clrYellow
#property indicator_type66  DRAW_NONE
#property indicator_width66 2
#property indicator_label66 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color67 clrYellow
#property indicator_type67  DRAW_NONE
#property indicator_width67 2
#property indicator_label67 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color68 clrYellow
#property indicator_type68 DRAW_NONE
#property indicator_width68 2
#property indicator_label68 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color69 clrYellow
#property indicator_type69  DRAW_NONE
#property indicator_width69 2
#property indicator_label69 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color70 clrYellow
#property indicator_type70  DRAW_NONE
#property indicator_width70 2
#property indicator_label70 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color71 clrYellow
#property indicator_type71  DRAW_NONE
#property indicator_width71 2
#property indicator_label71 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color72 clrYellow
#property indicator_type72  DRAW_NONE
#property indicator_width72 2
#property indicator_label72 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color73 clrYellow
#property indicator_type73  DRAW_NONE
#property indicator_width73 2
#property indicator_label73 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color74 clrYellow
#property indicator_type74  DRAW_NONE
#property indicator_width74 2
#property indicator_label74 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color75 clrYellow
#property indicator_type75  DRAW_NONE
#property indicator_width75 2
#property indicator_label75 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color76 clrYellow
#property indicator_type76  DRAW_NONE
#property indicator_width76 2
#property indicator_label76 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color77 clrYellow
#property indicator_type77  DRAW_NONE
#property indicator_width77 2
#property indicator_label77 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color78 clrYellow
#property indicator_type78  DRAW_NONE
#property indicator_width78 2
#property indicator_label78 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color79 clrYellow
#property indicator_type79  DRAW_NONE
#property indicator_width79 2
#property indicator_label79 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color80 clrYellow
#property indicator_type80  DRAW_NONE
#property indicator_width80 2
#property indicator_label80 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color81 clrYellow
#property indicator_type81  DRAW_NONE
#property indicator_width81 2
#property indicator_label81 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color82 clrYellow
#property indicator_type82  DRAW_NONE
#property indicator_width82 2
#property indicator_label82 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color83 clrYellow
#property indicator_type83  DRAW_NONE
#property indicator_width83 2
#property indicator_label83 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color84 clrYellow
#property indicator_type84  DRAW_NONE
#property indicator_width84 2
#property indicator_label84 ""
//-------------------------------------------
//-------------------------------------------
/*
#property indicator_color85 clrYellow
#property indicator_type85  DRAW_NONE
#property indicator_width85 2
#property indicator_label85 ""

//-------------------------------------------
//-------------------------------------------
#property indicator_color86 clrYellow
#property indicator_type86  DRAW_NONE
#property indicator_width86 2
#property indicator_label86 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color87 clrYellow
#property indicator_type87  DRAW_NONE
#property indicator_width87 2
#property indicator_label87 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color88 clrYellow
#property indicator_type88  DRAW_NONE
#property indicator_width88 2
#property indicator_label88 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color89 clrYellow
#property indicator_type89  DRAW_NONE
#property indicator_width89 2
#property indicator_label89 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color90 clrYellow
#property indicator_type90  DRAW_NONE
#property indicator_width90 2
#property indicator_label90 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color91 clrYellow
#property indicator_type91  DRAW_NONE
#property indicator_width91 2
#property indicator_label91 ""
//-------------------------------------------
//-------------------------------------------

#property indicator_color92 clrYellow
#property indicator_type92  DRAW_NONE
#property indicator_width92 2
#property indicator_label92 ""

//-------------------------------------------
//-------------------------------------------
#property indicator_color93 clrYellow
#property indicator_type93  DRAW_NONE
#property indicator_width93 2
#property indicator_label93 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color94 clrYellow
#property indicator_type94  DRAW_NONE
#property indicator_width94 2
#property indicator_label94 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color95 clrYellow
#property indicator_type95  DRAW_NONE
#property indicator_width95 2
#property indicator_label95 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color96 clrYellow
#property indicator_type96  DRAW_NONE
#property indicator_width96 2
#property indicator_label96 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color97 clrYellow
#property indicator_type97  DRAW_NONE
#property indicator_width97 2
#property indicator_label97 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color98 clrYellow
#property indicator_type98  DRAW_NONE
#property indicator_width98 2
#property indicator_label98 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color99 clrYellow
#property indicator_type99  DRAW_NONE
#property indicator_width99 2
#property indicator_label99 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color100 clrYellow
#property indicator_type100  DRAW_NONE
#property indicator_width100 2
#property indicator_label100 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color101 clrYellow
#property indicator_type101  DRAW_NONE
#property indicator_width101 2
#property indicator_label101 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color102 clrYellow
#property indicator_type102  DRAW_NONE
#property indicator_width102 2
#property indicator_label102 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color103 clrYellow
#property indicator_type103  DRAW_NONE
#property indicator_width103 2
#property indicator_label103 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color104 clrYellow
#property indicator_type104  DRAW_NONE
#property indicator_width104 2
#property indicator_label104 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color105 clrYellow
#property indicator_type105  DRAW_NONE
#property indicator_width105 2
#property indicator_label105 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color106 clrYellow
#property indicator_type106  DRAW_NONE
#property indicator_width106 2
#property indicator_label106 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color107 clrYellow
#property indicator_type107  DRAW_NONE
#property indicator_width107 2
#property indicator_label107 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color108 clrYellow
#property indicator_type108  DRAW_NONE
#property indicator_width108 2
#property indicator_label108 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color109 clrYellow
#property indicator_type109  DRAW_NONE
#property indicator_width109 2
#property indicator_label109 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color110 clrYellow
#property indicator_type110  DRAW_NONE
#property indicator_width110 2
#property indicator_label110 ""
//-------------------------------------------
//--------------------------------------------
#property indicator_color111 clrYellow
#property indicator_type111  DRAW_NONE
#property indicator_width111 2
#property indicator_label111 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color112 clrYellow
#property indicator_type112  DRAW_NONE
#property indicator_width112 2
#property indicator_label112 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color113 clrYellow
#property indicator_type113  DRAW_LINE
#property indicator_width113 2
#property indicator_label113 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color114 clrYellow
#property indicator_type114  DRAW_NONE
#property indicator_width114 2
#property indicator_label114 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color115 clrYellow
#property indicator_type115  DRAW_NONE
#property indicator_width115 2
#property indicator_label115 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color116 clrYellow
#property indicator_type116  DRAW_NONE
#property indicator_width116 2
#property indicator_label116 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color117 clrYellow
#property indicator_type117  DRAW_NONE
#property indicator_width117 2
#property indicator_label117 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color118 clrYellow
#property indicator_type118  DRAW_LINE
#property indicator_width118 2
#property indicator_label118 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color119 clrYellow
#property indicator_type119  DRAW_NONE
#property indicator_width119 2
#property indicator_label119 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color120 clrYellow
#property indicator_type120  DRAW_NONE
#property indicator_width120 2
#property indicator_label120 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color121 clrYellow
#property indicator_type121  DRAW_NONE
#property indicator_width121 2
#property indicator_label121 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color122 clrYellow
#property indicator_type122  DRAW_NONE
#property indicator_width122 2
#property indicator_label122 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color123 clrYellow
#property indicator_type123  DRAW_NONE
#property indicator_width123 2
#property indicator_label123 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color124 clrYellow
#property indicator_type124  DRAW_NONE
#property indicator_width124 2
#property indicator_label124 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color125 clrYellow
#property indicator_type125  DRAW_NONE
#property indicator_width125 2
#property indicator_label125 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color126 clrYellow
#property indicator_type126  DRAW_NONE
#property indicator_width126 2
#property indicator_label126 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color127 clrYellow
#property indicator_type127  DRAW_NONE
#property indicator_width127 2
#property indicator_label127 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color128 clrYellow
#property indicator_type128  DRAW_NONE
#property indicator_width128 2
#property indicator_label128 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color129 clrYellow
#property indicator_type129  DRAW_NONE
#property indicator_width129 2
#property indicator_label129 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color130 clrYellow
#property indicator_type130  DRAW_NONE
#property indicator_width130 2
#property indicator_label130 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color131 clrYellow
#property indicator_type131  DRAW_NONE
#property indicator_width131 2
#property indicator_label131 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color132 clrYellow
#property indicator_type132  DRAW_NONE
#property indicator_width132 2
#property indicator_label132 ""

//-------------------------------------------
//-------------------------------------------
#property indicator_color133 clrYellow
#property indicator_type133  DRAW_NONE
#property indicator_width133 2
#property indicator_label133 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color134 clrYellow
#property indicator_type134  DRAW_NONE
#property indicator_width134 2
#property indicator_label134 ""


//-------------------------------------------
//-------------------------------------------
#property indicator_color135 clrYellow
#property indicator_type135  DRAW_NONE
#property indicator_width135 2
#property indicator_label135 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color136 clrYellow
#property indicator_type136  DRAW_NONE
#property indicator_width136 2
#property indicator_label136 ""
//-------------------------------------------
//-------------------------------------------

#property indicator_color137 clrYellow
#property indicator_type137  DRAW_NONE
#property indicator_width137 2
#property indicator_label137 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color138 clrYellow
#property indicator_type138  DRAW_NONE
#property indicator_width138 2
#property indicator_label138 ""
//-------------------------------------------
//-------------------------------------------
#property indicator_color139 clrYellow
#property indicator_type139  DRAW_NONE
#property indicator_width139 2
#property indicator_label139 ""
//-------------------------------------------
//-------------------------------------------
*/
//===================================================================================================================
//===================================================================================================================
//===================================================================================================================
//+------------------------------------------------------------------+
//|       Function include all MAs and Return its value              |
//+------------------------------------------------------------------+
// func return Mas values
double MAsSwitchCases(int MAscases ,int MAsAppliedPrice,int MasPeriod , double HMAsBuf[] ,int i)
  {

   double MAs_Values = 0;
   switch(MAscases)
     {
      case 0:
        {
         MAs_Values  = iMA(NULL, 0, MasPeriod , 0, MODE_SMA , MAsAppliedPrice , i);
         break;
        }
      case 1:
        {
         MAs_Values = iMA(NULL, 0, MasPeriod , 0, MODE_EMA , MAsAppliedPrice , i);
         break;
        }
      case 2:
        {
         MAs_Values = iMA(NULL, 0, MasPeriod , 0, MODE_SMMA , MAsAppliedPrice , i);
         break;
        }
      case 3:
        {
         MAs_Values = iMA(NULL, 0, MasPeriod , 0, MODE_LWMA , MAsAppliedPrice , i);
         break;
        }
      case 4:
        {
         MAs_Values = HMAsBuf[i];
         break;
        } 
        
     }

   return MAs_Values;
  }
//===================================================================================================================
//===================================================================================================================
// func return Devs Mas values
double MAsdevsSwitchCases(int MAsdevcases ,int MasdevPeriod ,double datadevBuf[] ,  double HMAsdevBuf[] ,int s)
  {

   double devMAs_Values = 0;
   switch(MAsdevcases)
     {
      case 0:
        {
         devMAs_Values  = iMAOnArray(datadevBuf, Bars, MasdevPeriod,0,MODE_SMA, s);  // iMA(NULL, 0, MAs_Period , 0, MODE_SMA , MAs_Price , i);
         break;
        }
      case 1:
        {
         devMAs_Values = iMAOnArray(datadevBuf, Bars, MasdevPeriod,0,MODE_EMA, s); //iMA(NULL, 0, MAs_Period , 0, MODE_EMA , MAs_Price , s);
         break;
        }
      case 2:
        {
         devMAs_Values = iMAOnArray(datadevBuf, Bars, MasdevPeriod,0,MODE_SMMA, s);//iMA(NULL, 0, MAs_Period , 0, MODE_SMMA , MAs_Price , i);
         break;
        }
      case 3:
        {
         devMAs_Values = iMAOnArray(datadevBuf, Bars, MasdevPeriod,0,MODE_LWMA, s);//iMA(NULL, 0, MAs_Period , 0, MODE_LWMA , MAs_Price , i);
         break;
        }
      case 4:
        {
         devMAs_Values = HMAsdevBuf[s];
         break;
        } 
        
     }

   return devMAs_Values;
  }
//===================================================================================================================
//===================================================================================================================
//+------------------------------------------------------------------+
//| Func return Field Prices Values of current Periodicity           |
//+------------------------------------------------------------------+
/*
   we must take on our considration :
      - when we use FP[i]] func its return the FP of current Chart TF .
*/
double CalculateFieldPrice(int AppliedPrice, int i)
  {

   double FieldPrice;
   switch(AppliedPrice)
     {
      case 0:
        {
         FieldPrice=Close[i];
         break;
        }
      case 1:
        {
         FieldPrice=Open[i];
         break;
        }
      case 2:
        {
         FieldPrice=High[i];
         break;
        }
      case 3:
        {
         FieldPrice=Low[i];
         break;
        }
     }

   return FieldPrice;
  }

//===================================================================================================================
//===================================================================================================================
//===================================================================================================================

// drop down list for slope cases
//--------------------------------
enum SlopeCases                 
                                
  {
   As_Previous_Slope_Colour               = 0,    //As Previous Slope Colour
   As_Next_Slope_Colour                   = 1,   //As Next Slope Colour
   Independent_of_Previous_or_Next_Colour = 2,  //Independent of Previous or Next Colour
  };

// drop down list for Hist Type
//-----------------------------
enum Hist_Type
  {
   HistHist     = DRAW_HISTOGRAM,   //Dev_Histogram   
   HistLine     = DRAW_LINE,       //Dev_Line
   HistHidden   = DRAW_NONE,      //Dev_Hidden
  };
//-------------------------------
//-------------------------------
// drop down list for dot location 
//--------------------------------
enum dotsPlacement
  {
   on_Hist1    =0,     //On Signal Hist
   on_MAsHist1 =1,    //On MAs Signal Hist
   on_MAs1Hist1=2,   //On MAs1 signal Hist
   on_MAs2Hist1=3,  //On MAs2 signal Hist
   on_MAs3Hist1=4, //On MAs3 signal Hist
  };
//-------------------------------
//-------------------------------
// drop down list for line style
//-------------------------------
enum linesstyle
  {
   Lines  = DRAW_LINE,   //Lines   
   Hidden = DRAW_NONE   //Hidden
  };
//-------------------------------
//-------------------------------
// drop down list for line Type
//-----------------------------
enum linestypes
  {
   Line  = STYLE_SOLID,    //SOLID   
   Dots  = STYLE_DOT,     //DOT
   Dachs = STYLE_DASH,   //DASH
  };
  
//-------------------------------
//-------------------------------
// drop down list for Devs selection
//----------------------------------
enum DevsChoice
  {
   Dev  =0,      //Dev 
   Dev1 =1,     //Dev1 
   Dev2 =2,    //Dev2 
   Dev3 =3,   //Dev3 
  };

//-------------------------------
//-------------------------------
// drop down list for MAs Types
//-----------------------------
enum MAs
  {
   Simple         = 0,     
   Exponential    = 1,   
   Smoothed       = 2, 
   LinearWeighted = 3,
   Hull           = 4,
   
   };
   
//-------------------------------
//-------------------------------
// drop down list for Hist selection
//----------------------------------
enum MAsHistsChoice
  {
   Hist  =0,      //On Plot Hist 
   Hist1 =1,     //On Signal Hist 
 
  };
  
//-------------------------------
//-------------------------------
// drop down list for BB Data selection
//-------------------------------------
enum BBHistsChoice
  {
   onHist     =0,            //On Plot Hist 
   onHist1    =1,           //On Signal Hist 
   onMASHist  =2,          //On MAS Plot Hist
   onMAS1Hist =3,         //On MAS1 Plot Hist
   onMAS2Hist =4,        //On MAS2 Plot Hist
   onMAS3Hist =5,       //On MAS3 Plot Hist
   onMASHist1 =6,      //On MAs Signal Hist
   onMAS1Hist1=7,     //On MAs1 Signal Hist 
   onMAS2Hist1=8,    //On MAs2 Signal Hist
   onMAS3Hist1=9,   //On MAs3 Signal Hist
 
  };
  
//-------------------------------
//-------------------------------

// drop down list for Options selection
//-------------------------------------
enum UseCases
  {
   SignalHistWithMAsSignalHist                  =0,    
   SignalHistWithMAs1SignalHist                 =1,
   SignalHistWithMAsSignalHistandMAs1SignalHist =2,
   MAsSignalHistWithMAs1SignalHist              =3,
   MAsSignalHistWithMAsPlotHist                 =4, 
   MAsSignalHistWithMAs1PlotHist                =5,
   
   SignalHistWithMAs2SignalHist                 =6,
   SignalHistWithMAs3SignalHist                 =7,
   
   SignalHistWithUpperBand                      =8,
   SignalHistWithLowerBand                      =9,
   
  };
//-------------------------------
//-------------------------------
//===================================================================================================================
//===================================================================================================================
//input string plottingPart = "---------------------------------------------------";

input string        DotsParam             = "---------------------------------------------------";
input bool          AutoRefreshDots       = False;
input bool          Dots_Activation       = False;
input bool          Show_Data_Window      = False;
input UseCases      Options               = 0;
input dotsPlacement DotsCurve             = on_Hist1;
input SlopeCases    Zero_Slope_Colour     = As_Next_Slope_Colour;
input color         DotsUPClr             = clrRed;    
input color         DotsDownClr           = clrYellow;   
input int           DotsWidth             = 0;

//-----------------------------------------------------
//-----------------------------------------------------
// 1st Dev paramters::
//--------------------
input  string             DevPlotHistParam          = "---------------------------------------------------";     
input  ENUM_APPLIED_PRICE DevPlotHistPrice          = 0;
input  ENUM_APPLIED_PRICE DevPlotHistMAAppliedPrice = 0;
input  MAs                DevPlotHistMAMethod       = Simple;
input  int                DevPlotHistMAPeriod       = 20;   

input  Hist_Type          DevPlotHistType       = HistHidden;
input  ENUM_LINE_STYLE    DevPlotHistStyle          = 0;   
input  color              DevPlotHistUPClr          = clrGreen;     
input  color              DevPlotHistDownClr        = clrRed;
input  linesstyle         DevPlotHistZeroType       = Hidden;  
input  ENUM_LINE_STYLE    DevPlotHistZeroStyle      = 0; 
input  color              DevPlotHistZeroClr        = clrGold;
input  int                DevPlotHistWidth          = 1;


//-----------------------------------------------------
//-----------------------------------------------------
// 2nd Dev paramters::
//--------------------
input  string             DevSignalHistParam          = "---------------------------------------------------";     
input  ENUM_APPLIED_PRICE DevSignalHistPrice          = 0;
input  ENUM_APPLIED_PRICE DevSignalHistMAAppliedPrice = 0;
input  MAs                DevSignalHistMAMethod       = Simple;
input  int                DevSignalHistMAPeriod       = 20;   

input  Hist_Type          DevSignalHistType           = HistHidden;
input  ENUM_LINE_STYLE    DevSignalHistStyle          = 0;   
input  color              DevSignalHistUPClr          = clrGreen;     
input  color              DevSignalHistDownClr        = clrRed;
input  linesstyle         DevSignalHistZeroType       = Hidden;  
input  ENUM_LINE_STYLE    DevSignalHistZeroStyle      = 0; 
input  color              DevSignalHistZeroClr        = clrGold;
input  int                DevSignalHistWidth          = 1;
//-----------------------------------------------------
//-----------------------------------------------------
// MA on Hist input param::
//-------------------------
input string             MAsPlotHistParam           = "---------------------------------------------------";  
//input bool               MTFMAsPlotHist                = False; 
input MAsHistsChoice     MAsPlotHistDataChoice      = 0;  
input MAs                MAsPlotHistMethod          = Simple;     
input int                MAsPlotHistPeriod          = 5;     
input linesstyle         MAsPlotHistType            = Hidden;  
input ENUM_LINE_STYLE    MAsPlotHistStyle           = 0; 
input color              MAsPlotHistUPClr           = clrGreen;     
input color              MAsPlotHistDownClr         = clrRed;
input linesstyle         MAsPlotHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAsPlotHistSlopeZeroStyle  = 0;    
input color              MAsPlotHistSlopeZeroClr    = clrGold;
input int                MAsPlotHistWidth           = 1;
//-----------------------------------------------------
//-----------------------------------------------------  
// MA1 on Hist input param::
//--------------------------
input string             MAs1PlotHistParam           = "---------------------------------------------------";    
//input bool               MTFMAs1PlotHist                = False; 
input MAsHistsChoice     MAs1PlotHistDataChoice      = 0;
input MAs                MAs1PlotHistMethod          = Simple; 
input int                MAs1PlotHistPeriod          = 10;     
input linesstyle         MAs1PlotHistType            = Hidden; 
input ENUM_LINE_STYLE    MAs1PlotHistStyle           = 0; 
input color              MAs1PlotHistUPClr           = clrGreen;     
input color              MAs1PlotHistDownClr         = clrRed;
input linesstyle         MAs1PlotHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAs1PlotHistSlopeZeroStyle  = 0;    
input color              MAs1PlotHistSlopeZeroClr    = clrGold;
input int                MAs1PlotHistWidth           = 1;
//-----------------------------------------------------
//-----------------------------------------------------
//*********************************************************
// MA2 on Hist input param::
//--------------------------
input string             MAs2PlotHistParam           = "---------------------------------------------------";    
//input bool               MTFMAs2PlotHist                = False; 
input MAsHistsChoice     MAs2PlotHistDataChoice      = 0;
input MAs                MAs2PlotHistMethod          = Simple; 
input int                MAs2PlotHistPeriod          = 10;     
input linesstyle         MAs2PlotHistType            = Hidden; 
input ENUM_LINE_STYLE    MAs2PlotHistStyle           = 0; 
input color              MAs2PlotHistUPClr           = clrGreen;     
input color              MAs2PlotHistDownClr         = clrRed;
input linesstyle         MAs2PlotHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAs2PlotHistSlopeZeroStyle  = 0;    
input color              MAs2PlotHistSlopeZeroClr    = clrGold;
input int                MAs2PlotHistWidth           = 1;
//-----------------------------------------------------
//-----------------------------------------------------
// MA3 on Hist input param::
//--------------------------
input string             MAs3PlotHistParam           = "---------------------------------------------------";    
//input bool               MTFMAs3PlotHist                = False; 
input MAsHistsChoice     MAs3PlotHistDataChoice      = 0;
input MAs                MAs3PlotHistMethod          = Simple; 
input int                MAs3PlotHistPeriod          = 10;     
input linesstyle         MAs3PlotHistType            = Hidden; 
input ENUM_LINE_STYLE    MAs3PlotHistStyle           = 0; 
input color              MAs3PlotHistUPClr           = clrGreen;     
input color              MAs3PlotHistDownClr         = clrRed;
input linesstyle         MAs3PlotHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAs3PlotHistSlopeZeroStyle  = 0;    
input color              MAs3PlotHistSlopeZeroClr    = clrGold;
input int                MAs3PlotHistWidth           = 1;
//-----------------------------------------------------
//-----------------------------------------------------
//**************************************************************************************
// MA on Hist1 input param::
//--------------------------
input string             MAsSignalHistParam           = "---------------------------------------------------";
//input bool               MTFMAsSignalHist                = False;
input MAsHistsChoice     MAsSignalHistDataChoice      = 0;
input MAs                MAsSignalHistMethod          = Simple;  
input int                MAsSignalHistPeriod          = 5;    
input linesstyle         MAsSignalHistType            = Hidden; 
input ENUM_LINE_STYLE    MAsSignalHistStyle           = 0;  
input color              MAsSignalHistUPClr           = clrGreen;    
input color              MAsSignalHistDownClr         = clrRed;
input linesstyle         MAsSignalHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAsSignalHistSlopeZeroStyle  = 0;    
input color              MAsSignalHistSlopeZeroClr    = clrGold;
input int                MAsSignalHistWidth           = 1;
//-------------------------------------------------
//-------------------------------------------------
// MA1 on Hist1 input param::
//---------------------------
input string             MAs1SignalHistParam          = "---------------------------------------------------";    
//input bool               MTFMAs1SignalHist               = False;
input MAsHistsChoice     MAs1SignalHistDataChoice     = 0;
input MAs                MAs1SignalHistMethod         = Simple;
input int                MAs1SignalHistPeriod         = 10;     
input linesstyle         MAs1SignalHistType           = Hidden;   
input ENUM_LINE_STYLE    MAs1SignalHistStyle          = 0;
input color              MAs1SignalHistUPClr          = clrGreen;  
input color              MAs1SignalHistDownClr        = clrRed; 
input linesstyle         MAs1SignalHistSlopeZeroType  = Hidden;  
input ENUM_LINE_STYLE    MAs1SignalHistSlopeZeroStyle = 0;    
input color              MAs1SignalHistSlopeZeroClr   = clrGold;
input int                MAs1SignalHistWidth          = 1;
//-----------------------------------------------------
//-----------------------------------------------------
// MA2 on Hist1 input param::
//--------------------------
input string             MAs2SignalHistParam           = "---------------------------------------------------";
//input bool               MTFMAs2SignalHist                = False;
input MAsHistsChoice     MAs2SignalHistDataChoice      = 0;
input MAs                MAs2SignalHistMethod          = Simple;  
input int                MAs2SignalHistPeriod          = 5;    
input linesstyle         MAs2SignalHistType            = Hidden; 
input ENUM_LINE_STYLE    MAs2SignalHistStyle           = 0;  
input color              MAs2SignalHistUPClr           = clrGreen;    
input color              MAs2SignalHistDownClr         = clrRed;
input linesstyle         MAs2SignalHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAs2SignalHistSlopeZeroStyle  = 0;    
input color              MAs2SignalHistSlopeZeroClr    = clrGold;
input int                MAs2SignalHistWidth           = 1;
//-------------------------------------------------
//-------------------------------------------------

// MA3 on Hist1 input param::
//--------------------------
input string             MAs3SignalHistParam           = "---------------------------------------------------";
//input bool               MTFMAs3SignalHist                = False;
input MAsHistsChoice     MAs3SignalHistDataChoice      = 0;
input MAs                MAs3SignalHistMethod          = Simple;  
input int                MAs3SignalHistPeriod          = 5;    
input linesstyle         MAs3SignalHistType            = Hidden; 
input ENUM_LINE_STYLE    MAs3SignalHistStyle           = 0;  
input color              MAs3SignalHistUPClr           = clrGreen;    
input color              MAs3SignalHistDownClr         = clrRed;
input linesstyle         MAs3SignalHistSlopeZeroType   = Hidden;  
input ENUM_LINE_STYLE    MAs3SignalHistSlopeZeroStyle  = 0;    
input color              MAs3SignalHistSlopeZeroClr    = clrGold;
input int               MAs3SignalHistWidth           = 1;
//-------------------------------------------------
//-------------------------------------------------
//***************************************************************
input string          BollingerBandsParameters   = "---------------------------------------------------";
input BBHistsChoice   BBDataChoice               = 0;
input ENUM_MA_METHOD  BBMAMethod                 = 0;
input int             BBMAPeriod                 = 10;
input double          BBWidth                    = 2;
input linesstyle      MidBBSType                 = Hidden; 
input linesstyle      UPPerBBSType               = Hidden;
input linesstyle      LowerBBSType               = Hidden;
input ENUM_LINE_STYLE MidBBStyle                 = 0;
input ENUM_LINE_STYLE UPPerBBStyle               = 0;
input ENUM_LINE_STYLE LowerBBStyle               = 0;
input color           MidBBlClr                  = clrGreen; 
input color           UPPerBBlClr                = clrGreen;
input color           LowerBBlClr                = clrGreen;
input int             BBWidthh                   = 1;

//-----------------------------------------------------
//-----------------------------------------------------
       



//===================================================================================================================================
//===================================================================================================================================
                           //+------------------------------------------------------------------+
                           //|                         Indicator Buffers                        |
                           //+------------------------------------------------------------------+
               

double HMAplotMAMethodMergeBuff   [];
double HMAsignalMAMethodMergeBuff []; 

double HMAplotMAMethodMergeExt    [];
double HMAsignalMAMethodMergeExt  [];
//------------------------
//------------------------
// Data Hist Buff
double MTFDataHistBuff  [];
// Data Hist1 Buff
double MTFDataHist1Buff [];
// Hist Buff
double MTFHistBuff      [];
double upMTFHistBuff    [];
double downMTFHistBuff  []; 
double ZupMTFHistBuff   [];
double ZdownMTFHistBuff [];
//------------------------
//------------------------
// Data Hist1 Buff
double MTFDataHist2Buff  [];
// Data Hist1 Buff
double MTFDataHist3Buff  [];
// Hist1 Buff
double MTFHist1Buff      [];
double upMTFHist1Buff    [];
double downMTFHist1Buff  []; 
double ZupMTFHist1Buff   [];
double ZdownMTFHist1Buff [];
//------------------------
//------------------------
double DataMAsHistBuff  []; 
// HMA Hist merge
//------------------------
double HMAHistMergeBuff [];   
double HMAHistMergeExt  [];
// MAs with HMA Selection::
//------------------------
double MAsHistChoicesBuff          [];
double MAsHistChoicesSlopeUPBuff   [];    
double MAsHistChoicesSlopeDownBuff [];
double MAsHistChoicesSlopeZUPBuff  [];
double MAsHistChoicesSlopeZDownBuff[];
//------------------------   
//------------------------
double DataMAs1HistBuff [];
// HMA1 Hist merge
//------------------------
double HMA1HistMergeBuff[];
double HMA1HistMergeExt [];
//------------------------
// MAs with HMA Selection::
//------------------------
double MAs1HistChoicesBuff          [];
double MAs1HistChoicesSlopeUPBuff   [];
double MAs1HistChoicesSlopeDownBuff [];
double MAs1HistChoicesSlopeZUPBuff  [];
double MAs1HistChoicesSlopeZDownBuff[];
//------------------------
//------------------------
double DataMAs2HistBuff  []; 
// HMA2 Hist merge
//------------------------
double HMA2HistMergeBuff [];   
double HMA2HistMergeExt  [];
// MAs2 with HMA2 Selection::
//------------------------
double MAs2HistChoicesBuff          [];
double MAs2HistChoicesSlopeUPBuff   [];    
double MAs2HistChoicesSlopeDownBuff [];
double MAs2HistChoicesSlopeZUPBuff  [];
double MAs2HistChoicesSlopeZDownBuff[];   
//------------------------
//------------------------
double DataMAs3HistBuff  []; 
// HMA3 Hist merge
//------------------------
double HMA3HistMergeBuff [];   
double HMA3HistMergeExt  [];
// MAs3 with HMA3 Selection::
//------------------------
double MAs3HistChoicesBuff          [];
double MAs3HistChoicesSlopeUPBuff   [];    
double MAs3HistChoicesSlopeDownBuff [];
double MAs3HistChoicesSlopeZUPBuff  [];
double MAs3HistChoicesSlopeZDownBuff[];
//------------------------   
//------------------------
double DataMAsHist1Buff [];
// HMA Hist1 merge
//------------------------
double HMAHist1MergeBuff[];
double HMAHist1MergeExt [];
// MAs with HMA Selection::
//------------------------
double MAsHist1ChoicesBuff          [];
double MAsHist1ChoicesSlopeUPBuff   [];
double MAsHist1ChoicesSlopeDownBuff [];
double MAsHist1ChoicesSlopeZUPBuff  [];
double MAsHist1ChoicesSlopeZDownBuff[];
//------------------------
//------------------------
double DataMAs1Hist1Buff [];
// HMA1 Hist1 merge
//------------------------
double HMA1Hist1MergeBuff[];
double HMA1Hist1MergeExt [];
// MAs with HMA Selection::
//------------------------
double MAs1Hist1ChoicesBuff          [];
double MAs1Hist1ChoicesSlopeUPBuff   [];
double MAs1Hist1ChoicesSlopeDownBuff [];
double MAs1Hist1ChoicesSlopeZUPBuff  [];
double MAs1Hist1ChoicesSlopeZDownBuff[];
//------------------------
//------------------------
double DataMAs2Hist1Buff [];
// HMA Hist1 merge
//------------------------
double HMA2Hist1MergeBuff[];
double HMA2Hist1MergeExt [];
// MAs with HMA Selection::
//------------------------
double MAs2Hist1ChoicesBuff          [];
double MAs2Hist1ChoicesSlopeUPBuff   [];
double MAs2Hist1ChoicesSlopeDownBuff [];
double MAs2Hist1ChoicesSlopeZUPBuff  [];
double MAs2Hist1ChoicesSlopeZDownBuff[];
//------------------------
//------------------------


double DataMAs3Hist1Buff [];
// HMA Hist1 merge
//------------------------
double HMA3Hist1MergeBuff[];
double HMA3Hist1MergeExt [];
// MAs with HMA Selection::
//------------------------
double MAs3Hist1ChoicesBuff          [];
double MAs3Hist1ChoicesSlopeUPBuff   [];
double MAs3Hist1ChoicesSlopeDownBuff [];
double MAs3Hist1ChoicesSlopeZUPBuff  [];
double MAs3Hist1ChoicesSlopeZDownBuff[];
//------------------------
//------------------------
// Boolinger Band Buff
double BBDataBuff [];
double BBMidBand  [] ;
double BBUpperBand[];
double BBLowerBand[];
//------------------------
//------------------------
double CrossUp  [];
double CrossDown[];
//------------------------
//------------------------

double Val[]; 
//------------------------
//------------------------
//============================================================================================================================
//============================================================================================================================
                           //+------------------------------------------------------------------+
                           //|               Custom indicator initialization function           |
                           //+------------------------------------------------------------------+
int init()
  {
  
   IndicatorBuffers(84);
   
                   // MTF Dev Buffers
                   //-----------------
   // Hulls Dev Buffs for calculations:
      
   SetIndexBuffer(0 , HMAplotMAMethodMergeBuff);
   SetIndexStyle (0 , DRAW_NONE);            
   SetIndexLabel (0 , "");
   
   SetIndexBuffer(1 , HMAsignalMAMethodMergeBuff);
   SetIndexStyle (1 , DRAW_NONE);            
   SetIndexLabel (1 , "");
   
   SetIndexBuffer(2 , HMAplotMAMethodMergeExt);
   SetIndexStyle (2 , DRAW_NONE);            
   SetIndexLabel (2 , "");
   
   
   SetIndexBuffer(3 , HMAsignalMAMethodMergeExt);
   SetIndexStyle (3 , DRAW_NONE);            
   SetIndexLabel (3 , "");



//============================================================================================================================
//============================================================================================================================
   //-----------------------
  // Hist Initialization::
  //-----------------------
  if(Show_Data_Window == 0)
    {
      SetIndexBuffer(4 , MTFHistBuff);
      SetIndexStyle (4 , DRAW_NONE);  
      SetIndexLabel (4 , "");
    }
  else
    {
      SetIndexBuffer(4 , MTFHistBuff);
      SetIndexStyle (4 , DRAW_NONE);  
      SetIndexLabel (4 , "Plot-Hist");
      
      IndicatorDigits(Digits + 2); 
      IndicatorShortName("Dev over Single TF Plot-Hist = ");
      
    }

  // Hist Slope UP / Down
   SetIndexBuffer(5  , upMTFHistBuff);
   SetIndexStyle (5  , DevPlotHistType  , DevPlotHistStyle , DevPlotHistWidth , DevPlotHistUPClr);
   SetIndexLabel (5  , "");

   SetIndexBuffer(6  , downMTFHistBuff);
   SetIndexStyle (6  , DevPlotHistType , DevPlotHistStyle , DevPlotHistWidth , DevPlotHistDownClr);
   SetIndexLabel (6  , "");

   // Hist Slope Zero 
   SetIndexStyle (7 , DevPlotHistZeroType , DevPlotHistZeroStyle , DevPlotHistWidth , DevPlotHistZeroClr);  
   SetIndexBuffer(7 , ZupMTFHistBuff);
   SetIndexLabel (7 , "");
   
   SetIndexStyle (8 , DevPlotHistZeroType , DevPlotHistZeroStyle , DevPlotHistWidth , DevPlotHistZeroClr); 
   SetIndexBuffer(8 , ZdownMTFHistBuff); 
   SetIndexLabel (8 , "");
//============================================================================================================================
//===========================================================================================================================  =
   //----------------------
  // Hist1 Initialization (signal-Hist)::
  //-------------------------------------
  
   SetIndexBuffer(9 , MTFHist1Buff);
   SetIndexStyle (9 , DRAW_NONE);            
   SetIndexLabel (9 , "");
  
/*
  if(Show_Data_Window == 0)
    {
      SetIndexBuffer(9 , MTFHist1Buff);
      SetIndexStyle (9 , DRAW_NONE);            
      SetIndexLabel (9 , "");
      
      IndicatorDigits(Digits + 2); 
      IndicatorShortName("");
    }
  else
  {
      SetIndexBuffer(9 , MTFHist1Buff);
      SetIndexStyle (9 , DRAW_NONE);            
      //SetIndexLabel (9 , "Signal-Hist");
      
      IndicatorDigits(Digits + 2); 
      IndicatorShortName("Dev over Single Timeframe");
  }
  */
  // Hist1 Slope UP / Down
   SetIndexBuffer(10  , upMTFHist1Buff);
   SetIndexStyle (10  , DevSignalHistType , DevSignalHistStyle , DevSignalHistWidth , DevSignalHistUPClr);
   SetIndexLabel (10  , "");

   SetIndexBuffer(11  , downMTFHist1Buff);
   SetIndexStyle (11  , DevSignalHistType , DevSignalHistStyle , DevSignalHistWidth , DevSignalHistDownClr);
   SetIndexLabel (11  , "");

   // Hist1 Slope Zero 
   SetIndexStyle (12 , DevSignalHistZeroType , DevSignalHistZeroStyle , DevSignalHistWidth , DevSignalHistZeroClr);  
   SetIndexBuffer(12 , ZupMTFHist1Buff);
   SetIndexLabel (12 , "");
   
   SetIndexStyle (13 , DevSignalHistZeroType , DevSignalHistZeroStyle , DevSignalHistWidth , DevSignalHistZeroClr); 
   SetIndexBuffer(13 , ZdownMTFHist1Buff); 
   SetIndexLabel (13 , "");
//============================================================================================================================
//============================================================================================================================
    //--------------------------
   // MAs On Hist Initialize
  //----------------------------
   SetIndexBuffer(14 , DataMAsHistBuff);
   SetIndexStyle (14 , DRAW_NONE); 
   SetIndexLabel (14 , ""); 

   SetIndexBuffer(15 , HMAHistMergeBuff);
   SetIndexStyle (15 , DRAW_NONE);  
   SetIndexLabel (15 , "");

   SetIndexBuffer(16 , HMAHistMergeExt);
   SetIndexStyle (16 , DRAW_NONE); 
   SetIndexLabel (16 , "");

   SetIndexBuffer(17 , MAsHistChoicesBuff);
   SetIndexStyle (17 , DRAW_NONE);
   SetIndexLabel (17 , "");
     
// MAs On Hist Plotting
   SetIndexBuffer(18 , MAsHistChoicesSlopeUPBuff); 
   SetIndexStyle (18 , MAsPlotHistType , MAsPlotHistStyle , MAsPlotHistWidth , MAsPlotHistUPClr);    
   SetIndexLabel (18 , "");
   
   SetIndexBuffer(19 , MAsHistChoicesSlopeDownBuff);
   SetIndexStyle (19 , MAsPlotHistType , MAsPlotHistStyle , MAsPlotHistWidth , MAsPlotHistDownClr);
   SetIndexLabel (19 , "");
   
   SetIndexBuffer(20 , MAsHistChoicesSlopeZUPBuff);
   SetIndexStyle (20 , MAsPlotHistSlopeZeroType , MAsPlotHistSlopeZeroStyle , MAsPlotHistWidth , MAsPlotHistSlopeZeroClr);
   SetIndexLabel (20 , "");
   
   SetIndexBuffer(21 , MAsHistChoicesSlopeZDownBuff);
   SetIndexStyle (21 , MAsPlotHistSlopeZeroType , MAsPlotHistSlopeZeroStyle , MAsPlotHistWidth , MAsPlotHistSlopeZeroClr);
   SetIndexLabel (21 , ""); 
//============================================================================================================================
//============================================================================================================================
       //--------------------------
      // MAs1 On Hist1 Initialize
     //----------------------------
   SetIndexBuffer(22 , DataMAs1HistBuff);
   SetIndexStyle (22 , DRAW_NONE);  
   SetIndexLabel (22 , "");

   SetIndexBuffer(23 , HMA1HistMergeBuff);
   SetIndexStyle (23 , DRAW_NONE);  
   SetIndexLabel (23 , "");

   SetIndexBuffer(24 , HMA1HistMergeExt);
   SetIndexStyle (24 , DRAW_NONE); 
   SetIndexLabel (24 , "");

   SetIndexBuffer(25 , MAs1HistChoicesBuff);
   SetIndexStyle (25 , DRAW_NONE);
   SetIndexLabel (25 , "");

   // MAs1 On Hist Plotting
   SetIndexBuffer(26 , MAs1HistChoicesSlopeUPBuff);
   SetIndexStyle (26 , MAs1PlotHistType , MAs1PlotHistStyle , MAs1PlotHistWidth , MAs1PlotHistUPClr);
   SetIndexLabel (26 , "");

   SetIndexBuffer(27 , MAs1HistChoicesSlopeDownBuff);
   SetIndexStyle (27 , MAs1PlotHistType , MAs1PlotHistStyle , MAs1PlotHistWidth , MAs1PlotHistDownClr);
   SetIndexLabel (27 , "");

   SetIndexBuffer(28 , MAs1HistChoicesSlopeZUPBuff);
   SetIndexStyle (28 , MAs1PlotHistSlopeZeroType , MAs1PlotHistSlopeZeroStyle , MAs1PlotHistWidth , MAs1PlotHistSlopeZeroClr);
   SetIndexLabel (28 , "");

   SetIndexBuffer(29 , MAs1HistChoicesSlopeZDownBuff);
   SetIndexStyle (29 , MAs1PlotHistSlopeZeroType , MAs1PlotHistSlopeZeroStyle , MAs1PlotHistWidth , MAs1PlotHistSlopeZeroClr);
   SetIndexLabel (29 , "");
   //============================================================================================================================
   //============================================================================================================================
    //-------------------------
   // MAs2 On Hist1 Initialize
  //---------------------------
   SetIndexBuffer(30 , DataMAs2HistBuff);
   SetIndexStyle (30 , DRAW_NONE); 
   SetIndexLabel (30 , ""); 

   SetIndexBuffer(31 , HMA2HistMergeBuff);
   SetIndexStyle (31 , DRAW_NONE);  
   SetIndexLabel (31 , "");

   SetIndexBuffer(32 , HMA2HistMergeExt);
   SetIndexStyle (32 , DRAW_NONE); 
   SetIndexLabel (32 , "");

   SetIndexBuffer(33 , MAs2HistChoicesBuff);
   SetIndexStyle (33 , DRAW_NONE);
   SetIndexLabel (33 , "");
  
   // MAs2 On Hist Plotting
   SetIndexBuffer(34 , MAs2HistChoicesSlopeUPBuff); 
   SetIndexStyle (34 , MAs2PlotHistType , MAs2PlotHistStyle , MAs2PlotHistWidth , MAs2PlotHistUPClr);    
   SetIndexLabel (34 , "");
   
   SetIndexBuffer(35 , MAs2HistChoicesSlopeDownBuff);
   SetIndexStyle (35 , MAs2PlotHistType , MAs2PlotHistStyle , MAs2PlotHistWidth , MAs2PlotHistDownClr);
   SetIndexLabel (35 , "");
   
   SetIndexBuffer(36 , MAs2HistChoicesSlopeZUPBuff);
   SetIndexStyle (36 , MAs2PlotHistSlopeZeroType , MAs2PlotHistSlopeZeroStyle , MAs2PlotHistWidth , MAs2PlotHistSlopeZeroClr);
   SetIndexLabel (36 , "");
   
   SetIndexBuffer(37 , MAs2HistChoicesSlopeZDownBuff);
   SetIndexStyle (37 , MAs2PlotHistSlopeZeroType , MAs2PlotHistSlopeZeroStyle , MAs2PlotHistWidth , MAs2PlotHistSlopeZeroClr);
   SetIndexLabel (37 , ""); 
   //============================================================================================================================
   //============================================================================================================================
     //---------------------------
    // MAs3 On Hist Initialize
   //----------------------------
   SetIndexBuffer(38 , DataMAs3HistBuff);
   SetIndexStyle (38 , DRAW_NONE); 
   SetIndexLabel (38 , ""); 

   SetIndexBuffer(39 , HMA3HistMergeBuff);
   SetIndexStyle (39 , DRAW_NONE);  
   SetIndexLabel (39 , "");

   SetIndexBuffer(40 , HMA3HistMergeExt);
   SetIndexStyle (40 , DRAW_NONE); 
   SetIndexLabel (40 , "");

   SetIndexBuffer(41 , MAs3HistChoicesBuff);
   SetIndexStyle (41 , DRAW_NONE);
   SetIndexLabel (41 , "");
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------   
// MAs3 On Hist Plotting
   SetIndexBuffer(42 , MAs3HistChoicesSlopeUPBuff); 
   SetIndexStyle (42 , MAs3PlotHistType , MAs3PlotHistStyle , MAs3PlotHistWidth , MAs3PlotHistUPClr);    
   SetIndexLabel (42 , "");
   
   SetIndexBuffer(43 , MAs3HistChoicesSlopeDownBuff);
   SetIndexStyle (43 , MAs3PlotHistType , MAs3PlotHistStyle , MAs3PlotHistWidth , MAs3PlotHistDownClr);
   SetIndexLabel (43 , "");
   
   SetIndexBuffer(44 , MAs3HistChoicesSlopeZUPBuff);
   SetIndexStyle (44 , MAs3PlotHistSlopeZeroType , MAs3PlotHistSlopeZeroStyle , MAs3PlotHistWidth , MAs3PlotHistSlopeZeroClr);
   SetIndexLabel (44 , "");
   
   SetIndexBuffer(45 , MAs3HistChoicesSlopeZDownBuff);
   SetIndexStyle (45 , MAs3PlotHistSlopeZeroType , MAs3PlotHistSlopeZeroStyle , MAs3PlotHistWidth , MAs3PlotHistSlopeZeroClr);
   SetIndexLabel (45 , ""); 
//============================================================================================================================
//============================================================================================================================
     //----------------------------
    // MAs On Hist1 Initialize
   //----------------------------
   SetIndexBuffer(46 , DataMAsHist1Buff);
   SetIndexStyle (46 , DRAW_NONE); 
   SetIndexLabel (46 , "");

   SetIndexBuffer(47 , HMAHist1MergeBuff);
   SetIndexStyle (47 , DRAW_NONE); 
   SetIndexLabel (47 , "");

   SetIndexBuffer(48 , HMAHist1MergeExt);
   SetIndexStyle (48 , DRAW_NONE); 
   SetIndexLabel (48 , "");

   SetIndexBuffer(49 , MAsHist1ChoicesBuff);
   SetIndexStyle (49 , DRAW_NONE);
   SetIndexLabel (49 , "");
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// MAs On Hist1 Plotting
   SetIndexBuffer(50 , MAsHist1ChoicesSlopeUPBuff);
   SetIndexStyle (50 , MAsSignalHistType , MAsSignalHistStyle , MAsSignalHistWidth , MAsSignalHistUPClr);
   SetIndexLabel (50 , "");

   SetIndexBuffer(51 , MAsHist1ChoicesSlopeDownBuff);
   SetIndexStyle (51 , MAsSignalHistType , MAsSignalHistStyle , MAsSignalHistWidth , MAsSignalHistDownClr);
   SetIndexLabel (51 , "");

   SetIndexBuffer(52 , MAsHist1ChoicesSlopeZUPBuff);
   SetIndexStyle (52 , MAsSignalHistSlopeZeroType , MAsSignalHistSlopeZeroStyle , MAsSignalHistWidth , MAsSignalHistSlopeZeroClr);
   SetIndexLabel (52 , "");

   SetIndexBuffer(53 , MAsHist1ChoicesSlopeZDownBuff);
   SetIndexStyle (53 , MAsSignalHistSlopeZeroType , MAsSignalHistSlopeZeroStyle , MAsSignalHistWidth , MAsSignalHistSlopeZeroClr);
   SetIndexLabel (53 , "");
//============================================================================================================================
//============================================================================================================================
     //----------------------------
    // MAs1 On Hist1 Initialize
   //----------------------------
   SetIndexBuffer(54 , DataMAs1Hist1Buff);
   SetIndexStyle (54 , DRAW_NONE);  
   SetIndexLabel (54 , "");

   SetIndexBuffer(55 , HMA1Hist1MergeBuff);
   SetIndexStyle (55 , DRAW_NONE);  
   SetIndexLabel (55 , "");

   SetIndexBuffer(56 , HMA1Hist1MergeExt);
   SetIndexStyle (56 , DRAW_NONE);  
   SetIndexLabel (56 , "");

   SetIndexBuffer(57 , MAs1Hist1ChoicesBuff);
   SetIndexStyle (57 , DRAW_NONE); 
   SetIndexLabel (57 , "");
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// MAs1 On Hist1 Plotting
   SetIndexBuffer(58 , MAs1Hist1ChoicesSlopeUPBuff);
   SetIndexStyle (58 , MAs1SignalHistType , MAs1SignalHistStyle , MAs1SignalHistWidth , MAs1SignalHistUPClr); 
   SetIndexLabel (58 , "");

   SetIndexBuffer(59 , MAs1Hist1ChoicesSlopeDownBuff);
   SetIndexStyle (59 , MAs1SignalHistType , MAs1SignalHistStyle , MAs1SignalHistWidth , MAs1SignalHistDownClr); 
   SetIndexLabel (59 , "");

   SetIndexBuffer(60 , MAs1Hist1ChoicesSlopeZUPBuff);
   SetIndexStyle (60 , MAs1SignalHistSlopeZeroType , MAs1SignalHistSlopeZeroStyle , MAs1SignalHistWidth , MAs1SignalHistSlopeZeroClr); 
   SetIndexLabel (60 , "");

   SetIndexBuffer(61 , MAs1Hist1ChoicesSlopeZDownBuff);
   SetIndexStyle (61 , MAs1SignalHistSlopeZeroType , MAs1SignalHistSlopeZeroStyle , MAs1SignalHistWidth , MAs1SignalHistSlopeZeroClr); 
   SetIndexLabel (61 , "");
//============================================================================================================================
//============================================================================================================================
     //----------------------------
    // MAs2 On Hist1 Initialize
   //----------------------------
   SetIndexBuffer(62 , DataMAs2Hist1Buff);
   SetIndexStyle (62 , DRAW_NONE); 
   SetIndexLabel (62 , "");

   SetIndexBuffer(63 , HMA2Hist1MergeBuff);
   SetIndexStyle (63 , DRAW_NONE); 
   SetIndexLabel (63 , "");

   SetIndexBuffer(64 , HMA2Hist1MergeExt);
   SetIndexStyle (64 , DRAW_NONE); 
   SetIndexLabel (64 , "");

   SetIndexBuffer(65 , MAs2Hist1ChoicesBuff);
   SetIndexStyle (65 , DRAW_NONE);
   SetIndexLabel (65 , "");
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// MAs2 On Hist1 Plotting
   SetIndexBuffer(66 , MAs2Hist1ChoicesSlopeUPBuff);
   SetIndexStyle (66 , MAs2SignalHistType , MAs2SignalHistStyle , MAs2SignalHistWidth , MAs2SignalHistUPClr);
   SetIndexLabel (66 , "");

   SetIndexBuffer(67 , MAs2Hist1ChoicesSlopeDownBuff);
   SetIndexStyle (67 , MAs2SignalHistType , MAs2SignalHistStyle , MAs2SignalHistWidth , MAs2SignalHistDownClr);
   SetIndexLabel (67 , ""); 

   SetIndexBuffer(68 , MAs2Hist1ChoicesSlopeZUPBuff);
   SetIndexStyle (68 , MAs2SignalHistSlopeZeroType , MAs2SignalHistSlopeZeroStyle , MAs2SignalHistWidth , MAs2SignalHistSlopeZeroClr);
   SetIndexLabel (68 , "");

   SetIndexBuffer(69 , MAs2Hist1ChoicesSlopeZDownBuff);
   SetIndexStyle (69 , MAs2SignalHistSlopeZeroType , MAs2SignalHistSlopeZeroStyle , MAs2SignalHistWidth , MAs2SignalHistSlopeZeroClr);
   SetIndexLabel (69 , "");
//============================================================================================================================
//============================================================================================================================
     //----------------------------
    // MAs3 On Hist1 Initialize
   //----------------------------
   SetIndexBuffer(70 , DataMAs3Hist1Buff);
   SetIndexStyle (70 , DRAW_NONE); 
   SetIndexLabel (70 , "");

   SetIndexBuffer(71 , HMA3Hist1MergeBuff);
   SetIndexStyle (71 , DRAW_NONE); 
   SetIndexLabel (71 , "");

   SetIndexBuffer(72 , HMA3Hist1MergeExt);
   SetIndexStyle (72 , DRAW_NONE); 
   SetIndexLabel (72 , "");

   SetIndexBuffer(73 , MAs3Hist1ChoicesBuff);
   SetIndexStyle (73 , DRAW_NONE);
   SetIndexLabel (73 , "");
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// MAs3 On Hist1 Plotting
   SetIndexBuffer(74 , MAs3Hist1ChoicesSlopeUPBuff);
   SetIndexStyle (74 , MAs3SignalHistType , MAs3SignalHistStyle , MAs3SignalHistWidth , MAs3SignalHistUPClr);
   SetIndexLabel (74 , "");

   SetIndexBuffer(75 , MAs3Hist1ChoicesSlopeDownBuff);
   SetIndexStyle (75 , MAs3SignalHistType , MAs3SignalHistStyle , MAs3SignalHistWidth , MAs3SignalHistDownClr);
   SetIndexLabel (75 , "");

   SetIndexBuffer(76 , MAs3Hist1ChoicesSlopeZUPBuff);
   SetIndexStyle (76 , MAs3SignalHistSlopeZeroType , MAs3SignalHistSlopeZeroStyle , MAs3SignalHistWidth , MAs3SignalHistSlopeZeroClr);
   SetIndexLabel (76 , "");

   SetIndexBuffer(77 , MAs3Hist1ChoicesSlopeZDownBuff);
   SetIndexStyle (77 , MAs3SignalHistSlopeZeroType , MAs3SignalHistSlopeZeroStyle , MAs3SignalHistWidth , MAs3SignalHistSlopeZeroClr);
   SetIndexLabel (77 , "");
//============================================================================================================================
//============================================================================================================================
    //----------------------
    // BB Initialize
   //----------------------
   SetIndexBuffer(78 , BBDataBuff);
   SetIndexStyle (78 , DRAW_NONE); 
   SetIndexLabel (78 , "");

   SetIndexBuffer(79 , BBMidBand);
   SetIndexStyle (79 , MidBBSType , MidBBStyle , BBWidthh , MidBBlClr); 
   SetIndexLabel (79 , "");

   SetIndexBuffer(80 , BBUpperBand);
   SetIndexStyle (80 , UPPerBBSType , UPPerBBStyle , BBWidthh , UPPerBBlClr); 
   SetIndexLabel (80 , "");

   SetIndexBuffer(81 , BBLowerBand);
   SetIndexStyle (81 , LowerBBSType , LowerBBStyle , BBWidthh , LowerBBlClr);  
   SetIndexLabel (81 , "");
//============================================================================================================================
//============================================================================================================================
    //----------------------
    // Arrows Initialize
   //----------------------
   SetIndexStyle (82 , DRAW_ARROW,EMPTY,DotsWidth , DotsUPClr);  
   SetIndexArrow (82  , 159);
   SetIndexBuffer(82  , CrossUp);
   SetIndexLabel (82 , "");
   
   SetIndexStyle (83 , DRAW_ARROW,EMPTY,DotsWidth , DotsDownClr);
   SetIndexArrow (83 , 159);
   SetIndexBuffer(83 , CrossDown);
   SetIndexLabel (83 , "");
   /*
   SetIndexBuffer(84 , Val);
   SetIndexStyle (84 , DRAW_NONE);  
   SetIndexLabel (84 , "Val");
   */


//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------

   //return(0);

   return(INIT_SUCCEEDED);
  }
  
//============================================================================================================================
//============================================================================================================================
 
//+------------------------------------------------------------------+
//| Custom indicator iteration function   Calculation Processes      |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
  
                                                      //+------------------------------------------------------------------+
                                                      //|               4Devs (MTF FP - MTF MAs) Calculation::              |
                                                      //+------------------------------------------------------------------+

                                              //+------------------------------------------------------------------+
                                             //|                2 Devs From 4 Devs based on our choices            |
                                             //+-------------------------------------------------------------------+
//=======================================================================================================================================================
//=======================================================================================================================================================
   // Calculate HMAs  arrays
   
   int sqrt_devplot    = (int)floor(MathSqrt(DevPlotHistMAPeriod));     
   int mid_devplot     = (int)floor(DevPlotHistMAPeriod/2);
   
   int sqrt_devsignal  = (int)floor(MathSqrt(DevSignalHistMAPeriod));     
   int mid_devsignal   = (int)floor(DevSignalHistMAPeriod/2);
   
   
   int sqrt_p  = (int)floor(MathSqrt(MAsPlotHistPeriod));     
   int mid_p   = (int)floor(MAsPlotHistPeriod/2);

   int sqrt_p1 = (int)floor(MathSqrt(MAs1PlotHistPeriod));
   int mid_p1  = (int)floor(MAs1PlotHistPeriod/2);
   
   
   int sqrt_p2 = (int)floor(MathSqrt(MAs2PlotHistPeriod));
   int mid_p2  = (int)floor(MAs2PlotHistPeriod/2);
   
   int sqrt_p3 = (int)floor(MathSqrt(MAs3PlotHistPeriod));
   int mid_p3  = (int)floor(MAs3PlotHistPeriod/2);
   //----------------------------------------------------
   //----------------------------------------------------
   
   int sqrt_p4 = (int)floor(MathSqrt(MAsSignalHistPeriod));
   int mid_p4  = (int)floor(MAsSignalHistPeriod/2);
   
   int sqrt_p5 = (int)floor(MathSqrt(MAs1SignalHistPeriod));
   int mid_p5  = (int)floor(MAs1SignalHistPeriod/2);
   
   int sqrt_p6 = (int)floor(MathSqrt(MAs2SignalHistPeriod));
   int mid_p6  = (int)floor(MAs2SignalHistPeriod/2);
   
   int sqrt_p7 = (int)floor(MathSqrt(MAs3SignalHistPeriod));
   int mid_p7  = (int)floor(MAs3SignalHistPeriod/2);
   //----------------------------------------------------
   //----------------------------------------------------
//+------------------------------------------------------------------+
//|                      MTF Dev2  Calculation::                      |
//+------------------------------------------------------------------+
   static int oldBars = 0;
   int counted_bars=IndicatorCounted();
   int i,limit;

   limit = (rates_total)-(  prev_calculated);
   //-------------------------------------------------------------
   for (i = limit; i>= 0; i--)
      {
            // HMAs Calculations of 2 Devs::
         //------------------------------
         HMAplotMAMethodMergeBuff[i]   = 2*iMA(NULL,0,mid_devplot,0,MODE_LWMA,DevPlotHistMAAppliedPrice,i)
                                          -iMA(NULL,0,DevPlotHistMAPeriod,0,MODE_LWMA,DevPlotHistMAAppliedPrice,i);    
                                          
         HMAsignalMAMethodMergeBuff[i] =2*iMA(NULL,0,mid_devsignal,0,MODE_LWMA,DevSignalHistMAAppliedPrice,i)
                                         -iMA(NULL,0,DevSignalHistMAPeriod,0,MODE_LWMA,DevSignalHistMAAppliedPrice,i); 
                                                                                          
      }
   
   
//==========================================================================================================================================================
//==========================================================================================================================================================
//  second step  of HMAs calculations ::
//---------------------------------------
   int weightsumplot=0;
   for(i=sqrt_devplot; i>0; i--)
      weightsumplot+=i;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_devplot,HMAplotMAMethodMergeBuff,HMAplotMAMethodMergeExt,weightsumplot);
     
//-------------------------------------------------------------------------------------------
   int weightsumsignal=0;
   for(i=sqrt_devsignal; i>0; i--)
      weightsumsignal+=i;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_devsignal,HMAsignalMAMethodMergeBuff,HMAsignalMAMethodMergeExt,weightsumsignal);
//-------------------------------------------------------------------------------------------
//==========================================================================================================================================================
//==========================================================================================================================================================
   for (i = limit; i>= 0; i--)
   {
   //=========================================================================================================================
   //=========================================================================================================================
    double devplotFieldprice = CalculateFieldPrice(DevPlotHistPrice, i);
    double devplotMAs        = MAsSwitchCases(DevPlotHistMAMethod  , DevPlotHistMAAppliedPrice , DevPlotHistMAPeriod ,  HMAplotMAMethodMergeExt  , i);
    MTFHistBuff[i]           = devplotFieldprice -    devplotMAs;  

   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------       
   // 1st Up Down Hist1 From 2 MTFDevs
   //-------------------------------
         // Get Signal Hist as slope up down and zero Histogram Process
         if(DevPlotHistType == HistHist)
            {
   
               if(MTFHistBuff[i] > 0)
                 {
                  upMTFHistBuff  [i] = MTFHistBuff[i];
                  downMTFHistBuff[i] = 0;
                 }
               else
                 {
                  if(MTFHistBuff[i] < 0)
                    {
                     downMTFHistBuff[i] = MTFHistBuff[i];
                     upMTFHistBuff  [i] = 0;
                    }
                  else
                    {
                     upMTFHistBuff  [i] = 0;
                     downMTFHistBuff[i] = 0;
                    }
                 }
           }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      if(DevPlotHistType == HistLine && Zero_Slope_Colour == 0)
      {
      
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         upMTFHistBuff[i]   =  EMPTY_VALUE;
         downMTFHistBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MTFHistBuff[i] > 0)
           {
            upMTFHistBuff[i] = MTFHistBuff[i];
            if(i <  (rates_total-1)&& upMTFHistBuff[i+1] == EMPTY_VALUE){
               downMTFHistBuff[i] = MTFHistBuff[i];
               }
            
           }
         else 
           {
            downMTFHistBuff[i] = MTFHistBuff[i];
            if(i <  (rates_total-1)&& downMTFHistBuff[i+1] == EMPTY_VALUE){
              upMTFHistBuff[i] = MTFHistBuff[i];
              }
            
           }

      }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      if(DevPlotHistType == HistLine && Zero_Slope_Colour == 1)
        {
      
         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MTFHistBuff[i]>0)
           {
            upMTFHistBuff[i] = MTFHistBuff[i];
            if(MTFHistBuff[i+1]<0)
               upMTFHistBuff[i+1]=MTFHistBuff[i+1];
            downMTFHistBuff[i] = EMPTY_VALUE;
           }
         else
            if(MTFHistBuff[i]<0)
              {
               downMTFHistBuff[i] = MTFHistBuff[i];
               if(MTFHistBuff[i+1]>0)
                  downMTFHistBuff[i+1]=MTFHistBuff[i+1];
               upMTFHistBuff[i] = EMPTY_VALUE;
              }

      }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//------------------------------------------------------------------------- 
         // Get Signal Hist slope up down and zero as line
         if(DevPlotHistType == HistLine && Zero_Slope_Colour == 2)
          {
         
            //MAs2HistChoicesSlopeUPBuff[s]   =  EMPTY_VALUE;        
            //MAs2HistChoicesSlopeDownBuff[s] =  EMPTY_VALUE; ZupMTFDev ZdownMTFDev
            //------------------------------------------------
            if(MTFHistBuff[i]>0)
              {
               upMTFHistBuff[i]              = MTFHistBuff[i];
               //------------------------------------------------
               if(i <  (rates_total-1)&& (upMTFHistBuff[i+1] == EMPTY_VALUE )){
                  ZupMTFHistBuff[i]   = MTFHistBuff[i];
                  ZupMTFHistBuff[i+1] = MTFHistBuff[i+1];
                  //------------------------------------------------
                  }
               
              }
            else 
              {
               downMTFHistBuff[i]              = MTFHistBuff[i];
               //------------------------------------------------
               if(i <  (rates_total-1)&& (downMTFHistBuff[i+1] == EMPTY_VALUE  )){
                 ZdownMTFHistBuff[i]   = MTFHistBuff[i];
                 ZdownMTFHistBuff[i+1] = MTFHistBuff[i+1];
                 //------------------------------------------------
                 
                 }
               
              }
            
         } 
     

   //=======================================================================================================================================================
   //=======================================================================================================================================================

   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
    double devSignalFieldprice = CalculateFieldPrice(DevSignalHistPrice, i);
    double devSignalMAs        = MAsSwitchCases(DevSignalHistMAMethod  , DevSignalHistMAAppliedPrice , DevSignalHistMAPeriod ,  HMAsignalMAMethodMergeExt  , i);
    MTFHist1Buff[i]            = devSignalFieldprice -    devSignalMAs; 
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------        
   // 1st Up Down Hist1 From 2 MTFDevs
   //-------------------------------
         // Get Signal Hist as slope up down and zero Histogram Process
         if(DevSignalHistType == HistHist)
            {
   
               if(MTFHist1Buff[i] > 0)
                 {
                  upMTFHist1Buff  [i] = MTFHist1Buff[i];
                  downMTFHist1Buff[i] = 0;
                 }
               else
                 {
                  if(MTFHist1Buff[i] < 0)
                    {
                     downMTFHist1Buff[i] = MTFHist1Buff[i];
                     upMTFHist1Buff  [i] = 0;
                    }
                  else
                    {
                     upMTFHist1Buff  [i] = 0;
                     downMTFHist1Buff[i] = 0;
                    }
                 }
           }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      if(DevSignalHistType == HistLine && Zero_Slope_Colour == 0)
       {
      
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         upMTFHist1Buff[i]   =  EMPTY_VALUE;
         downMTFHist1Buff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MTFHist1Buff[i] > 0)
           {
            upMTFHist1Buff[i] = MTFHist1Buff[i];
            if(i <  (rates_total-1)&& upMTFHist1Buff[i+1] == EMPTY_VALUE){
               downMTFHist1Buff[i] = MTFHist1Buff[i];
               }
            
           }
         else 
           {
            downMTFHist1Buff[i] = MTFHist1Buff[i];
            if(i <  (rates_total-1)&& downMTFHist1Buff[i+1] == EMPTY_VALUE){
              upMTFHist1Buff[i] = MTFHist1Buff[i];
              }
            
           }

      }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      if(DevSignalHistType == HistLine && Zero_Slope_Colour == 1)
       {
      
         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MTFHist1Buff[i]>0)
           {
            upMTFHist1Buff[i] = MTFHist1Buff[i];
            if(MTFHist1Buff[i+1]<0)
               upMTFHist1Buff[i+1]=MTFHist1Buff[i+1];
            downMTFHist1Buff[i] = EMPTY_VALUE;
           }
         else
            if(MTFHist1Buff[i]<0)
              {
               downMTFHist1Buff[i] = MTFHist1Buff[i];
               if(MTFHist1Buff[i+1]>0)
                  downMTFHist1Buff[i+1]=MTFHist1Buff[i+1];
               upMTFHist1Buff[i] = EMPTY_VALUE;
              }

      }
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//-------------------------------------------------------------------------
      //-------------------------------------------------------------------------//------------------------------------------------------------------------- 
         // Get Signal Hist slope up down and zero as line
         if(DevSignalHistType == HistLine&& Zero_Slope_Colour == 2)
          {
         
            //MAs2HistChoicesSlopeUPBuff[s]   =  EMPTY_VALUE;        
            //MAs2HistChoicesSlopeDownBuff[s] =  EMPTY_VALUE; ZupMTFDev ZdownMTFDev
            //------------------------------------------------
            if(MTFHist1Buff[i]>0)
              {
               upMTFHist1Buff[i]              = MTFHist1Buff[i];
               //------------------------------------------------
               if(i <  (rates_total-1)&& (upMTFHist1Buff[i+1] == EMPTY_VALUE )){
                  ZupMTFHist1Buff[i]   = MTFHist1Buff[i];
                  ZupMTFHist1Buff[i+1] = MTFHist1Buff[i+1];
                  //------------------------------------------------
                  }
               
              }
            else 
              {
               downMTFHist1Buff[i]              = MTFHist1Buff[i];
               //------------------------------------------------
               if(i <  (rates_total-1)&& (downMTFHist1Buff[i+1] == EMPTY_VALUE  )){
                 ZdownMTFHist1Buff[i]   = MTFHist1Buff[i];
                 ZdownMTFHist1Buff[i+1] = MTFHist1Buff[i+1];
                 //------------------------------------------------
                 
                 }
               
              }
            
         } 
     
   
   //=======================================================================================================================================================
   //=======================================================================================================================================================
   
         switch(MAsPlotHistDataChoice)
           {
            case 0:
              {
               DataMAsHistBuff[i] = MTFHistBuff[i];    
               break;
              }
            case 1:
              {
               DataMAsHistBuff[i] = MTFHist1Buff[i];
               break;
              }
   
           }
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
         switch(MAs1PlotHistDataChoice)
           {
            case 0:
              {
               DataMAs1HistBuff[i] = MTFHistBuff[i];   
               break;
              }
            case 1:
              {
               DataMAs1HistBuff[i] = MTFHist1Buff[i];
               break;
              }
   
           }
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
         switch(MAs2PlotHistDataChoice)
           {
            case 0:
              {
               DataMAs2HistBuff[i] = MTFHistBuff[i];   
               break;
              }
            case 1:
              {
               DataMAs2HistBuff[i] = MTFHist1Buff[i];
               break;
              }
   
           }
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
         switch(MAs3PlotHistDataChoice)
           {
            case 0:
              {
               DataMAs3HistBuff[i] = MTFHistBuff[i];   
               break;
              }
            case 1:
              {
               DataMAs3HistBuff[i] = MTFHist1Buff[i];
               break;
              }
   
           }
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
   
         switch(MAsSignalHistDataChoice)
           {
            case 0:
              {
               DataMAsHist1Buff[i] = MTFHistBuff[i]; 
               break;
              }
            case 1:
              {
               DataMAsHist1Buff[i] = MTFHist1Buff[i];
               break;
              }
   
           }
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
         switch(MAs1SignalHistDataChoice)
           {
            case 0:
              {
               DataMAs1Hist1Buff[i] = MTFHistBuff[i];  
               break;
              }
            case 1:
              {
               DataMAs1Hist1Buff[i] = MTFHist1Buff[i];
               break;
              }
       
           }
           
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
   //----------------------------------------------------------------------------------
         switch(MAs2SignalHistDataChoice)
           {
            case 0:
              {
               DataMAs2Hist1Buff[i] = MTFHistBuff[i];  
               break;
              }
            case 1:
              {
               DataMAs2Hist1Buff[i] = MTFHist1Buff[i];
               break;
              }
       
           }
           
   //----------------------------------------------------------------------------------
   
   //----------------------------------------------------------------------------------
         switch(MAs3SignalHistDataChoice)
           {
            case 0:
              {
               DataMAs3Hist1Buff[i] = MTFHistBuff[i];  
               break;
              }
            case 1:
              {
               DataMAs3Hist1Buff[i] = MTFHist1Buff[i];
               break;
              }
       
           }
     }      
   //----------------------------------------------------------------------------------
   // Some calculation related HMAs which drawing on Our Plot and Signal Hists::
   //------------------------------------------------------------------------------- 
   for(  i = limit; i >= 0; i--)      
     {
     
        ///if(MTFMAsPlotHist==True)        
           //{
         HMAHistMergeBuff[i]=(2*iMAOnArray(DataMAsHistBuff    ,Bars ,mid_p,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAsHistBuff   ,Bars ,MAsPlotHistPeriod,0,MODE_LWMA,i));
          //}              
         //---------------------------------------------------------------------------------------------------
         //--------------------------------------------------------------------------------------------------- 
         //if(MTFMAs1PlotHist==True)        
           //{            
         HMA1HistMergeBuff[i]=(2*iMAOnArray(DataMAs1HistBuff   ,Bars ,mid_p1,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs1HistBuff  ,Bars ,MAs1PlotHistPeriod,0,MODE_LWMA,i));
           //}
         //---------------------------------------------------------------------------------------------------
         //---------------------------------------------------------------------------------------------------
         //if(MTFMAs2PlotHist==True)        
           //{            
         HMA2HistMergeBuff[i]=(2*iMAOnArray(DataMAs2HistBuff   ,Bars ,mid_p2,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs2HistBuff  ,Bars ,MAs2PlotHistPeriod,0,MODE_LWMA,i));
           //}
         //---------------------------------------------------------------------------------------------------
         //---------------------------------------------------------------------------------------------------
         
         //if(MTFMAs3PlotHist==True)        
           //{            
         HMA3HistMergeBuff[i]=(2*iMAOnArray(DataMAs3HistBuff   ,Bars ,mid_p3,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs3HistBuff  ,Bars ,MAs3PlotHistPeriod,0,MODE_LWMA,i));
           //}
   //=====================================================================================================================================================
   //=====================================================================================================================================================
   
         //if(MTFMAsSignalHist==True)        
           //{
         HMAHist1MergeBuff[i]=(2*iMAOnArray(DataMAsHist1Buff   ,Bars ,mid_p4,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAsHist1Buff  ,Bars ,MAsSignalHistPeriod,0,MODE_LWMA,i));
                        
           //}
         //---------------------------------------------------------------------------------------------------
         //---------------------------------------------------------------------------------------------------
         //if(MTFMAs1SignalHist==True)        
           //{
         HMA1Hist1MergeBuff[i]=(2*iMAOnArray(DataMAs1Hist1Buff  ,Bars ,mid_p5,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs1Hist1Buff ,Bars ,MAs1SignalHistPeriod,0,MODE_LWMA,i));
                        
           //}
           
         //---------------------------------------------------------------------------------------------------
         //---------------------------------------------------------------------------------------------------
         //if(MTFMAs2SignalHist==True)        
           //{
         HMA2Hist1MergeBuff[i]=(2*iMAOnArray(DataMAs2Hist1Buff  ,Bars ,mid_p6,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs2Hist1Buff ,Bars ,MAs2SignalHistPeriod,0,MODE_LWMA,i));
                        
           //}
           
         //---------------------------------------------------------------------------------------------------
         //---------------------------------------------------------------------------------------------------
         //if(MTFMAs3SignalHist==True)        
           //{
         HMA3Hist1MergeBuff[i]=(2*iMAOnArray(DataMAs3Hist1Buff  ,Bars ,mid_p7,0,MODE_LWMA,i))
                                 -(iMAOnArray(DataMAs3Hist1Buff ,Bars ,MAs3SignalHistPeriod,0,MODE_LWMA,i));
                        
          // } 
           
   
       //}
   //=====================================================================================================================================================
   //=====================================================================================================================================================

   }
   
//=====================================================================================================================================================
//=====================================================================================================================================================

   //if(MTFMAsPlotHist==True)        
     //{
   int weightsum=0;
   for(int HMA=sqrt_p; HMA>0; HMA--)
      weightsum+=HMA;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p,HMAHistMergeBuff,HMAHistMergeExt,weightsum);
     //}
   //---------------------------------------------------------------------------------------------------
   //---------------------------------------------------------------------------------------------------
   //if(MTFMAs1PlotHist==True)        
    // {
   int weightsum1=0;
   for(int HMA1=sqrt_p1; HMA1>0; HMA1--)
      weightsum1+=HMA1;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p1,HMA1HistMergeBuff,HMA1HistMergeExt,weightsum1);
     //}
   //---------------------------------------------------------------------------------------------------
   //---------------------------------------------------------------------------------------------------

   //if(MTFMAs2PlotHist==True)        
     //{
   int weightsum2=0;
   for(int HMA2=sqrt_p2; HMA2>0; HMA2--)
      weightsum2+=HMA2;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p2,HMA2HistMergeBuff,HMA2HistMergeExt,weightsum2);
     //}
   //---------------------------------------------------------------------------------------------------
   //---------------------------------------------------------------------------------------------------
   //if(MTFMAs3PlotHist==True)        
     //{
   int weightsum3=0;
   for(int HMA3=sqrt_p3; HMA3>0; HMA3--)
      weightsum3+=HMA3;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p3,HMA3HistMergeBuff,HMA3HistMergeExt,weightsum3);
     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
   //if(MTFMAsSignalHist==True)        
     //{
   int weightsum4=0;
   for(int HMA4=sqrt_p4; HMA4>0; HMA4--)
      weightsum4+=HMA4;
   //3rd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p4,HMAHist1MergeBuff,HMAHist1MergeExt,weightsum4);
     //}
   //---------------------------------------------------------------------------------------------------
   //---------------------------------------------------------------------------------------------------
   //if(MTFMAs1SignalHist==True)        
     //{
   int weightsum5=0;
   for(int HMA5=sqrt_p5; HMA5>0; HMA5--)
      weightsum5+=HMA5;
   //4th buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p5,HMA1Hist1MergeBuff,HMA1Hist1MergeExt,weightsum5);
     //}
      //---------------------------------------------------------------------------------------------------
      //---------------------------------------------------------------------------------------------------

   //if(MTFMAs2SignalHist==True)        
     //{
   int weightsum6=0;
   for(int HMA6=sqrt_p6; HMA6>0; HMA6--)
      weightsum6+=HMA6;
   //3rd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p6,HMA2Hist1MergeBuff,HMA2Hist1MergeExt,weightsum6);
     //}
   //---------------------------------------------------------------------------------------------------
   //---------------------------------------------------------------------------------------------------
   //if(MTFMAs3SignalHist==True)        
     //{
   int weightsum7=0;
   for(int HMA7=sqrt_p7; HMA7>0; HMA7--)
      weightsum7+=HMA7;
   //4th buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p7,HMA3Hist1MergeBuff,HMA3Hist1MergeExt,weightsum7);
     //}      
//=====================================================================================================================================================
//=====================================================================================================================================================

   for(  i = limit; i >= 0; i--)      
     {

      //--------------------------------------------------------------------
      switch(MAsPlotHistMethod)
        {
         case 0:
           {
            MAsHistChoicesBuff [i]  = iMAOnArray(DataMAsHistBuff, Bars, MAsPlotHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAsHistChoicesBuff [i] = iMAOnArray(DataMAsHistBuff, Bars, MAsPlotHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAsHistChoicesBuff [i] = iMAOnArray(DataMAsHistBuff, Bars, MAsPlotHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAsHistChoicesBuff [i] = iMAOnArray(DataMAsHistBuff, Bars, MAsPlotHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAsHistChoicesBuff [i] = HMAHistMergeExt[i];
            break;
           } 
        }
       
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAsHistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAsHistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAsHistChoicesBuff[i]>MAsHistChoicesBuff[i+1])
           {
            MAsHistChoicesSlopeUPBuff[i] = MAsHistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAsHistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAsHistChoicesSlopeDownBuff[i] = MAsHistChoicesBuff[i];
               }
            
           }
         else 
           {
            MAsHistChoicesSlopeDownBuff[i] = MAsHistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAsHistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAsHistChoicesSlopeUPBuff[i] = MAsHistChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAsHistChoicesBuff[i]>0)
           {
            MAsHistChoicesSlopeUPBuff[i] = MAsHistChoicesBuff[i];
            if(MAsHistChoicesBuff[i+1]<0)
               MAsHistChoicesSlopeUPBuff[i+1]=MAsHistChoicesBuff[i+1];
            MAsHistChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAsHistChoicesBuff[i]<0)
              {
               MAsHistChoicesSlopeDownBuff[i] = MAsHistChoicesBuff[i];
               if(MAsHistChoicesBuff[i+1]>0)
                  MAsHistChoicesSlopeDownBuff[i+1]=MAsHistChoicesBuff[i+1];
               MAsHistChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAsHistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAsHistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAsHistChoicesBuff[i]>MAsHistChoicesBuff[i+1])
              {
               MAsHistChoicesSlopeUPBuff[i]              = MAsHistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAsHistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAsHistChoicesSlopeZUPBuff[i]   = MAsHistChoicesBuff[i];
                  MAsHistChoicesSlopeZUPBuff[i+1] = MAsHistChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAsHistChoicesSlopeDownBuff[i]              = MAsHistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAsHistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAsHistChoicesSlopeZDownBuff[i]   = MAsHistChoicesBuff[i];
                 MAsHistChoicesSlopeZDownBuff[i+1] = MAsHistChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
      //if(MTFMAs1PlotHist==True)        
        //{
      switch(MAs1PlotHistMethod)
        {
         case 0:
           {
            MAs1HistChoicesBuff [i]  = iMAOnArray(DataMAs1HistBuff, Bars, MAs1PlotHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs1HistChoicesBuff [i] = iMAOnArray(DataMAs1HistBuff, Bars, MAs1PlotHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs1HistChoicesBuff [i] = iMAOnArray(DataMAs1HistBuff, Bars, MAs1PlotHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs1HistChoicesBuff [i] = iMAOnArray(DataMAs1HistBuff, Bars, MAs1PlotHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs1HistChoicesBuff [i] = HMA1HistMergeExt[i];
            break;
           } 
           
        }
        
         
        
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs1HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs1HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs1HistChoicesBuff[i]>MAs1HistChoicesBuff[i+1])
           {
            MAs1HistChoicesSlopeUPBuff[i] = MAs1HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs1HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs1HistChoicesSlopeDownBuff[i] = MAs1HistChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs1HistChoicesSlopeDownBuff[i] = MAs1HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs1HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs1HistChoicesSlopeUPBuff[i] = MAs1HistChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs1HistChoicesBuff[i]>0)
           {
            MAs1HistChoicesSlopeUPBuff[i] = MAs1HistChoicesBuff[i];
            if(MAs1HistChoicesBuff[i+1]<0)
               MAs1HistChoicesSlopeUPBuff[i+1]=MAs1HistChoicesBuff[i+1];
            MAs1HistChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs1HistChoicesBuff[i]<0)
              {
               MAs1HistChoicesSlopeDownBuff[i] = MAs1HistChoicesBuff[i];
               if(MAs1HistChoicesBuff[i+1]>0)
                  MAs1HistChoicesSlopeDownBuff[i+1]=MAs1HistChoicesBuff[i+1];
               MAs1HistChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs1HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs1HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs1HistChoicesBuff[i]>MAs1HistChoicesBuff[i+1])
              {
               MAs1HistChoicesSlopeUPBuff[i]              = MAs1HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs1HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs1HistChoicesSlopeZUPBuff[i]   = MAs1HistChoicesBuff[i];
                  MAs1HistChoicesSlopeZUPBuff[i+1] = MAs1HistChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs1HistChoicesSlopeDownBuff[i]              = MAs1HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs1HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs1HistChoicesSlopeZDownBuff[i]   = MAs1HistChoicesBuff[i];
                 MAs1HistChoicesSlopeZDownBuff[i+1] = MAs1HistChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
 
//=======================================================================================================================================================
 //======================================================================================================================================================
      //if(MTFMAs2PlotHist==True)        
        //{
      switch(MAs2PlotHistMethod)
        {
         case 0:
           {
            MAs2HistChoicesBuff [i]  = iMAOnArray(DataMAs2HistBuff, Bars, MAs2PlotHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs2HistChoicesBuff [i] = iMAOnArray(DataMAs2HistBuff, Bars, MAs2PlotHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs2HistChoicesBuff [i] = iMAOnArray(DataMAs2HistBuff, Bars, MAs2PlotHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs2HistChoicesBuff [i] = iMAOnArray(DataMAs2HistBuff, Bars, MAs2PlotHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs2HistChoicesBuff [i] = HMA2HistMergeExt[i];
            break;
           } 
           
        }
        
 
//=====================================================================================================================================================
//=====================================================================================================================================================
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs2HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs2HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs2HistChoicesBuff[i]>MAs2HistChoicesBuff[i+1])
           {
            MAs2HistChoicesSlopeUPBuff[i] = MAs2HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs2HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs2HistChoicesSlopeDownBuff[i] = MAs2HistChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs2HistChoicesSlopeDownBuff[i] = MAs2HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs2HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs2HistChoicesSlopeUPBuff[i] = MAs2HistChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs2HistChoicesBuff[i]>0)
           {
            MAs2HistChoicesSlopeUPBuff[i] = MAs2HistChoicesBuff[i];
            if(MAs2HistChoicesBuff[i+1]<0)
               MAs2HistChoicesSlopeUPBuff[i+1]=MAs2HistChoicesBuff[i+1];
            MAs2HistChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs2HistChoicesBuff[i]<0)
              {
               MAs2HistChoicesSlopeDownBuff[i] = MAs2HistChoicesBuff[i];
               if(MAs2HistChoicesBuff[i+1]>0)
                  MAs2HistChoicesSlopeDownBuff[i+1]=MAs2HistChoicesBuff[i+1];
               MAs2HistChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs2HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs2HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs2HistChoicesBuff[i]>MAs2HistChoicesBuff[i+1])
              {
               MAs2HistChoicesSlopeUPBuff[i]              = MAs2HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs2HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs2HistChoicesSlopeZUPBuff[i]   = MAs2HistChoicesBuff[i];
                  MAs2HistChoicesSlopeZUPBuff[i+1] = MAs2HistChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs2HistChoicesSlopeDownBuff[i]              = MAs2HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs2HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs2HistChoicesSlopeZDownBuff[i]   = MAs2HistChoicesBuff[i];
                 MAs2HistChoicesSlopeZDownBuff[i+1] = MAs2HistChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
      //if(MTFMAs3PlotHist==True)        
        //{
      switch(MAs3PlotHistMethod)
        {
         case 0:
           {
            MAs3HistChoicesBuff [i]  = iMAOnArray(DataMAs3HistBuff, Bars, MAs3PlotHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs3HistChoicesBuff [i] = iMAOnArray(DataMAs3HistBuff, Bars, MAs3PlotHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs3HistChoicesBuff [i] = iMAOnArray(DataMAs3HistBuff, Bars, MAs3PlotHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs3HistChoicesBuff [i] = iMAOnArray(DataMAs3HistBuff, Bars, MAs3PlotHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs3HistChoicesBuff [i] = HMA3HistMergeExt[i];
            break;
           } 
           
        }
        
 
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs3HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs3HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs3HistChoicesBuff[i]>MAs3HistChoicesBuff[i+1])
           {
            MAs3HistChoicesSlopeUPBuff[i] = MAs3HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs3HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs3HistChoicesSlopeDownBuff[i] = MAs3HistChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs3HistChoicesSlopeDownBuff[i] = MAs3HistChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs3HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs3HistChoicesSlopeUPBuff[i] = MAs3HistChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs3HistChoicesBuff[i]>0)
           {
            MAs3HistChoicesSlopeUPBuff[i] = MAs3HistChoicesBuff[i];
            if(MAs3HistChoicesBuff[i+1]<0)
               MAs3HistChoicesSlopeUPBuff[i+1]=MAs3HistChoicesBuff[i+1];
            MAs3HistChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs3HistChoicesBuff[i]<0)
              {
               MAs3HistChoicesSlopeDownBuff[i] = MAs3HistChoicesBuff[i];
               if(MAs3HistChoicesBuff[i+1]>0)
                  MAs3HistChoicesSlopeDownBuff[i+1]=MAs3HistChoicesBuff[i+1];
               MAs3HistChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs3HistChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs3HistChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs3HistChoicesBuff[i]>MAs3HistChoicesBuff[i+1])
              {
               MAs3HistChoicesSlopeUPBuff[i]              = MAs3HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs3HistChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs3HistChoicesSlopeZUPBuff[i]   = MAs3HistChoicesBuff[i];
                  MAs3HistChoicesSlopeZUPBuff[i+1] = MAs3HistChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs3HistChoicesSlopeDownBuff[i]              = MAs3HistChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs3HistChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs3HistChoicesSlopeZDownBuff[i]   = MAs3HistChoicesBuff[i];
                 MAs3HistChoicesSlopeZDownBuff[i+1] = MAs3HistChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
      //if(MTFMAsSignalHist==True)        
        //{
      switch(MAsSignalHistMethod)
        {
         case 0:
           {
            MAsHist1ChoicesBuff [i]  = iMAOnArray(DataMAsHist1Buff, Bars, MAsSignalHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAsHist1ChoicesBuff [i] = iMAOnArray(DataMAsHist1Buff, Bars, MAsSignalHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAsHist1ChoicesBuff [i] = iMAOnArray(DataMAsHist1Buff, Bars, MAsSignalHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAsHist1ChoicesBuff [i] = iMAOnArray(DataMAsHist1Buff, Bars, MAsSignalHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAsHist1ChoicesBuff [i] = HMAHist1MergeExt[i];
            break;
           } 
           
        }
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAsHist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAsHist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAsHist1ChoicesBuff[i]>MAsHist1ChoicesBuff[i+1])
           {
            MAsHist1ChoicesSlopeUPBuff[i] = MAsHist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAsHist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAsHist1ChoicesSlopeDownBuff[i] = MAsHist1ChoicesBuff[i];
               }
            
           }
         else 
           {
            MAsHist1ChoicesSlopeDownBuff[i] = MAsHist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAsHist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAsHist1ChoicesSlopeUPBuff[i] = MAsHist1ChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAsHist1ChoicesBuff[i]>0)
           {
            MAsHist1ChoicesSlopeUPBuff[i] = MAsHist1ChoicesBuff[i];
            if(MAsHist1ChoicesBuff[i+1]<0)
               MAsHist1ChoicesSlopeUPBuff[i+1]=MAsHist1ChoicesBuff[i+1];
            MAsHist1ChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAsHist1ChoicesBuff[i]<0)
              {
               MAsHist1ChoicesSlopeDownBuff[i] = MAsHist1ChoicesBuff[i];
               if(MAsHist1ChoicesBuff[i+1]>0)
                  MAsHist1ChoicesSlopeDownBuff[i+1]=MAsHist1ChoicesBuff[i+1];
               MAsHist1ChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAsHist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAsHist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAsHist1ChoicesBuff[i]>MAsHist1ChoicesBuff[i+1])
              {
               MAsHist1ChoicesSlopeUPBuff[i]              = MAsHist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAsHist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAsHist1ChoicesSlopeZUPBuff[i]   = MAsHist1ChoicesBuff[i];
                  MAsHist1ChoicesSlopeZUPBuff[i+1] = MAsHist1ChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAsHist1ChoicesSlopeDownBuff[i]              = MAsHist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAsHist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAsHist1ChoicesSlopeZDownBuff[i]   = MAsHist1ChoicesBuff[i];
                 MAsHist1ChoicesSlopeZDownBuff[i+1] = MAsHist1ChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}
//=====================================================================================================================================================
//=====================================================================================================================================================
      //if(MTFMAs1SignalHist==True)        
        //{
      switch(MAs1SignalHistMethod)  
        {
         case 0:
           {
            MAs1Hist1ChoicesBuff [i]  = iMAOnArray(DataMAs1Hist1Buff, Bars, MAs1SignalHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs1Hist1ChoicesBuff [i] = iMAOnArray(DataMAs1Hist1Buff, Bars, MAs1SignalHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs1Hist1ChoicesBuff [i] = iMAOnArray(DataMAs1Hist1Buff, Bars, MAs1SignalHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs1Hist1ChoicesBuff [i] = iMAOnArray(DataMAs1Hist1Buff, Bars, MAs1SignalHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs1Hist1ChoicesBuff [i] = HMA1Hist1MergeExt[i];
            break;
           } 
           
        }
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs1Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs1Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs1Hist1ChoicesBuff[i]>MAs1Hist1ChoicesBuff[i+1])
           {
            MAs1Hist1ChoicesSlopeUPBuff[i] = MAs1Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs1Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs1Hist1ChoicesSlopeDownBuff[i] = MAs1Hist1ChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs1Hist1ChoicesSlopeDownBuff[i] = MAs1Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs1Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs1Hist1ChoicesSlopeUPBuff[i] = MAs1Hist1ChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs1Hist1ChoicesBuff[i]>0)
           {
            MAs1Hist1ChoicesSlopeUPBuff[i] = MAs1Hist1ChoicesBuff[i];
            if(MAs1Hist1ChoicesBuff[i+1]<0)
               MAs1Hist1ChoicesSlopeUPBuff[i+1]=MAs1Hist1ChoicesBuff[i+1];
            MAs1Hist1ChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs1Hist1ChoicesBuff[i]<0)
              {
               MAs1Hist1ChoicesSlopeDownBuff[i] = MAs1Hist1ChoicesBuff[i];
               if(MAs1Hist1ChoicesBuff[i+1]>0)
                  MAs1Hist1ChoicesSlopeDownBuff[i+1]=MAs1Hist1ChoicesBuff[i+1];
               MAs1Hist1ChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs1Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs1Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs1Hist1ChoicesBuff[i]>MAs1Hist1ChoicesBuff[i+1])
              {
               MAs1Hist1ChoicesSlopeUPBuff[i]              = MAs1Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs1Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs1Hist1ChoicesSlopeZUPBuff[i]   = MAs1Hist1ChoicesBuff[i];
                  MAs1Hist1ChoicesSlopeZUPBuff[i+1] = MAs1Hist1ChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs1Hist1ChoicesSlopeDownBuff[i]              = MAs1Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs1Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs1Hist1ChoicesSlopeZDownBuff[i]   = MAs1Hist1ChoicesBuff[i];
                 MAs1Hist1ChoicesSlopeZDownBuff[i+1] = MAs1Hist1ChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

    // }       
//=======================================================================================================================================================
//=======================================================================================================================================================
      //if(MTFMAs2SignalHist==True)        
        //{
      switch(MAs2SignalHistMethod)  
        {
         case 0:
           {
            MAs2Hist1ChoicesBuff [i]  = iMAOnArray(DataMAs2Hist1Buff, Bars, MAs2SignalHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs2Hist1ChoicesBuff [i] = iMAOnArray(DataMAs2Hist1Buff, Bars, MAs2SignalHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs2Hist1ChoicesBuff [i] = iMAOnArray(DataMAs2Hist1Buff, Bars, MAs2SignalHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs2Hist1ChoicesBuff [i] = iMAOnArray(DataMAs2Hist1Buff, Bars, MAs2SignalHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs2Hist1ChoicesBuff [i] = HMA2Hist1MergeExt[i];
            break;
           } 
           
        }
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs2Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs2Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs2Hist1ChoicesBuff[i]>MAs2Hist1ChoicesBuff[i+1])
           {
            MAs2Hist1ChoicesSlopeUPBuff[i] = MAs2Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs2Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs2Hist1ChoicesSlopeDownBuff[i] = MAs2Hist1ChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs2Hist1ChoicesSlopeDownBuff[i] = MAs2Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs2Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs2Hist1ChoicesSlopeUPBuff[i] = MAs2Hist1ChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs2Hist1ChoicesBuff[i]>0)
           {
            MAs2Hist1ChoicesSlopeUPBuff[i] = MAs2Hist1ChoicesBuff[i];
            if(MAs2Hist1ChoicesBuff[i+1]<0)
               MAs2Hist1ChoicesSlopeUPBuff[i+1]=MAs2Hist1ChoicesBuff[i+1];
            MAs2Hist1ChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs2Hist1ChoicesBuff[i]<0)
              {
               MAs2Hist1ChoicesSlopeDownBuff[i] = MAs2Hist1ChoicesBuff[i];
               if(MAs2Hist1ChoicesBuff[i+1]>0)
                  MAs2Hist1ChoicesSlopeDownBuff[i+1]=MAs2Hist1ChoicesBuff[i+1];
               MAs2Hist1ChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs2Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs2Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs2Hist1ChoicesBuff[i]>MAs2Hist1ChoicesBuff[i+1])
              {
               MAs2Hist1ChoicesSlopeUPBuff[i]              = MAs2Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs2Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs2Hist1ChoicesSlopeZUPBuff[i]   = MAs2Hist1ChoicesBuff[i];
                  MAs2Hist1ChoicesSlopeZUPBuff[i+1] = MAs2Hist1ChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs2Hist1ChoicesSlopeDownBuff[i]              = MAs2Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs2Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs2Hist1ChoicesSlopeZDownBuff[i]   = MAs2Hist1ChoicesBuff[i];
                 MAs2Hist1ChoicesSlopeZDownBuff[i+1] = MAs2Hist1ChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

     //}  
     
//=======================================================================================================================================================
//=======================================================================================================================================================
      //if(MTFMAs3SignalHist==True)        
        //{
      switch(MAs3SignalHistMethod)  
        {
         case 0:
           {
            MAs3Hist1ChoicesBuff [i]  = iMAOnArray(DataMAs3Hist1Buff, Bars, MAs3SignalHistPeriod,0,MODE_SMA, i);
            break;
           }
         case 1:
           {
            MAs3Hist1ChoicesBuff [i] = iMAOnArray(DataMAs3Hist1Buff, Bars, MAs3SignalHistPeriod,0,MODE_EMA, i); 
            break;
           }
         case 2:
           {
            MAs3Hist1ChoicesBuff [i] = iMAOnArray(DataMAs3Hist1Buff, Bars, MAs3SignalHistPeriod,0,MODE_SMMA, i); 
            break;
           }
         case 3:
           {
            MAs3Hist1ChoicesBuff [i] = iMAOnArray(DataMAs3Hist1Buff, Bars, MAs3SignalHistPeriod,0,MODE_LWMA, i); 
            break;
           }
         case 4:
           {
            MAs3Hist1ChoicesBuff [i] = HMA3Hist1MergeExt[i];
            break;
           } 
           
        }
//=====================================================================================================================================================
//=====================================================================================================================================================

      if(Zero_Slope_Colour == 0)
         {
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         MAs3Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;
         MAs3Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
         //trend_1[i]  = (i<Bars-1) ? (ExtSignalBuffer1[i]>ExtSignalBuffer1[i+1]) ? 1 : (ExtSignalBuffer1[i]<ExtSignalBuffer1[i+1]) ? -1 : trend_1[i+1] : 0;
         
         if(MAs3Hist1ChoicesBuff[i]>MAs3Hist1ChoicesBuff[i+1])
           {
            MAs3Hist1ChoicesSlopeUPBuff[i] = MAs3Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs3Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE){
               MAs3Hist1ChoicesSlopeDownBuff[i] = MAs3Hist1ChoicesBuff[i];
               }
            
           }
         else 
           {
            MAs3Hist1ChoicesSlopeDownBuff[i] = MAs3Hist1ChoicesBuff[i];
            if(i <  (rates_total-1)&& MAs3Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE){
              MAs3Hist1ChoicesSlopeUPBuff[i] = MAs3Hist1ChoicesBuff[i];
              }
            
           }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {

         //trend[i]  = (i<Bars-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
         //MAsHistChoicesSlopeZUPBuff[s]   =  EMPTY_VALUE;
         //MAsHistChoicesSlopeZDownBuff[s] =  EMPTY_VALUE;
         
         if(MAs3Hist1ChoicesBuff[i]>0)
           {
            MAs3Hist1ChoicesSlopeUPBuff[i] = MAs3Hist1ChoicesBuff[i];
            if(MAs3Hist1ChoicesBuff[i+1]<0)
               MAs3Hist1ChoicesSlopeUPBuff[i+1]=MAs3Hist1ChoicesBuff[i+1];
            MAs3Hist1ChoicesSlopeDownBuff[i] = EMPTY_VALUE;
           }
         else
            if(MAs3Hist1ChoicesBuff[i]<0)
              {
               MAs3Hist1ChoicesSlopeDownBuff[i] = MAs3Hist1ChoicesBuff[i];
               if(MAs3Hist1ChoicesBuff[i+1]>0)
                  MAs3Hist1ChoicesSlopeDownBuff[i+1]=MAs3Hist1ChoicesBuff[i+1];
               MAs3Hist1ChoicesSlopeUPBuff[i] = EMPTY_VALUE;
              }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------


      if(Zero_Slope_Colour == 2)
         {

            MAs3Hist1ChoicesSlopeUPBuff[i]   =  EMPTY_VALUE;        
            MAs3Hist1ChoicesSlopeDownBuff[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(MAs3Hist1ChoicesBuff[i]>MAs3Hist1ChoicesBuff[i+1])
              {
               MAs3Hist1ChoicesSlopeUPBuff[i]              = MAs3Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs3Hist1ChoicesSlopeUPBuff[i+1] == EMPTY_VALUE )){
                  MAs3Hist1ChoicesSlopeZUPBuff[i]   = MAs3Hist1ChoicesBuff[i];
                  MAs3Hist1ChoicesSlopeZUPBuff[i+1] = MAs3Hist1ChoicesBuff[i+1];
                  //------------------------------------------------------
                  }
               
              }
            else 
              {
               MAs3Hist1ChoicesSlopeDownBuff[i]              = MAs3Hist1ChoicesBuff[i];
               //------------------------------------------------------
               if(i <  (rates_total-1)&& (MAs3Hist1ChoicesSlopeDownBuff[i+1] == EMPTY_VALUE  )){
                 MAs3Hist1ChoicesSlopeZDownBuff[i]   = MAs3Hist1ChoicesBuff[i];
                 MAs3Hist1ChoicesSlopeZDownBuff[i+1] = MAs3Hist1ChoicesBuff[i+1];
                 //------------------------------------------------------
                 }
               
              }
        }

    // }  
//=======================================================================================================================================================
//======================================================================================================================================================= 
      //Choosing BB raw data to draw on
      switch(BBDataChoice)
        {
         case 0:
           {
            BBDataBuff[i] = MTFHistBuff[i];   
            break;
           }
         case 1:
           {
            BBDataBuff[i] = MTFHist1Buff[i];
            break;
           }
         case 2:
           {
            BBDataBuff[i] = MAsHistChoicesBuff[i];
            break;
           }
         case 3:
           {
            BBDataBuff[i] = MAs1HistChoicesBuff[i];
            break;
           }
           
         case 4:
           {
            BBDataBuff[i] = MAs2HistChoicesBuff[i];
            break;
           }
           
         case 5:
           {
            BBDataBuff[i] = MAs3HistChoicesBuff[i];
            break;
           }
           
           
         case 6:
           {
            BBDataBuff[i] = MAsHist1ChoicesBuff[i];
            break;
           }
           
         case 7:
           {
            BBDataBuff[i] = MAs1Hist1ChoicesBuff[i];
            break;
           }
         case 8:
           {
            BBDataBuff[i] = MAs2Hist1ChoicesBuff[i];
            break;
           }
         case 9:
           {
            BBDataBuff[i] = MAs3Hist1ChoicesBuff[i];
            break;
           }

        }
        
        
      //Calculating Bollinger Bands
      BBMidBand[i]   = iMAOnArray(   BBDataBuff, Bars, BBMAPeriod, 0      , BBMAMethod   , i);  
      BBUpperBand[i] = iBandsOnArray(BBDataBuff, Bars, BBMAPeriod, BBWidth, 0, MODE_UPPER, i);
      BBLowerBand[i] = iBandsOnArray(BBDataBuff, Bars, BBMAPeriod, BBWidth, 0,MODE_LOWER , i);
 //=====================================================================================================================================================
 //=====================================================================================================================================================

   }

//=====================================================================================================================================================
//=====================================================================================================================================================
   //1st for loop to calculate the dev and the MAs buffers
   //------------------------------------------------------
   //for(  int s = (rates_total)-(  prev_calculated); s >= 0; s--) 
   //int countedBars = IndicatorCounted();
   /*
   if(countedBars < 0)
      countedBars = 0;
   //int limits;
   if(countedBars > 0)
      countedBars--;
   limits = rates_total - countedBars;
   */
   
   static int oldBarsss = 0;
   int counted_barsss=IndicatorCounted();
   int s,limitsss;

   if(counted_barsss<0) return(-1);
   if(counted_barsss>0) counted_barsss--;
           limitsss=MathMin(Bars-counted_barsss,Bars-1);
           if (oldBarsss!=Bars)
           {
               //deleteCandles();
                  oldBarsss = Bars;
                  limitsss   = Bars-1;
           }      
   
   
   
   
   
   for(  s = limitsss; s >= 0; s--)      
     {
     
      if(AutoRefreshDots == 1)
        {
            CrossUp[s]   = EMPTY_VALUE;
            CrossDown[s] = EMPTY_VALUE;
        }
        
      if(Dots_Activation ==  True)  
         { 
          if(Options == 0)  
           {
   
            switch(DotsCurve)  
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }

              }
              
              
           }
    //=====================================================================================================================================================
    //=====================================================================================================================================================
      //---HistWithMAs1Hist = 1, 
      // Hist With MAs1Hist    
      //------------------------

          if(Options == 1)  
           {
   
            switch(DotsCurve)   
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                
              }
              
              
           }
   //=====================================================================================================================================================
   //=====================================================================================================================================================
      //---HistWithMAsHist1 = 2,
      // Hist With MAsHist1    
      //-------------------------
          if(Options == 2)  
           {
   
            switch(DotsCurve)  
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s] && MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAsHist1ChoicesBuff[s]  && MTFHist1Buff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
   
              }
              
              
           }
   //=====================================================================================================================================================
   //=====================================================================================================================================================
     //---HistWithMAs1Hist1 = 3,
     // Hist With MAs1Hist1
     //-------------------------
          
          if(Options == 3)  
           {
   
            switch(DotsCurve)  
              {
               case 0:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
              }
              
              
           }
    
   //=====================================================================================================================================================
   //=====================================================================================================================================================   
       //------Hist1WithMAsHist = 4,  
      // Hist1 With MAsHist   

     //-----------------------------
          if(Options == 4)  
           {
   
            switch(DotsCurve)  
              {
               case 0:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAsHistChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAsHistChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAsHistChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAsHistChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAsHistChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAsHistChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAsHistChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAsHistChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAsHistChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAsHistChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
              }
              
              
           }
    //=====================================================================================================================================================
    //=====================================================================================================================================================
        //----Hist1WithMAs1Hist = 5, 
       // Hist1 With MAs1Hist
      //----------------------------
          if(Options == 5)  
           {
   
            switch(DotsCurve) 
              {
               case 0:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1HistChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1HistChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1HistChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1HistChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1HistChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1HistChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1HistChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1HistChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MAsHist1ChoicesBuff[s] > MAs1HistChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MAsHist1ChoicesBuff[s] < MAs1HistChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
              }
              
              
           }
    //=====================================================================================================================================================
    //=====================================================================================================================================================
        //-------Hist1WithMAsHist1 = 6,  
       // Hist1 With MAsHist1
      //-------------------------------
          if(Options == 6)  
           {
   
            switch(DotsCurve) 
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > MAs2Hist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs2Hist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > MAs2Hist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs2Hist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > MAs2Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs2Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > MAs2Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs2Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > MAs2Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs2Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                  
              }
              
              
           } 
    //=====================================================================================================================================================
    //=====================================================================================================================================================
    //=====================================================================================================================================================
    //=====================================================================================================================================================
        //-------Hist1WithMAsHist1 = 6,  
       // Hist1 With MAsHist1
      //-------------------------------
          if(Options == 7)  
           {
   
            switch(DotsCurve) 
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > MAs3Hist1ChoicesBuff[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs3Hist1ChoicesBuff[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > MAs3Hist1ChoicesBuff[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < MAs3Hist1ChoicesBuff[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > MAs3Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs3Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > MAs3Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs3Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > MAs3Hist1ChoicesBuff[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < MAs3Hist1ChoicesBuff[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                  
              }
              
              
           } 
    //=====================================================================================================================================================
    //=====================================================================================================================================================
        //-------Hist1WithMAsHist1 = 6,  
       // Hist1 With MAsHist1
      //-------------------------------
          if(Options == 8) 
           {
   
            switch(DotsCurve) 
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > BBUpperBand[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < BBUpperBand[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > BBUpperBand[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < BBUpperBand[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > BBUpperBand[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBUpperBand[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > BBUpperBand[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBUpperBand[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > BBUpperBand[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBUpperBand[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                  
              }
              
              
           } 
    //=====================================================================================================================================================
    //=====================================================================================================================================================
    //=====================================================================================================================================================
        //-------Hist1WithMAsHist1 = 6,  
       // Hist1 With MAsHist1
      //-------------------------------
          if(Options == 9)  
           {
   
            switch(DotsCurve) 
              {
               case 0:
                 {
                  if(MTFHist1Buff[s] > BBLowerBand[s])
                     CrossUp[s] = MTFHist1Buff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < BBLowerBand[s])
                        CrossDown[s] = MTFHist1Buff[s];
                    }
                  break;
                 }
   
               case 1:
                 {
                  if(MTFHist1Buff[s] > BBLowerBand[s])
                     CrossUp[s] = MAsHist1ChoicesBuff[s];
                  else
                    {
                     if(MTFHist1Buff[s] < BBLowerBand[s])
                        CrossDown[s] = MAsHist1ChoicesBuff[s];
                    }
                  break;
                 }
   
               case 2:
                 {
                  if(MTFHist1Buff[s] > BBLowerBand[s])
                     CrossUp[s] = MAs1Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBLowerBand[s])
                        CrossDown[s] = MAs1Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                 
               case 3:
                 {
                  if(MTFHist1Buff[s] > BBLowerBand[s])
                     CrossUp[s] = MAs2Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBLowerBand[s])
                        CrossDown[s] = MAs2Hist1ChoicesBuff[s];
                    }
                  break;
                 }
               case 4:
                 {
                  if(MTFHist1Buff[s] > BBLowerBand[s])
                     CrossUp[s] = MAs3Hist1ChoicesBuff[s];
   
                  else
                    {
                     if(MTFHist1Buff[s] < BBLowerBand[s])
                        CrossDown[s] = MAs3Hist1ChoicesBuff[s];
                    }
                  break;
                 }
                  
              }
              
              
           } 
    //=====================================================================================================================================================
    //=====================================================================================================================================================
  
         //if(MTFMAsPlotHist == False)
            //MAsHistChoicesBuff[s] = EMPTY_VALUE;        
         //---------------------------------------
         //if(MTFMAs1PlotHist == False)
           // MAs1HistChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------   
         //if(MTFMAs2PlotHist == False)
            //MAs2HistChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------   
         //if(MTFMAs3PlotHist == False)
            //MAs3HistChoicesBuff[s] = EMPTY_VALUE; 
         //---------------------------------------   
         //if(MTFMAsSignalHist == False)
            //MAsHist1ChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------
         //if(MTFMAs1SignalHist == False)
            //MAs1Hist1ChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------  
         //if(MTFMAs2SignalHist == False)
            //MAs2Hist1ChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------   
         //if(MTFMAs3SignalHist == False)
            //MAs3Hist1ChoicesBuff[s] = EMPTY_VALUE;
         //---------------------------------------   
         //--------------------------------------- 
          
           
       }
     }
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+

