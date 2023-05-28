//+------------------------------------------------------------------+
//|                                Diffrance_(3-Hulls)Indicators.mq4 |
//|                                                    Ahmad.Elsayed |
//|                                             https://www.mql4.com |
//+------------------------------------------------------------------+
//=========================================================================================================================================================================================================================================
//=========================================================================================================================================================================================================================================
                           //======================================(Part-1   Info)========================================
#property copyright   "2023@. Ahmad.Elsayed"
#property link        "https://www.mql4.com"
#property description "Diffrance_(3-Hulls)Indicators"
//=========================================================================================================================================================================================================================================
//=========================================================================================================================================================================================================================================
// import package of MA 
#include <MovingAverages.mqh>
// define Visualize Window
#property indicator_chart_window
//-------------------------------
//+------------------------------------------------------------------+
//|       Function include all MAs and Return its value              |
//+------------------------------------------------------------------+


//=================================================================================================================================================================================
//=================================================================================================================================================================================
                     //======================================(Part-2   Visualization of Indicators)========================================

// clear number of Buff
#property indicator_buffers 36
// Set which Indicator visualize use its Index and all Details:: 
//--------------------------------------------------------------
// 1st MAs Indicaor
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

#property indicator_color36 clrPurple
#property indicator_type36  DRAW_NONE
#property indicator_width36 2
#property indicator_label36 ""
//================================================================================================================================================================
//================================================================================================================================================================
double MAsSwitchCases(int MAscases ,int MAsAppliedPrice,int MasPeriod , double HMAsBuf[] ,int i)
  {

   double MAs_Values = 0;
   switch(MAscases)
     {
      case 0:
        {
         MAs_Values  = iMA(NULL, 0, MAs_Period , 0, MODE_SMA , MAs_Price , i);
         break;
        }
      case 1:
        {
         MAs_Values = iMA(NULL, 0, MAs_Period , 0, MODE_EMA , MAs_Price , i);
         break;
        }
      case 2:
        {
         MAs_Values = iMA(NULL, 0, MAs_Period , 0, MODE_SMMA , MAs_Price , i);
         break;
        }
      case 3:
        {
         MAs_Values = iMA(NULL, 0, MAs_Period , 0, MODE_LWMA , MAs_Price , i);
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
//================================================================================================================================================================
//================================================================================================================================================================
//+-------------------------+
//| Create Drop Down Lists  |
//+-------------------------+
// drop down list for slope cases
//--------------------------------
enum SlopeCases                 
                                
  {
   As_Previous_Slope_Colour               = 0,    //As Previous Slope Colour
   As_Next_Slope_Colour                   = 1,   //As Next Slope Colour
   Independent_of_Previous_or_Next_Colour = 2,  //Independent of Previous or Next Colour
  };


enum linesstyle
  {
   Lines  = DRAW_LINE,   //Lines   
   Hidden = DRAW_NONE,  //Hidden
  };
//-------------------------------
//-------------------------------
enum linestypes
  {
   Line  = STYLE_SOLID,  //SOLID   
   Dots  = STYLE_DOT,   //DOT
   Dachs = STYLE_DASH, //DASH
  };
  
//-------------------------------
enum MAs
  {
   Simple         = 0,     
   Exponential    = 1,   
   Smoothed       = 2, 
   LinearWeighted = 3,
   Hull           = 4,
   
   };
  
//================================================================================================================================================================
//================================================================================================================================================================
input string              MAsParam             ="----------- MAs Parameters-------------------";  
input bool                Show_Data_Window     = False;
input SlopeCases          Zero_Slope_Colour    = As_Next_Slope_Colour;
input MAs                 MAs_Choice_Type      = Simple;  
input ENUM_APPLIED_PRICE  MAs_Price            = 0; 
input int                 MAs_Period           = 15;           
input int                 MAs_Shift            = 0;  
/*
input linesstyle          MAsType              = Hidden; 
input ENUM_LINE_STYLE     MAsStyle             = 0; 
input color               MAsclr               = clrPurple;  
input int                 MAsWidth             = 1; 
*/


input linesstyle          MAsSlopeUpDownType    = Hidden; 
input ENUM_LINE_STYLE     MAsSlopeUpDownStyle   = 0; 
input color               MAsSlopeUpclr         = clrDeepSkyBlue;  
input color               MAsSlopeDownclr       = clrOrange;


input linesstyle          MAsSlopeZeroType       = Hidden;
input ENUM_LINE_STYLE     MAsSlopeZeroStyle      = 0;    
input color               MAsSlopeZeroClr        = clrGold; 
input int                 MAsSlopesWidth         = 1;  
//--------------------------------------------------------
//--------------------------------------------------------



//-------------------------------------------------------------------------
//------------------------------------------------------------------------- 
input string              MAs1Param             ="----------- MAs1 Parameters-------------------";
input MAs                 MAs1_Choice_Type      = Simple;  
input ENUM_APPLIED_PRICE  MAs1_Price            = 0; 
input int                 MAs1_Period           = 15;           
input int                 MAs1_Shift            = 0;  
/*
input linesstyle          MAs1_Type             = Hidden; 
input ENUM_LINE_STYLE     MAs1_Style            = 0; 
input color               MAs1_clr              = clrTeal;  
input int                 MAs1_Width            = 1;
*/


input linesstyle          MAs1SlopeUpDownType     = Hidden; 
input ENUM_LINE_STYLE     MAs1SlopeUpDownStyle   = 0; 
input color               MAs1SlopeUpclr         = clrDeepSkyBlue;  
input color               MAs1SlopeDownclr       = clrOrange;


input linesstyle          MAs1SlopeZeroType       = Hidden;
input ENUM_LINE_STYLE     MAs1SlopeZeroStyle      = 0;    
input color               MAs1SlopeZeroClr        = clrGold; 
input int                 MAs1SlopesWidth         = 1;  

//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
input string              MAs2Param             ="----------- MAs2 Parameters-------------------";
input MAs                 MAs2_Choice_Type      = Simple;  
input ENUM_APPLIED_PRICE  MAs2_Price            = 0; 
input int                 MAs2_Period           = 15;           
input int                 MAs2_Shift            = 0;  
/*
input linesstyle          MAs2_Type             = Hidden; 
input ENUM_LINE_STYLE     MAs2_Style            = 0; 
input color               MAs2_clr              = clrGreen;  
input int                 MAs2_Width            = 1;
*/



input linesstyle          MAs2SlopeUpDownType    = Hidden; 
input ENUM_LINE_STYLE     MAs2SlopeUpDownStyle   = 0; 
input color               MAs2SlopeUpclr         = clrDeepSkyBlue;  
input color               MAs2SlopeDownclr       = clrOrange;


input linesstyle          MAs2SlopeZeroType       = Hidden;
input ENUM_LINE_STYLE     MAs2SlopeZeroStyle      = 0;    
input color               MAs2SlopeZeroClr        = clrGold; 
input int                 MAs2SlopesWidth         = 1;  
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------  
//================================================================================================================================================================
//================================================================================================================================================================
// Which  HMA Selected for Diff  param:: 
//--------------------------------------

input string   Diff_MAs_Choices = "------------Diff MAs Choices------------";

// dropdown list for The HMA selection::
//--------------------------------------
enum Selected_MA
  {
   first_MA  =0,        //MA
   second_MA =1,       //MA1
   Third_MA  =2,      //MA2
  };
  
// The 1st Section HMA for diff::
//-------------------------------
input Selected_MA  first_Selected_MA  = first_MA;

// The 2nd Section HMA for diff::
//-------------------------------
input Selected_MA  second_Selected_MA = first_MA;

// factor value input param::
//---------------------------
input double   factor_value = 0.5; 
//================================================================================================================================================================
//================================================================================================================================================================
input string   Operation_MAs_Choices = "------------Operation MAs Choices------------";
// dropdown list for The Mathimatical operation selection::
//---------------------------------------------------------
enum Rules
  {
   Addition    =0,       //+
   subtraction =1,      //-
  };
//---------------------------
// The 1st Section HMA for diff::
//-------------------------------
input Selected_MA  first_Selected_MA1 = first_MA;
// Which  Operation Selected  input param:: 
//------------------------------------------
input Rules  Rule = Addition;


input linesstyle       DiffMAsSlopeUpDownType   = Hidden; 
input ENUM_LINE_STYLE  DiffMAsSlopeUpDownStyle  = 0; 
input color            DiffMAsSlopeUpclr        = clrTeal; 
input color            DiffMAsSlopeDownclr      = clrRed;


input linesstyle       DiffMAsSlopeZeroType     = Hidden;
input ENUM_LINE_STYLE  DiffMAsSlopeZeroStyle    = 0;    
input color            DiffMAsSlopeZeroClr      = clrGold; 
input int              DiffMAsSlopesWidth       = 1; 
//==============================================================================
//==============================================================================
input string   Operation_MAs1_Choices = "------------Operation MAs1 Choices------------";
// The 2nd Section HMA for diff::
//-------------------------------
input Selected_MA  second_Selected_MA1 = first_MA;
// Which  Operation Selected  input param:: 
//------------------------------------------
input Rules  Rule1 = Addition;
//------------------------------------------
input linesstyle      DiffMAs1SlopeUpDownType   = Hidden; 
input ENUM_LINE_STYLE DiffMAs1SlopeUpDownStyle  = 0; 
input color           DiffMAs1SlopeUpclr        = clrTeal;  
input color           DiffMAs1SlopeDownclr      = clrRed;


input linesstyle      DiffMAs1SlopeZeroType     = Hidden;
input ENUM_LINE_STYLE DiffMAs1SlopeZeroStyle    = 0;    
input color           DiffMAs1SlopeZeroClr      = clrGold; 
input int             DiffMAs1SlopesWidth       = 1; 
//================================================================================================================================================================
//================================================================================================================================================================
                     //======================================(Part-4   Clear all Buffers of Indicators)=======================================
// clear Buff of Indicators::
//============================
// HMA Buff for merge with MAs::
//------------------------------
double HMAMergeBuff         [];
//------------------------------
double HMAMergeExt          [];
//------------------------------
// MAs with HMA Selection::
//------------------------------
double MAsChoicesBuff      [];         
double MAsUPBuffer         [];
double MAsDownBuffer       [];
double MAsUpZeroSlope      [];
double MAsDownZeroSlope    [];

//------------------------------
// HMA1 Buff for merge with MAs::
//------------------------------
double HMA1MergeBuff        [];
//------------------------------
double HMA1MergeExt         [];
//------------------------------
// MA2s with HMA2 Selection::
//------------------------------
double MAs1ChoicesBuff      [];

double MAs1UPBuffer         [];
double MAs1DownBuffer       [];
double MAs1UpZeroSlope      [];
double MAs1DownZeroSlope    [];
//------------------------------
// HMA2 Buff for merge with MAs::
//------------------------------
double HMA2MergeBuff        [];
//------------------------------
double HMA2MergeExt         [];


double MAs2UPBuffer         [];
double MAs2DownBuffer       [];
double MAs2UpZeroSlope      [];
double MAs2DownZeroSlope    [];
//------------------------------
// MA2s with HMA2 Selection::
//------------------------------
double MAs2ChoicesBuff      [];
//------------------------------
// 4 HMA Data Buffs
double MADataBuffer         [];
//------------------------------
double MADataBuffer1        [];
//------------------------------
double MADiffBuffer         [];
//------------------------------
double MADiffBuffer1        [];
//------------------------------
double DiffMAsChoicesBuff   []; 
//------------------------------
double DiffMAs1ChoicesBuff  []; 
//------------------------------
double DiffMAs2ChoicesBuff  []; 
//------------------------------
// final calcu Buff of Bands
double finalMAsBuffer       [];
//------------------------------
// final calcu Buff1 of Bands
double finalMAsBuffer1      [];
//------------------------------
double DiffMAsUP            [];
//------------------------------  
double DiffMAsDOWN          [];
//------------------------------
double DiffMAsUPZeroSlope   [];
//------------------------------
double DiffMAsDOWNZeroSlope [];
//------------------------------
double DiffMAs1UP           [];
//------------------------------
double DiffMAs1DOWN         [];
//------------------------------
double DiffMAs1UPZeroSlope  [];
//------------------------------
double DiffMAs1DOWNZeroSlope[];
//------------------------------
//---------------------------
//================================================================================================================================================================
//================================================================================================================================================================
                           //======================================(Part-5   Set Buffers Indexs)========================================
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   IndicatorBuffers(36);
   // 1st MAs drop/down Buffers
   //========================================
   SetIndexBuffer(0 , HMAMergeBuff);
   SetIndexStyle (0 , DRAW_NONE);
   SetIndexLabel (0 , "");
   //------------------------------
   SetIndexBuffer(1 , HMAMergeExt);
   SetIndexStyle (1 , DRAW_NONE);
   SetIndexLabel (1 , "");
   //------------------------------
   SetIndexStyle (2 ,DRAW_NONE); 
   //SetIndexShift (2 , MAs_Shift);
   SetIndexBuffer(2 , MAsChoicesBuff);
   SetIndexLabel (2 , "");
   //-------------------------------------------------------------------------------------------
   //----------------------------
   SetIndexStyle (3 , MAsSlopeUpDownType , MAsSlopeUpDownStyle , MAsSlopesWidth , MAsSlopeUpclr);    
   SetIndexShift (3 , MAs_Shift);
   SetIndexBuffer(3 , MAsUPBuffer);
   SetIndexLabel (3 , "");
   //----------------------------
   SetIndexStyle (4 , MAsSlopeUpDownType , MAsSlopeUpDownStyle , MAsSlopesWidth , MAsSlopeDownclr);   
   SetIndexShift (4 , MAs_Shift);
   SetIndexBuffer(4 , MAsDownBuffer);
   SetIndexLabel (4 , "");
   //----------------------------
   SetIndexStyle (5 , MAsSlopeZeroType , MAsSlopeZeroStyle , MAsSlopesWidth , MAsSlopeZeroClr);    
   SetIndexShift (5 , MAs_Shift);
   SetIndexBuffer(5 , MAsUpZeroSlope);
   SetIndexLabel (5 , "");
   //----------------------------
   SetIndexStyle (6 , MAsSlopeZeroType , MAsSlopeZeroStyle , MAsSlopesWidth , MAsSlopeZeroClr);    
   SetIndexShift (6 , MAs_Shift);
   SetIndexBuffer(6 , MAsDownZeroSlope);
   SetIndexLabel (6 , "");
   //----------------------------
   //-------------------------------------------------------------------------------------------
   //------------------------------
   SetIndexBuffer(7 , HMA1MergeBuff);
   SetIndexStyle (7 , DRAW_NONE);
   SetIndexLabel (7 , "");
   //------------------------------
   SetIndexBuffer(8 , HMA1MergeExt);
   SetIndexStyle (8 , DRAW_NONE);
   SetIndexLabel (8 , "");
   //------------------------------
   SetIndexStyle (9 , DRAW_NONE); 
   SetIndexShift (9 , MAs1_Shift);
   SetIndexBuffer(9 , MAs1ChoicesBuff);
   SetIndexLabel (9 , "");
   
   //-------------------------------------------------------------------------------------------
   //----------------------------
   SetIndexStyle (10 , MAs1SlopeUpDownType , MAs1SlopeUpDownStyle , MAs1SlopesWidth , MAs1SlopeUpclr);       
   SetIndexShift (10 , MAs1_Shift);
   SetIndexBuffer(10 , MAs1UPBuffer);
   SetIndexLabel (10 , "");
   //----------------------------
   SetIndexStyle (11 , MAs1SlopeUpDownType , MAs1SlopeUpDownStyle , MAs1SlopesWidth , MAs1SlopeDownclr);   
   SetIndexShift (11 , MAs1_Shift);
   SetIndexBuffer(11 , MAs1DownBuffer);
   SetIndexLabel (11 , "");
   //----------------------------
   SetIndexStyle (12 , MAs1SlopeZeroType , MAs1SlopeZeroStyle , MAs1SlopesWidth , MAs1SlopeZeroClr);    
   SetIndexShift (12 , MAs1_Shift);
   SetIndexBuffer(12 , MAs1UpZeroSlope);
   SetIndexLabel (12 , "");
   //----------------------------
   SetIndexStyle (13 , MAs1SlopeZeroType , MAs1SlopeZeroStyle , MAs1SlopesWidth , MAs1SlopeZeroClr);    
   SetIndexShift (13 , MAs1_Shift);
   SetIndexBuffer(13 , MAs1DownZeroSlope);
   SetIndexLabel (13 , "");
   //----------------------------
   //-------------------------------------------------------------------------------------------
   //------------------------------
   SetIndexBuffer(14 , HMA2MergeBuff);
   SetIndexStyle (14 , DRAW_NONE);
   SetIndexLabel (14 , "");
   //------------------------------
   SetIndexBuffer(15 , HMA2MergeExt);
   SetIndexStyle (15 , DRAW_NONE);
   SetIndexLabel (15 , "");
   //------------------------------
   SetIndexStyle (16 , DRAW_NONE); 
   SetIndexShift (16 , MAs2_Shift);
   SetIndexBuffer(16 , MAs2ChoicesBuff);
   SetIndexLabel (16 , "");
   //------------------------------
   
   //-------------------------------------------------------------------------------------------
   //----------------------------
   SetIndexStyle (17 , MAs2SlopeUpDownType , MAs2SlopeUpDownStyle , MAs2SlopesWidth , MAs2SlopeUpclr);       
   SetIndexShift (17 , MAs2_Shift);
   SetIndexBuffer(17 , MAs2UPBuffer);
   SetIndexLabel (17 , "");
   //----------------------------
   SetIndexStyle (18 , MAs2SlopeUpDownType , MAs2SlopeUpDownStyle , MAs2SlopesWidth , MAs2SlopeDownclr);   
   SetIndexShift (18 , MAs2_Shift);
   SetIndexBuffer(18 , MAs2DownBuffer);
   SetIndexLabel (18 , "");
   //----------------------------
   SetIndexStyle (19 , MAs2SlopeZeroType , MAs2SlopeZeroStyle , MAs2SlopesWidth , MAs2SlopeZeroClr);    
   SetIndexShift (19 , MAs2_Shift);
   SetIndexBuffer(19 , MAs2UpZeroSlope);
   SetIndexLabel (19 , "");
   //----------------------------
   SetIndexStyle (20 , MAs2SlopeZeroType , MAs2SlopeZeroStyle , MAs2SlopesWidth , MAs2SlopeZeroClr);    
   SetIndexShift (20 , MAs2_Shift);
   SetIndexBuffer(20 , MAs2DownZeroSlope);
   SetIndexLabel (20 , "");
   //----------------------------
   //-------------------------------------------------------------------------------------------
   
   SetIndexBuffer(21 , MADataBuffer);
   SetIndexStyle (21 , DRAW_NONE);
   SetIndexLabel (21 , "");
   //------------------------------
   SetIndexBuffer(22 , MADataBuffer1);
   SetIndexStyle (22 , DRAW_NONE);
   SetIndexLabel (22 , "");
   //------------------------------
   // Diff MAs Choice
   //------------------------------
   SetIndexBuffer(23 , DiffMAsChoicesBuff);
   SetIndexStyle (23 , DRAW_NONE);
   SetIndexLabel (23 , "");
   //------------------------------
   // Diff MAs Choice
   SetIndexBuffer(24 , DiffMAs1ChoicesBuff);
   SetIndexStyle (24 , DRAW_NONE);
   SetIndexLabel (24 , "");
   //------------------------------
   // Diff MAs Choice
   SetIndexBuffer(25 , DiffMAs2ChoicesBuff);
   SetIndexStyle (25 , DRAW_NONE);
   SetIndexLabel (25 , "");
   //-----------------------------
   // final calcu Buff
   /*
   SetIndexStyle (26 , DRAW_NONE);
   SetIndexBuffer(26 , finalMAsBuffer);
   SetIndexLabel (26, "");
   */
   if(Show_Data_Window == 0)
    {
      SetIndexBuffer(26 , finalMAsBuffer);
      SetIndexStyle (26 , DRAW_NONE);  
      SetIndexLabel (26 , "");
      
      IndicatorShortName("");
      
    }
  else
    {
      SetIndexBuffer(26 , finalMAsBuffer);
      SetIndexStyle (26 , DRAW_NONE);  
      SetIndexLabel (26 , "Band");
      //IndicatorShortName("MAs Diff Indicator");
      
    }  
   //------------------------------
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (27 , DiffMAsSlopeUpDownType , DiffMAsSlopeUpDownStyle , DiffMAsSlopesWidth , DiffMAsSlopeUpclr);     
   SetIndexBuffer(27 , DiffMAsUP);
   SetIndexLabel (27 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (28 , DiffMAsSlopeUpDownType , DiffMAsSlopeUpDownStyle , DiffMAsSlopesWidth , DiffMAsSlopeDownclr);   
   SetIndexBuffer(28 , DiffMAsDOWN);
   SetIndexLabel (28 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (29 , DiffMAsSlopeZeroType , DiffMAsSlopeZeroStyle , DiffMAsSlopesWidth , DiffMAsSlopeZeroClr);    
   SetIndexBuffer(29 , DiffMAsUPZeroSlope);
   SetIndexLabel (29 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (30 , DiffMAsSlopeZeroType , DiffMAsSlopeZeroStyle , DiffMAsSlopesWidth , DiffMAsSlopeZeroClr);    
   SetIndexBuffer(30 , DiffMAsDOWNZeroSlope);
   SetIndexLabel (30 , "");
   //------------------------------
   // final calcu Buff
   /*
   SetIndexStyle (31 , DRAW_NONE);
   SetIndexBuffer(31 , finalMAsBuffer1);
   SetIndexLabel (31 , "");
   */
   
   if(Show_Data_Window == 0)
    {
      SetIndexBuffer(31 , finalMAsBuffer1);
      SetIndexStyle (31 , DRAW_NONE);  
      SetIndexLabel (31 , "");
      
      IndicatorShortName("");
      
    }
  else
    {
      SetIndexBuffer(31 , finalMAsBuffer1);
      SetIndexStyle (31 , DRAW_NONE);  
      SetIndexLabel (31 , "Band 1");
      IndicatorShortName("MAs Bands Indicator");
      
    }  
   //------------------------------
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (32 , DiffMAs1SlopeUpDownType , DiffMAs1SlopeUpDownStyle , DiffMAs1SlopesWidth , DiffMAs1SlopeUpclr);        
   SetIndexBuffer(32 , DiffMAs1UP);
   SetIndexLabel (32 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (33 , DiffMAs1SlopeUpDownType , DiffMAs1SlopeUpDownStyle , DiffMAs1SlopesWidth , DiffMAs1SlopeDownclr);   
   SetIndexBuffer(33 , DiffMAs1DOWN);
   SetIndexLabel (33 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (34 , DiffMAs1SlopeZeroType , DiffMAs1SlopeZeroStyle , DiffMAs1SlopesWidth , DiffMAs1SlopeZeroClr);    
   SetIndexBuffer(34 , DiffMAs1UPZeroSlope);
   SetIndexLabel (34 , "");
   //--------------------------------------------------------------------------------------------
   SetIndexStyle (35 , DiffMAs1SlopeZeroType , DiffMAs1SlopeZeroStyle , DiffMAs1SlopesWidth , DiffMAs1SlopeZeroClr);    
   SetIndexBuffer(35 , DiffMAs1DOWNZeroSlope);
   SetIndexLabel (35 , "");
   //--------------------------------------------------------------------------------------------
   //--------------------------------------------------------------------------------------------
   //--------------------------------------------------------------------------------------------
   return(INIT_SUCCEEDED);
  }
//==========================================================================================================================================================
//==============================================================initialization done=============================================================================
//==========================================================================================================================================================

             //======================================(Part-6   mathimatical Calculation of Indicators)========================================
            //  double MAsSwitchCases(int MAscases ,int MAsAppliedPrice,int MAsMethod,int MasPeriod , double HMAsBuf[] ,int i)
//+------------------------------------------------------------------+
//|                  Calculations Process of Buffers                 |
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

   // Calculate HMA 
   //--------------------------------------------
   int sqrt_p  = (int)floor(MathSqrt(MAs_Period));   
   int mid_p   = (int)floor(MAs_Period/2);

   int sqrt_p1 = (int)floor(MathSqrt(MAs_Period));
   int mid_p1  = (int)floor(MAs_Period/2);
   
   int sqrt_p2 = (int)floor(MathSqrt(MAs_Period));
   int mid_p2  = (int)floor(MAs_Period/2);
   
   // set arrs to get slop up/down of Hulls colores::
   //------------------------------------------------
   double trend  [];
   double trend_1[];
   double trend_2[];
   ArrayResize(trend, Bars-IndicatorCounted()  + MAs_Period);
   ArraySetAsSeries(trend, true);
   ArrayResize(trend_1, Bars-IndicatorCounted()+ MAs1_Period);
   ArraySetAsSeries(trend_1, true);
   ArrayResize(trend_2, Bars-IndicatorCounted()+ MAs2_Period);
   ArraySetAsSeries(trend_2, true);
   //--------------------------------------------------------
   int period_array[3];
   period_array[0] = MAs_Period;
   period_array[1] = MAs1_Period;
   period_array[2] = MAs2_Period;
   int maxValueIdx = ArrayMaximum(period_array,0,WHOLE_ARRAY);
   int lookback    = period_array[maxValueIdx];

   if(rates_total < lookback)
      return(0);

   int countedBars = IndicatorCounted();
   if(countedBars  < 0)
      countedBars  = 0;
   //--------------------------------------------------------------------------------------------
   //1st for loop to calculate the dev and the MAs buffers
   for(int i = Bars - countedBars; i >= 0; i--)
     {
      // HMAs Calculations::
      //-------------------
      HMAMergeBuff[i]=2*iMA(NULL,0,mid_p,0,MODE_LWMA,MAs_Price,i)
                        -iMA(NULL,0,MAs_Period,0,MODE_LWMA,MAs_Price,i);
                 
      HMA1MergeBuff[i]=2*iMA(NULL,0,mid_p1,0,MODE_LWMA,MAs1_Price,i)
                        -iMA(NULL,0,MAs1_Period,0,MODE_LWMA,MAs1_Price,i);
                   
      HMA2MergeBuff[i]=2*iMA(NULL,0,mid_p2,0,MODE_LWMA,MAs2_Price,i)
                        -iMA(NULL,0,MAs2_Period,0,MODE_LWMA,MAs2_Price,i);

     }   
//==========================================================================================================================================================
//==========================================================================================================================================================
//  second step  of HMAs calculations ::
//---------------------------------------
   int weightsum=0;
   for(i=sqrt_p; i>0; i--)
      weightsum+=i;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p,HMAMergeBuff,HMAMergeExt,weightsum);
//-------------------------------------------------------------------------------------------
   int weightsum1=0;
   for(i=sqrt_p1; i>0; i--)
      weightsum1+=i;
   //2nd buffer is a LWMA draw on the 2nd HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p1,HMA1MergeBuff,HMA1MergeExt,weightsum1);
//-------------------------------------------------------------------------------------------
   int weightsum2=0;
   for(i=sqrt_p2; i>0; i--)
      weightsum2+=i;
   //2nd buffer is a LWMA draw on the 3rd HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p2,HMA2MergeBuff,HMA2MergeExt,weightsum2);
//==========================================================================================================================================================
//==========================================================================================================================================================

   //--------------------------------------------------------------------------------------------
   for(  i = Bars - countedBars; i >= 0; i--)
     {
     
      //Diff MAs Choices
      //-----------------
      MAsChoicesBuff[i]   = MAsSwitchCases(MAs_Choice_Type  , MAs_Price , MAs_Period ,  HMAMergeExt  , i); 
      //Comment("MAsChoicesBuff[i]=" ,DoubleToString(MAsChoicesBuff[i],4) );
      MAs1ChoicesBuff[i]  = MAsSwitchCases(MAs1_Choice_Type , MAs_Price , MAs_Period ,  HMA1MergeExt , i);
      //Comment("MAs1ChoicesBuff[i]=" ,DoubleToString(MAs1ChoicesBuff[i],4) );
      MAs2ChoicesBuff[i]  = MAsSwitchCases(MAs2_Choice_Type , MAs_Price , MAs_Period ,  HMA2MergeExt , i);
      //Comment(MAs2ChoicesBuff[i] ,DoubleToString(MAs2ChoicesBuff[i],4) );
      
      // BAnds MAs Choices::
      //--------------------
      DiffMAsChoicesBuff[i]   = MAsSwitchCases(MAs_Choice_Type  , MAs_Price , MAs_Period ,  HMAMergeExt  , i); 
      //Comment("MAsChoicesBuff[i]=" ,DoubleToString(MAsChoicesBuff[i],4) );
      DiffMAs1ChoicesBuff[i]  = MAsSwitchCases(MAs1_Choice_Type , MAs_Price , MAs_Period ,  HMA1MergeExt , i);
      //Comment("MAs1ChoicesBuff[i]=" ,DoubleToString(MAs1ChoicesBuff[i],4) );
      DiffMAs2ChoicesBuff[i]  = MAsSwitchCases(MAs2_Choice_Type , MAs_Price , MAs_Period ,  HMA2MergeExt , i);
      //Comment(MAs2ChoicesBuff[i] ,DoubleToString(MAs2ChoicesBuff[i],4) );
//==========================================================================================================================================================
//==========================================================================================================================================================
     
         if(Zero_Slope_Colour == 0)
           {
   
            
               MAsUPBuffer[i]   =  EMPTY_VALUE;
               MAsDownBuffer[i] =  EMPTY_VALUE;
               
               if(MAsChoicesBuff[i]>MAsChoicesBuff[i+1])
                 {
                  MAsUPBuffer[i] = MAsChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAsUPBuffer[i+1] == EMPTY_VALUE){
                     MAsDownBuffer[i] = MAsChoicesBuff[i];
                     }
                  
                 }
               else 
                 {
                  MAsDownBuffer[i] = MAsChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAsDownBuffer[i+1] == EMPTY_VALUE){
                    MAsUPBuffer[i] = MAsChoicesBuff[i];
                    }
                  
                 }
           }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
         if(Zero_Slope_Colour == 1)
           {
               //double trend[i]  = (i<Bars-1) ? (finalMAsBuffer[i]>finalMAsBuffer[i+1]) ? 1 : (finalMAsBuffer[i]<finalMAsBuffer[i+1]) ? -1 : trend[i+1] : 0;
               if(MAsChoicesBuff[i]>MAsChoicesBuff[i+1])
                 {
                  MAsUPBuffer[i] = MAsChoicesBuff[i];
                  if(i <  (rates_total-1)&& (MAsUPBuffer[i+1] == EMPTY_VALUE ))
                     MAsUPBuffer[i+1]=MAsChoicesBuff[i+1];
                  MAsDownBuffer[i] = EMPTY_VALUE;
                 }
               else
                  if(MAsChoicesBuff[i]<MAsChoicesBuff[i+1])
                    {
                     MAsDownBuffer[i] = MAsChoicesBuff[i];
                     if(i <  (rates_total-1)&& (MAsDownBuffer[i+1] == EMPTY_VALUE  ))
                        MAsDownBuffer[i+1]=MAsChoicesBuff[i+1];
                     MAsUPBuffer[i] = EMPTY_VALUE;
                    }
           }
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      
         if(Zero_Slope_Colour == 2)
           {
     
               MAsUPBuffer[i]   =  EMPTY_VALUE;        
               MAsDownBuffer[i] =  EMPTY_VALUE;
               //--------------------------------------
               if(MAsChoicesBuff[i]>MAsChoicesBuff[i+1])
                 {
                  MAsUPBuffer[i]              = MAsChoicesBuff[i];
                  //DiffHMAUPZeroSlope[i+1] = DiffHMAUP[i+1];
                  //DiffMAs1UPZeroSlope[i]  = EMPTY_VALUE;
                  //--------------------------------------
                  if(i <  (rates_total-1)&& (MAsUPBuffer[i+1] == EMPTY_VALUE )){
                     //downHMABuffer[i]      = HMABuffer[i];
                     MAsUpZeroSlope[i]   = MAsChoicesBuff[i];
                     MAsUpZeroSlope[i+1] = MAsChoicesBuff[i+1];
                     //DiffHMAUP[i+1]        = DiffHMAUPZeroSlope[i+1];
                     //------------------------------------------------
                     }
                  
                 }
               else 
                 {
                  MAsDownBuffer[i]              = MAsChoicesBuff[i];
                  //DiffHMADOWNZeroSlope[i+1] = DiffHMADOWN[i+1];
                  //DiffMAsDOWNZeroSlope[i]   = EMPTY_VALUE;
                  //----------------------------------------------
                  if(i <  (rates_total-1)&& (MAsDownBuffer[i+1] == EMPTY_VALUE  )){
                    //upHMABuffer[i]          = HMABuffer[i];
                    MAsDownZeroSlope[i]   = MAsChoicesBuff[i];
                    MAsDownZeroSlope[i+1] = MAsChoicesBuff[i+1];
                    //DiffHMADOWN[i+1] = DiffHMADOWNZeroSlope[i+1];
                    //----------------------------------------------
                    }
                  
                 }
        
        }
//==========================================================================================================================================================    
//==========================================================================================================================================================
         if(Zero_Slope_Colour == 0)
           {
   
            
               MAs1UPBuffer[i]   =  EMPTY_VALUE;
               MAs1DownBuffer[i] =  EMPTY_VALUE;
               
               if(MAs1ChoicesBuff[i]>MAs1ChoicesBuff[i+1])
                 {
                  MAs1UPBuffer[i] = MAs1ChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAs1UPBuffer[i+1] == EMPTY_VALUE){
                     MAs1DownBuffer[i] = MAs1ChoicesBuff[i];
                     }
                  
                 }
               else 
                 {
                  MAs1DownBuffer[i] = MAs1ChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAs1DownBuffer[i+1] == EMPTY_VALUE){
                    MAs1UPBuffer[i] = MAs1ChoicesBuff[i];
                    }
                  
                 }
           }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
         if(Zero_Slope_Colour == 1)
           {
               //double trend[i]  = (i<Bars-1) ? (finalMAsBuffer[i]>finalMAsBuffer[i+1]) ? 1 : (finalMAsBuffer[i]<finalMAsBuffer[i+1]) ? -1 : trend[i+1] : 0;
               if(MAs1ChoicesBuff[i]>MAs1ChoicesBuff[i+1])
                 {
                  MAs1UPBuffer[i] = MAs1ChoicesBuff[i];
                  if(i <  (rates_total-1)&& (MAs1UPBuffer[i+1] == EMPTY_VALUE ))
                     MAs1UPBuffer[i+1]=MAs1ChoicesBuff[i+1];
                  MAs1DownBuffer[i] = EMPTY_VALUE;
                 }
               else
                  if(MAs1ChoicesBuff[i]<MAs1ChoicesBuff[i+1])
                    {
                     MAs1DownBuffer[i] = MAs1ChoicesBuff[i];
                     if(i <  (rates_total-1)&& (MAs1DownBuffer[i+1] == EMPTY_VALUE  ))
                        MAs1DownBuffer[i+1]=MAs1ChoicesBuff[i+1];
                     MAs1UPBuffer[i] = EMPTY_VALUE;
                    }
           }
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      
         if(Zero_Slope_Colour == 2)
           {
     
               MAs1UPBuffer[i]   =  EMPTY_VALUE;        
               MAs1DownBuffer[i] =  EMPTY_VALUE;
               //--------------------------------------
               if(MAs1ChoicesBuff[i]>MAs1ChoicesBuff[i+1])
                 {
                  MAs1UPBuffer[i]              = MAs1ChoicesBuff[i];
                  //DiffHMAUPZeroSlope[i+1] = DiffHMAUP[i+1];
                  //DiffMAs1UPZeroSlope[i]  = EMPTY_VALUE;
                  //--------------------------------------
                  if(i <  (rates_total-1)&& (MAs1UPBuffer[i+1] == EMPTY_VALUE )){
                     //downHMABuffer[i]      = HMABuffer[i];
                     MAs1UpZeroSlope[i]   = MAs1ChoicesBuff[i];
                     MAs1UpZeroSlope[i+1] = MAs1ChoicesBuff[i+1];
                     //DiffHMAUP[i+1]        = DiffHMAUPZeroSlope[i+1];
                     //------------------------------------------------
                     }
                  
                 }
               else 
                 {
                  MAs1DownBuffer[i]              = MAs1ChoicesBuff[i];
                  //DiffHMADOWNZeroSlope[i+1] = DiffHMADOWN[i+1];
                  //DiffMAsDOWNZeroSlope[i]   = EMPTY_VALUE;
                  //----------------------------------------------
                  if(i <  (rates_total-1)&& (MAs1DownBuffer[i+1] == EMPTY_VALUE  )){
                    //upHMABuffer[i]          = HMABuffer[i];
                    MAs1DownZeroSlope[i]   = MAs1ChoicesBuff[i];
                    MAs1DownZeroSlope[i+1] = MAs1ChoicesBuff[i+1];
                    //DiffHMADOWN[i+1] = DiffHMADOWNZeroSlope[i+1];
                    //----------------------------------------------
                    }
                  
                 }
        
        }
//==========================================================================================================================================================    
//==========================================================================================================================================================
         if(Zero_Slope_Colour == 0)
           {
   
            
               MAs2UPBuffer[i]   =  EMPTY_VALUE;
               MAs2DownBuffer[i] =  EMPTY_VALUE;
               
               if(MAs2ChoicesBuff[i]>MAs2ChoicesBuff[i+1])
                 {
                  MAs2UPBuffer[i] = MAs2ChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAs2UPBuffer[i+1] == EMPTY_VALUE){
                     MAs2DownBuffer[i] = MAs2ChoicesBuff[i];
                     }
                  
                 }
               else 
                 {
                  MAs2DownBuffer[i] = MAs2ChoicesBuff[i];
                  if(i <  (rates_total-1)&& MAs2DownBuffer[i+1] == EMPTY_VALUE){
                    MAs2UPBuffer[i] = MAs2ChoicesBuff[i];
                    }
                  
                 }
           }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
         if(Zero_Slope_Colour == 1)
           {
               //double trend[i]  = (i<Bars-1) ? (finalMAsBuffer[i]>finalMAsBuffer[i+1]) ? 1 : (finalMAsBuffer[i]<finalMAsBuffer[i+1]) ? -1 : trend[i+1] : 0;
               if(MAs2ChoicesBuff[i]>MAs2ChoicesBuff[i+1])
                 {
                  MAs2UPBuffer[i] = MAs2ChoicesBuff[i];
                  if(i <  (rates_total-1)&& (MAs2UPBuffer[i+1] == EMPTY_VALUE ))
                     MAs2UPBuffer[i+1]=MAs2ChoicesBuff[i+1];
                  MAs2DownBuffer[i] = EMPTY_VALUE;
                 }
               else
                  if(MAs2ChoicesBuff[i]<MAs2ChoicesBuff[i+1])
                    {
                     MAs2DownBuffer[i] = MAs2ChoicesBuff[i];
                     if(i <  (rates_total-1)&& (MAs2DownBuffer[i+1] == EMPTY_VALUE  ))
                        MAs2DownBuffer[i+1]=MAs2ChoicesBuff[i+1];
                     MAs2UPBuffer[i] = EMPTY_VALUE;
                    }
           }
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      
         if(Zero_Slope_Colour == 2)
           {
     
               MAs2UPBuffer[i]   =  EMPTY_VALUE;        
               MAs2DownBuffer[i] =  EMPTY_VALUE;
               //--------------------------------------
               if(MAs2ChoicesBuff[i]>MAs2ChoicesBuff[i+1])
                 {
                  MAs2UPBuffer[i]              = MAs2ChoicesBuff[i];
                  //DiffHMAUPZeroSlope[i+1] = DiffHMAUP[i+1];
                  //DiffMAs1UPZeroSlope[i]  = EMPTY_VALUE;
                  //--------------------------------------
                  if(i <  (rates_total-1)&& (MAs2UPBuffer[i+1] == EMPTY_VALUE )){
                     //downHMABuffer[i]      = HMABuffer[i];
                     MAs2UpZeroSlope[i]   = MAs2ChoicesBuff[i];
                     MAs2UpZeroSlope[i+1] = MAs2ChoicesBuff[i+1];
                     //DiffHMAUP[i+1]        = DiffHMAUPZeroSlope[i+1];
                     //------------------------------------------------
                     }
                  
                 }
               else 
                 {
                  MAs2DownBuffer[i]              = MAs2ChoicesBuff[i];
                  //DiffHMADOWNZeroSlope[i+1] = DiffHMADOWN[i+1];
                  //DiffMAsDOWNZeroSlope[i]   = EMPTY_VALUE;
                  //----------------------------------------------
                  if(i <  (rates_total-1)&& (MAs2DownBuffer[i+1] == EMPTY_VALUE  )){
                    //upHMABuffer[i]          = HMABuffer[i];
                    MAs2DownZeroSlope[i]   = MAs2ChoicesBuff[i];
                    MAs2DownZeroSlope[i+1] = MAs2ChoicesBuff[i+1];
                    //DiffHMADOWN[i+1] = DiffHMADOWNZeroSlope[i+1];
                    //----------------------------------------------
                    }
                  
                 }
        
        }
//==========================================================================================================================================================    
//==========================================================================================================================================================



   
      }
   
   
   
   
   
   //1st for loop to calculate the dev and the MAs buffers
   for(  i = Bars - countedBars; i >= 0; i--)
     {

      //exiting the for loop to calculate the 2nd HMA buffer::
      //------------------------------------------------------
      // 1st MAs Selection::
      switch(first_Selected_MA)
        {
         case 0:
           {
            MADataBuffer[i] = MAsChoicesBuff[i] ;
            break;
           }
         case 1:
           {
            MADataBuffer[i] = MAs1ChoicesBuff[i];
            break;
           }
         case 2:
           {
            MADataBuffer[i] = MAs2ChoicesBuff[i];
            break;
           }

        }
//------------------------------------------------------
//------------------------------------------------------
      // 2nd MAs Selection::
      switch(second_Selected_MA)
        {
         case 0:
           {
            MADataBuffer1[i] = MAsChoicesBuff[i] ;
            break;
           }
         case 1:
           {
            MADataBuffer1[i] = MAs1ChoicesBuff[i];
            break;
           }
         case 2:
           {
            MADataBuffer1[i] = MAs2ChoicesBuff[i];
            break;
           }
         
        }
//==========================================================================================================================================================
//==========================================================================================================================================================
      // Get the Difference between two HMA based on user Selection Criteria::
     //----------------------------------------------------------------------
      
      double Diff = MADataBuffer[i] - MADataBuffer1[i];
      Diff = Diff * factor_value ;       
   // Select the first HMA of user and Select operation rule Action ::
  //-------------------------------------------------------------------
      switch(first_Selected_MA1)
           {
            case 0:
              {
               if(Rule == 0)
                  finalMAsBuffer[i]   = DiffMAsChoicesBuff[i]  + Diff ; 
               else
                 {
                  if(Rule == 1)
                     finalMAsBuffer[i] = DiffMAsChoicesBuff[i] - Diff ;  
                 }
               break;
              }
              //------------------------------------------------------
              //------------------------------------------------------
            case 1:
              {
               if(Rule == 0)
                  finalMAsBuffer[i]   = DiffMAs1ChoicesBuff[i] + Diff;
               else
                 {
                  if(Rule == 1)
                     finalMAsBuffer[i] = DiffMAs1ChoicesBuff[i]- Diff;
                 }
               break;
              }
              //------------------------------------------------------
              //------------------------------------------------------
            case 2:
              {
               if(Rule == 0)
                  finalMAsBuffer[i]   = DiffMAs2ChoicesBuff[i]  + Diff;

               else
                 {
                  if(Rule == 1)
                     finalMAsBuffer[i] = DiffMAs2ChoicesBuff[i] - Diff;
                 }
               break;
              }
              //---------------------------------------------------------
              //--------------------------------------------------------- 
           }
//==========================================================================================================================================================
//==========================================================================================================================================================
    // Select the Second MAs of user and Select operation rule Action :   
    //------------------------------------------------------------------
    //------------------------------------------------------------------
      switch(second_Selected_MA1)
           {
            case 0:
              {
               if(Rule1 == 0)
                  finalMAsBuffer1[i]   = DiffMAsChoicesBuff[i]+ Diff ;
               else
                 {
                  if(Rule1 == 1)
                     finalMAsBuffer1[i] = DiffMAsChoicesBuff[i] - Diff ;
                 }
               break;
              }
              //------------------------------------------------------
              //------------------------------------------------------
            case 1:
              {
               if(Rule1 == 0)
                  finalMAsBuffer1[i]   = DiffMAs1ChoicesBuff[i] + Diff;
               else
                 {
                  if(Rule1 == 1)
                     finalMAsBuffer1[i] = DiffMAs1ChoicesBuff[i] - Diff;
                 }
               break;
              }
              //------------------------------------------------------
              //------------------------------------------------------
            case 2:
              {
               if(Rule1 == 0)
                  finalMAsBuffer1[i]    = DiffMAs2ChoicesBuff[i] + Diff;

               else
                 {
                  if(Rule1 == 1)
                     finalMAsBuffer1[i] = DiffMAs2ChoicesBuff[i] - Diff;
                 }
               break;
              }

           }
         //------------------------------------------------------
         //------------------------------------------------------
     }

//==========================================================================================================================================================
//=========================================================================================================================================================
   for(i = Bars-countedBars; i >= 0; i--)
      {
      
         if(Zero_Slope_Colour == 0)
           {
   
            
               DiffMAsUP[i]   =  EMPTY_VALUE;
               DiffMAsDOWN[i] =  EMPTY_VALUE;
               
               if(finalMAsBuffer[i]>finalMAsBuffer[i+1])
                 {
                  DiffMAsUP[i] = finalMAsBuffer[i];
                  if(i <  (rates_total-1)&& DiffMAsUP[i+1] == EMPTY_VALUE){
                     DiffMAsDOWN[i] = finalMAsBuffer[i];
                     }
                  
                 }
               else 
                 {
                  DiffMAsDOWN[i] = finalMAsBuffer[i];
                  if(i <  (rates_total-1)&& DiffMAsDOWN[i+1] == EMPTY_VALUE){
                    DiffMAsUP[i] = finalMAsBuffer[i];
                    }
                  
                 }
           }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
         if(Zero_Slope_Colour == 1)
           {
               //double trend[i]  = (i<Bars-1) ? (finalMAsBuffer[i]>finalMAsBuffer[i+1]) ? 1 : (finalMAsBuffer[i]<finalMAsBuffer[i+1]) ? -1 : trend[i+1] : 0;
               if(finalMAsBuffer[i]>finalMAsBuffer[i+1])
                 {
                  DiffMAsUP[i] = finalMAsBuffer[i];
                  if(i <  (rates_total-1)&& (DiffMAsUP[i+1] == EMPTY_VALUE ))
                     DiffMAsUP[i+1]=finalMAsBuffer[i+1];
                  DiffMAsDOWN[i] = EMPTY_VALUE;
                 }
               else
                  if(finalMAsBuffer[i]<finalMAsBuffer[i+1])
                    {
                     DiffMAsDOWN[i] = finalMAsBuffer[i];
                     if(i <  (rates_total-1)&& (DiffMAsDOWN[i+1] == EMPTY_VALUE  ))
                        DiffMAsDOWN[i+1]=finalMAsBuffer[i+1];
                     DiffMAsUP[i] = EMPTY_VALUE;
                    }
           }
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      
         if(Zero_Slope_Colour == 2)
           {
     
               DiffMAsUP[i]   =  EMPTY_VALUE;        
               DiffMAsDOWN[i] =  EMPTY_VALUE;
               //--------------------------------------
               if(finalMAsBuffer[i]>finalMAsBuffer[i+1])
                 {
                  DiffMAsUP[i]              = finalMAsBuffer[i];
                  //DiffHMAUPZeroSlope[i+1] = DiffHMAUP[i+1];
                  //DiffMAs1UPZeroSlope[i]  = EMPTY_VALUE;
                  //--------------------------------------
                  if(i <  (rates_total-1)&& (DiffMAsUP[i+1] == EMPTY_VALUE )){
                     //downHMABuffer[i]      = HMABuffer[i];
                     DiffMAsUPZeroSlope[i]   = finalMAsBuffer[i];
                     DiffMAsUPZeroSlope[i+1] = finalMAsBuffer[i+1];
                     //DiffHMAUP[i+1]        = DiffHMAUPZeroSlope[i+1];
                     //------------------------------------------------
                     }
                  
                 }
               else 
                 {
                  DiffMAsDOWN[i]              = finalMAsBuffer[i];
                  //DiffHMADOWNZeroSlope[i+1] = DiffHMADOWN[i+1];
                  //DiffMAsDOWNZeroSlope[i]   = EMPTY_VALUE;
                  //----------------------------------------------
                  if(i <  (rates_total-1)&& (DiffMAsDOWN[i+1] == EMPTY_VALUE  )){
                    //upHMABuffer[i]          = HMABuffer[i];
                    DiffMAsDOWNZeroSlope[i]   = finalMAsBuffer[i];
                    DiffMAsDOWNZeroSlope[i+1] = finalMAsBuffer[i+1];
                    //DiffHMADOWN[i+1] = DiffHMADOWNZeroSlope[i+1];
                    //----------------------------------------------
                    }
                  
                 }
        
        }
//==========================================================================================================================================================    
//==========================================================================================================================================================
//==========================================================================================================================================================
         if(Zero_Slope_Colour == 0)
           {
   
            
               DiffMAs1UP[i]   =  EMPTY_VALUE;
               DiffMAs1DOWN[i] =  EMPTY_VALUE;
             
               if(finalMAsBuffer1[i]>finalMAsBuffer1[i+1])
                 {
                  DiffMAs1UP[i] = finalMAsBuffer1[i];
                  if(i <  (rates_total-1)&& DiffMAs1UP[i+1] == EMPTY_VALUE){
                     DiffMAs1DOWN[i] = finalMAsBuffer1[i];
                     }
                  
                 }
               else 
                 {
                  DiffMAs1DOWN[i] = finalMAsBuffer1[i];
                  if(i <  (rates_total-1)&& DiffMAs1DOWN[i+1] == EMPTY_VALUE){
                    DiffMAs1UP[i] = finalMAsBuffer1[i];
                    }
                  
                 }
           }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
         if(Zero_Slope_Colour == 1)
           {
               //double trend[i]  = (i<Bars-1) ? (finalMAsBuffer[i]>finalMAsBuffer[i+1]) ? 1 : (finalMAsBuffer[i]<finalMAsBuffer[i+1]) ? -1 : trend[i+1] : 0;
               if(finalMAsBuffer1[i]>finalMAsBuffer1[i+1])
                 {
                  DiffMAs1UP[i] = finalMAsBuffer1[i];
                  if(i <  (rates_total-1)&& (DiffMAs1UP[i+1] == EMPTY_VALUE))
                     DiffMAs1UP[i+1]=finalMAsBuffer1[i+1];
                  //DiffMAs1DOWN[i] = EMPTY_VALUE;
                 }
               else
                  if(finalMAsBuffer1[i]<finalMAsBuffer1[i+1])
                    {
                     DiffMAs1DOWN[i] = finalMAsBuffer1[i];
                     if(i <  (rates_total-1)&& (DiffMAs1DOWN[i+1] == EMPTY_VALUE))
                        DiffMAs1DOWN[i+1]=finalMAsBuffer1[i+1];
                     //DiffMAs1UP[i] = EMPTY_VALUE;
                    }
           }
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 2)
        {

            DiffMAs1UP[i]   =  EMPTY_VALUE;        
            DiffMAs1DOWN[i] =  EMPTY_VALUE;
            //--------------------------------------
            if(finalMAsBuffer1[i]>finalMAsBuffer1[i+1])
              {
               DiffMAs1UP[i]             = finalMAsBuffer1[i];
               //DiffHMAUPZeroSlope[i+1] = DiffHMAUP[i+1];
               //DiffMAsUPZeroSlope[i]   = EMPTY_VALUE;
               //--------------------------------------
               if(i <  (rates_total-1)&& (DiffMAs1UP[i+1] == EMPTY_VALUE )){
                  //downHMABuffer[i]       = HMABuffer[i];
                  DiffMAs1UPZeroSlope[i]   = finalMAsBuffer1[i];
                  DiffMAs1UPZeroSlope[i+1] = finalMAsBuffer1[i+1];
                  //DiffHMAUP[i+1]         = DiffHMAUPZeroSlope[i+1];
                  //------------------------------------------------
                  }
               
              }
            else 
              {
               DiffMAs1DOWN[i]              = finalMAsBuffer1[i];
               //DiffHMADOWNZeroSlope[i+1]  = DiffHMADOWN[i+1];
               //DiffMAs1DOWNZeroSlope[i]   = EMPTY_VALUE;
               //----------------------------------------------
               if(i <  (rates_total-1)&& (DiffMAs1DOWN[i+1] == EMPTY_VALUE  )){
                 //upHMABuffer[i]           = HMABuffer[i];
                 DiffMAs1DOWNZeroSlope[i]   = finalMAsBuffer1[i];
                 DiffMAs1DOWNZeroSlope[i+1] = finalMAsBuffer1[i+1];
                 //DiffHMADOWN[i+1]         = DiffHMADOWNZeroSlope[i+1];
                 //----------------------------------------------
                 }
              }
        }  
     }   
 
   return(rates_total);

  }

//==========================================================================================================================================================
//==========================================================================================================================================================
//==========================================================================================================================================================