//+------------------------------------------------------------------+
//|                                 ATR-Diff-Hulls-Bands-Info(%).mq4 |
//|                                                    Ahmad.Elsayed |
//|                                             https://www.mql4.com |
//+------------------------------------------------------------------+



            //======================================(Part-1   Info)========================================
#property copyright "Ahmad.Elsayed"
#property link      "https://www.mql4.com"
#property description "ATR-Diff-Hulls-Bands-Info(%)"
//--------------------------------------------------
// import package of MA 
#include <MovingAverages.mqh>
// define Visualize Window
//#property indicator_chart_window
#property indicator_separate_window
//=================================================================================================================================================================
//=================================================================================================================================================================
//+------------------------------------------------------------------+
//|   // built Function to get The value of prrice field             |
//+------------------------------------------------------------------+
double CalculateFieldPrice(int AppliedPrice, int i)
  {

   double FieldPrice;
   string name;
   switch(AppliedPrice)
     {
      case 0:
        {
         name = "Close";
         FieldPrice=Close[i];
         break;
        }
      case 1:
        {
         name = "Open";
         FieldPrice=Open[i];
         break;
        }
      case 2:
        {
         name = "High";
         FieldPrice=High[i];
         break;
        }
      case 3:
        {
         name = "Low";
         FieldPrice=Low[i];
         break;
        }
     }

   return FieldPrice;
  }
  
//===============================================================================================================================================================================================================================
//===============================================================================================================================================================================================================================
//==================================
   //Func return Field Price Name
//===================================
string FieldPrice(int AppliedPrice)
  {
   string price;
   switch(AppliedPrice)
      {
         case 0:
           {
            price =  "C";
            break;
           }
         case 1:
           {
            price =  "O";
            break;
           }
         case 2:
           {
            price =  "H";
            break;
           }
           
         case 3:
           {
            price =  "L";
            break;
           }
           
         case 4:
           {
            price =  "M";
            break;
           }
            
         case 5:
           {
            price =  "T";
            break;
           }
           
         case 6:
           {
    
            price =  "W";
            break;
           }
   
       }  

   return price;
  }
//===============================================================================================================================================================================================================================
//===============================================================================================================================================================================================================================
//==============================
   //Func return MA Buffers Name
//==============================
string MA_Buff(int Buffer)
  {
   string ma_Name;
   switch(Buffer)
      {
         case 0:
           {
            ma_Name =  "H";
            break;
           }
         case 1:
           {
            ma_Name =  "H1";
            break;
           }
         case 2:
           {
            ma_Name =  "H2";
            break;
           }
           
         case 3:
           {
            ma_Name =  "M";
            break;
           }
           
         case 4:
           {
            ma_Name =  "M1";
            break;
           }
            
         case 5:
           {
            ma_Name =  "M2";
            break;
           }
           
         case 6:
           {
            ma_Name =  "UB";
            break;
           }
           
         case 7:
           {
            ma_Name =  "LB";
            break;
           }
           
       }  

   return ma_Name;
  }
 
//=============================================================================================================================================================================================================================== 
//===============================================================================================================================================================================================================================
            //======================================(Part-2   Visualization of Indicators)========================================

// clear number of Buff

#property indicator_buffers 26
#property indicator_label12 "Risk-Managment"
//=======================================================
//=======================================================
         // All Dropdown list Related HMABands Indicator
         //---------------------------------------------
//------------------------------------------------------
// dropdown list for The Diff*factors selection::
//-----------------------------------------------------
enum Diff_Factors
  {
   Diff_f1  = 0,    //Diff*f 
   Diff_f2  = 1,   //Diff*f1
   //Diff_f3  = 2,  //Diff*f2 
  };
//-------------------------------------------------------------------------------
// dropdown list for The HMA and Bands selection (FieldPrice - [HMAs or Bands])::
//-------------------------------------------------------------------------------
enum Selected_MA_Bands
  {
   first_HMA  = 0,        //HMA
   second_HMA = 1,       //HMA1
   Third_HMA  = 2,      //HMA2
   first_MA   = 3,     //MA
   second_MA  = 4,    //MA1
   Third_MA   = 5,   // MA2
   Upper_Band = 6,  // UP Band
   Lower_Band = 7, // Low Band
  };
//--------------------------------------------
// dropdown list for The HMA Bands selection::
//--------------------------------------------
enum Selected_MABuff
  {
   HMA  =0,     //HMA
   HMA1 =1,    //HMA1
   HMA2 =2,   //HMA2
   MA_BUff    =3,  //MA
   MA1_BUff   =4, //MA1
   MA2_BUff   =5,//MA2
  };     
         
//------------------------------------------------
// dropdown list for The Diff Result Operations::
//------------------------------------------------
enum Rules
  {
   Stander    =0,       // /  /
   Precentage =1,      //%
  };
//------------------------------------------------------------------
// dropdown list for The Mathimatical operation selection Of Bands::
//-----------------------------------------------------------------
enum Operations
  {
   Addition    =0,       //+
   subtraction =1,      //-
  }; 
//===============================================================================================================================================================================================================================
//===============================================================================================================================================================================================================================
                                 //======================================(Part-3   Input param  of Indicators)========================================
// ATR input param and Data Info activation::
//-------------------------------------------
input int InpAtrPeriod          = 14; // ATR Period
input int Absolutedecimal       = 4; // Absolute decimal
input int Precentagedecimal     = 4; // Precentagedecimal
//--------------------------------------------------------
//--------------------------------------------------------

// Activation case To present Data Values:
//----------------------------------------
input bool Diff_info                = false;
input bool Fieldprice_DiffHulls     = false;
input bool Fieldprice_DiffHullBands = false;
input bool ATR                      = false;
input bool All_Info                 = false;
//------------------------------------------
//------------------------------------------

                     // HMAs Input Paramters ::
                     //------------------------
// 1st HMA input param::
//----------------------
input string   Hll_Param =  "-------------------------------------------------------";  
//input bool              HllMA     = False; 
input ENUM_APPLIED_PRICE  HMAPrice  = 0; 
input int                 HMAPeriod = 25;                       

//------------------------------------------------------------------------------- 
//------------------------------------------------------------------------------- 
// 2nd HMA input param::
//----------------------
input string   Hll1_Param =  "-------------------------------------------------------";
//input bool              Hll1MA     = False; 
input ENUM_APPLIED_PRICE  HMA1Price  = 0;
input int                 HMA1Period = 20;                       
 
//------------------------------------------------------------------------------- 
//------------------------------------------------------------------------------- 
// 3rd HMA input param::
//----------------------
input string   Hll2_Param =  "-------------------------------------------------------";
//input bool              Hll2MA     = False;
input ENUM_APPLIED_PRICE  HMA2Price  = 0;  
input int                 HMA2Period = 15;                       

//------------------------------------------------------------------------------- 
//-------------------------------------------------------------------------------

                        // MAs Input PAramters::
                        //----------------------
//------------------------------------------------------------------------------- 
//-------------------------------------------------------------------------------   
      // MA input param::
      //-----------------
input string              MA_Param =  "-------------------------------------------------------";  
//input bool              MA       = False;  
input ENUM_MA_METHOD      MAMethod = 0;
input ENUM_APPLIED_PRICE  MAPrice  = 0; 
input int                 MAPeriod = 5;     


      // MA1 input param::
      //------------------
input string              MA1_Param =  "-------------------------------------------------------";
//input bool              MA1       = False; 
input ENUM_MA_METHOD      MA1Method = 0;
input ENUM_APPLIED_PRICE  MA1Price  = 0;  
input int                 MA1Period = 10;     


      // MA2 input param::
      //------------------
input string              MA2_Param =  "-------------------------------------------------------";
//input bool              MA2       = False; 
input ENUM_MA_METHOD      MA2Method = 0;
input ENUM_APPLIED_PRICE  MA2Price  = 0;  
input int                 MA2Period = 15;     

//===============================================================================================================================================================================================================================
//===============================================================================================================================================================================================================================


// Which  HMA Selected for Diff  param:: 
//--------------------------------------
input string   Diff_HMA_Choices =  "-------------------------------------------------------";  
// The 1st Section HMA for diff::
input Selected_MABuff  first_Selected_HMA  = HMA;

// The 2nd Section HMA for diff::
input Selected_MABuff  second_Selected_HMA = HMA;

input Rules  DiffRule = Stander;

// factor value input param::
input double   factor_value  = 0.5; 
input double   factor1_value = 0.5; 
//input double   factor2_value = 0.5; 


//===========================================================
//===========================================================  
input string   Bandsoperation = "-------------------------------------------------------";
input Diff_Factors DiffFactorsSelection = 0;

// The 1st Section HMA for Bands::
input Selected_MABuff  first_SelectedBands_HMA = HMA;  

input Operations  BandRule = Addition;

// The 2nd Section HMA for Bands::
input Selected_MABuff  second_SelectedBands_HMA = HMA;

input Operations  BandRule1 = subtraction;

//===========================================================
//=========================================================== 

input string   Diff_FieldPrice_options = "-------------------------------------------------------";


// The BandUP_FieldPrice Selection::
input ENUM_APPLIED_PRICE UPBand_FieldPrice      = 0;  
// The 1st Section UPBand for diff::
input Selected_MA_Bands  SelectionHMAsorBands   = Upper_Band;   
//-----------------------------------------------------------

// The 1st fieldprice Selection::
input ENUM_APPLIED_PRICE First_FieldPrice      = 0;
// The 1st Section HMA for diff::
input Selected_MA_Bands  SelectionHMAsorBands1 = first_HMA;
//-----------------------------------------------------------

// The 2nd fieldprice Selection::
input ENUM_APPLIED_PRICE Second_FieldPrice      = 0;
// The 2nd Section HMA for diff::
input Selected_MA_Bands  SelectionHMAsorBands2  = first_HMA;
//-----------------------------------------------------------

// The 3rd fieldprice Selection::
input ENUM_APPLIED_PRICE Third_FieldPrice      = 0;
// The 2nd Section HMA for diff::
input Selected_MA_Bands  SelectionHMAsorBands3 = first_HMA;
//-----------------------------------------------------------
// The BandLower_FieldPrice Selection::
input ENUM_APPLIED_PRICE LowBand_FieldPrice    = 0;
// The 1st Section Lower_Band for diff::
input Selected_MA_Bands  SelectionHMAsorBands4 = Lower_Band;
//------------------------------------------------------------
// Rule Of FieldPrice and MA:
input Rules  PriceRule = Stander;
//-----------------------------------------------------------
//-----------------------------------------------------------

            //======================================(Part-4   Clear all Buffers of Indicators)========================================
//---- indicator buffers

// clear Buff of Indicators::
//---------------------------
// 3 MA store Buffs
//------------------
double ExtMovingBuffer [];
double ExtMovingBuffer1[];
double ExtMovingBuffer2[];
//------------------------
// 4 HMA Data Buffs
//-----------------
double HMADataBuffer   [];
double HMADataBuffer1  [];
//------------------------
// 1st HMA Buff
//---------------
double HMABuffer       [];
double ExtSignalBuffer [];
//------------------------
// 2nd HMA Buff
//--------------
double HMA1Buffer      [];
double ExtSignalBuffer1[];
//------------------------
// 3rd HMA Buff
//-------------
double HMA2Buffer      [];
double ExtSignalBuffer2[];
//------------------------
// MA Buffers ::
//----------------
double MABuffer        [];
//------------------------
//MA1 Buffer::
//-------------
double MA1Buffer       [];
//------------------------
// MA2 Buffer::
//-------------
double MA2Buffer       [];
//------------------------
// FieldPrice - Upper Band Buff
//------------------------------
double HMADataBufferfiledUPBand [];
//------------------------
//FieldPrice - HMA Buff
//---------------------
double HMADataBufferfiled       [];
//------------------------
//FieldPrice1 - HMA Buff
//----------------------
double HMADataBufferfiled1      [];
//------------------------
//FieldPrice2 - HMA Buff
//----------------------
double HMADataBufferfiled2      [];
//------------------------
// FieldPrice - Lowwer Band Buff
//------------------------------
double HMADataBufferfiledLowBand[];
//------------------------
double Diff_Price_HMA [];
double Diff_Price_HMA1[];
double Diff_Price_HMA2[];
//------------------------
// ATR Buffers:
//-------------
double ExtATRBuffer   [];
double ExtTRBuffer    [];
//------------------------
// final calcu Buff1,2 of Bands
double finalHMABuffer [];
double finalHMABuffer1[];

//==============================================================================
//==============================================================================
//==============================================================================






            //======================================(Part-5   Set Buffers Indexs)========================================
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   IndicatorBuffers(26);

   SetIndexBuffer(0,ExtMovingBuffer);
   SetIndexLabel (0,"");
//-------------------------------------
   SetIndexBuffer(1,ExtMovingBuffer1);
   SetIndexLabel (1,"");
//-------------------------------------
   SetIndexBuffer(2,ExtMovingBuffer2);
   SetIndexLabel (2,"");
//-------------------------------------
   SetIndexBuffer(3,HMABuffer);
   SetIndexLabel (3,"");
//-------------------------------------
   SetIndexBuffer(4,ExtSignalBuffer);
   SetIndexLabel (4,"");
//-------------------------------------
   SetIndexBuffer(5,HMA1Buffer);
   SetIndexLabel( 5,"");
//-------------------------------------
   SetIndexBuffer(6,ExtSignalBuffer1);
   SetIndexLabel (6,"");
//-------------------------------------
   SetIndexBuffer(7,HMA2Buffer);
   SetIndexLabel (7,"");
//-------------------------------------
   SetIndexBuffer(8,ExtSignalBuffer2);
   SetIndexLabel (8,"");
//-------------------------------------
   SetIndexBuffer(9,MABuffer); 
   SetIndexLabel (9,"");
//-------------------------------------
   SetIndexBuffer(10,MA1Buffer); 
   SetIndexLabel (10,"");
//-------------------------------------
   SetIndexBuffer(11,MA2Buffer);
   SetIndexLabel (11,"");
//-------------------------------------
   SetIndexBuffer(12,HMADataBuffer);
   SetIndexLabel (12,"");
//-------------------------------------
   SetIndexBuffer(13,HMADataBuffer1);
   SetIndexLabel (13,"");
//-------------------------------------
   SetIndexBuffer(14,ExtATRBuffer);
   SetIndexLabel (14,"");
//-------------------------------------
   SetIndexBuffer(15,ExtTRBuffer);
   SetIndexLabel (15,"");
//-------------------------------------
   SetIndexBuffer(16,HMADataBufferfiledUPBand);
   SetIndexLabel (16,"");
//------------------------------------- 
   SetIndexBuffer(17,HMADataBufferfiled);
   SetIndexLabel (17,"");
//-------------------------------------
   SetIndexBuffer(18,HMADataBufferfiled1); 
   SetIndexLabel (18,"");
//-------------------------------------
   SetIndexBuffer(19,HMADataBufferfiled2);
   SetIndexLabel (19,"");
//-------------------------------------
   SetIndexBuffer(20,HMADataBufferfiledLowBand);
   SetIndexLabel (20,"");
//-------------------------------------
   SetIndexBuffer(21,Diff_Price_HMA);
   SetIndexLabel (21,"");
//-------------------------------------
   SetIndexBuffer(22,Diff_Price_HMA1); 
   SetIndexLabel (22,"");
//-------------------------------------
   SetIndexBuffer(23,Diff_Price_HMA2);
   SetIndexLabel (23,"");
//-------------------------------------
   SetIndexBuffer(24,finalHMABuffer); 
   SetIndexLabel (24,"");
//-------------------------------------
   SetIndexBuffer(25,finalHMABuffer1);
   SetIndexLabel (25,"");
   
   //--- initialization done

   return(INIT_SUCCEEDED);
  
  }

//==============================================================================
//==============================================================================
//==============================================================================
           //======================================(Part-6   mathimatical Calculation of Indicators)========================================
            
//+------------------------------------------------------------------+
//|                                                                  |
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
  
//-------------------------------
// ATR Process and Calculations :
//-------------------------------
   int i,limit;
//--- check for bars count and input parameter
   if(rates_total<=InpAtrPeriod || InpAtrPeriod<=0)
      return(0);
//--- counting from 0 to rates_total
   ArraySetAsSeries(ExtATRBuffer,false);
   ArraySetAsSeries(ExtTRBuffer,false);
   ArraySetAsSeries(open,false);
   ArraySetAsSeries(high,false);
   ArraySetAsSeries(low,false);
   ArraySetAsSeries(close,false);
   
   //--- preliminary calculations
   if(prev_calculated==0)
     {
      ExtTRBuffer[0]=0.0;
      ExtATRBuffer[0]=0.0;
      
      //--- filling out the array of True Range values for each period
      for(i=1; i<rates_total; i++)
         ExtTRBuffer[i]=MathMax(high[i],close[i-1])-MathMin(low[i],close[i-1]);
      //--- first AtrPeriod values of the indicator are not calculated
      double firstValue=0.0;
      for(i=1; i<=InpAtrPeriod; i++)
        {
         ExtATRBuffer[i]=0.0;
         firstValue+=ExtTRBuffer[i];
        }
      //--- calculating the first value of the indicator
      firstValue/=InpAtrPeriod;
      ExtATRBuffer[InpAtrPeriod]=firstValue;
      limit=InpAtrPeriod+1;
     }
   else
      limit=prev_calculated-1;
//--- the main loop of calculations
   for(i=limit; i<rates_total; i++)
     {
      ExtTRBuffer[i]=MathMax(high[i],close[i-1])-MathMin(low[i],close[i-1]);
      ExtATRBuffer[i]=ExtATRBuffer[i-1]+(ExtTRBuffer[i]-ExtTRBuffer[i-InpAtrPeriod])/InpAtrPeriod;
      double ATR_val = ExtATRBuffer[i];
     }
     
//==============================================================================
//==============================================================================     
     
     
//-------------------------------
// HMAs Process and Calculations
//-------------------------------
   
   int sqrt_p  = (int)floor(MathSqrt(HMAPeriod));
   int mid_p   = (int)floor(HMAPeriod/2);

   int sqrt_p1 = (int)floor(MathSqrt(HMA1Period));
   int mid_p1  = (int)floor(HMA1Period/2);
   
   int sqrt_p2 = (int)floor(MathSqrt(HMA2Period));
   int mid_p2  = (int)floor(HMA2Period/2);

   // set arrs to get slop up/down of Hulls colores::
   //-----------------------------------------------
   
   double trend  [];
   double trend_1[];
   double trend_2[];
   ArrayResize(trend, Bars-IndicatorCounted()+   HMAPeriod);
   ArraySetAsSeries(trend, true);
   ArrayResize(trend_1, Bars-IndicatorCounted()+HMA1Period);
   ArraySetAsSeries(trend_1, true);
   ArrayResize(trend_2, Bars-IndicatorCounted()+HMA2Period);
   ArraySetAsSeries(trend_2, true);


   int period_array[3];

   period_array[0] = HMAPeriod;
   period_array[1] = HMA1Period;
   period_array[2] = HMA2Period;
   int maxValueIdx=ArrayMaximum(period_array,0,WHOLE_ARRAY);
   int lookback = period_array[maxValueIdx];

   if(rates_total < lookback)
      return(0);

   int countedBars = IndicatorCounted();
   if(countedBars < 0)
      countedBars = 0;

//1st for loop to calculate the dev and the MAs buffers
   for( i = Bars - countedBars; i >= 0; i--)
     {
      //------------------------HMA Part---------------------------------
            //Choosing HMA raw data to calculate 1st buffer of HMA
      //-----------------------------------------------------------------
      //if(HllMA)
      //{
      HMABuffer[i]=2*iMA(NULL,0,mid_p,0,MODE_LWMA,HMAPrice,i)
                      -iMA(NULL,0,HMAPeriod,0,MODE_LWMA,HMAPrice,i);
      //}
//-----------------------------------------------------------------------
     //if(Hll1MA)
     //{          
     HMA1Buffer[i]=2*iMA(NULL,0,mid_p1,0,MODE_LWMA,HMA1Price,i)
                   -iMA(NULL,0,HMA1Period,0,MODE_LWMA,HMA1Price,i);
     //}
//-----------------------------------------------------------------------
     //if(Hll2MA)
     //{            
     HMA2Buffer[i]=2*iMA(NULL,0,mid_p2,0,MODE_LWMA,HMA2Price,i)
                   -iMA(NULL,0,HMA2Period,0,MODE_LWMA,HMA2Price,i);
     //}
//----------------------------------------------------------------------- 
         
     //if(MA)
     //{           
     MABuffer [i] = iMA(NULL, 0, MAPeriod , 0, MAMethod , MAPrice , i); 
     //}
//----------------------------------------------------------------------- 
     //if(MA1)
      //{   
      MA1Buffer[i] = iMA(NULL, 0, MA1Period, 0, MA1Method, MA1Price, i);
      //}
//-----------------------------------------------------------------------
      //if(MA2)
      //{
      MA2Buffer[i] = iMA(NULL, 0, MA2Period, 0, MA2Method, MA2Price, i);
      
    }
      //}


     //}
//======================================================================================================== 
//======================================================================================================== 
    
                            // get HMA Buffers Calculation at final
                            //-------------------------------------
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
    
    
    
   // HMA Buff
   //------------------
   int weightsum=0;
   for(i=sqrt_p; i>0; i--)
      weightsum+=i;
   //2nd buffer is a LWMA draw on the 1st HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p,HMABuffer,ExtSignalBuffer,weightsum);
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
   // HMA Buff
   //----------------------
   int weightsum1=0;
   for(i=sqrt_p1; i>0; i--)
      weightsum1+=i;
   //2nd buffer is a LWMA draw on the 2nd HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p1,HMA1Buffer,ExtSignalBuffer1,weightsum1);
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
   // HMA Buff
   //----------------------
   int weightsum2=0;
   for(i=sqrt_p2; i>0; i--)
      weightsum2+=i;
   //2nd buffer is a LWMA draw on the 3rd HMA buffer
   LinearWeightedMAOnBuffer(Bars,IndicatorCounted(),0,sqrt_p2,HMA2Buffer,ExtSignalBuffer2,weightsum2);
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------

//1st for loop to calculate the dev and the MAs buffers
   for( i = Bars - countedBars; i >= 0; i--)
     {
//========================================================================================================
//========================================================================================================          
                
        
      // Swich case to get 1st HMA of Diff
      //-----------------------------------
      switch(first_Selected_HMA)
        {
         case 0:
           {
            HMADataBuffer[i] = ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBuffer[i] = ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBuffer[i] = ExtSignalBuffer2[i];
            break;
           }
         case 3:
           {
            HMADataBuffer[i] = MABuffer[i];
            break;
           }
           
         case 4:
           {
            HMADataBuffer[i] = MA1Buffer[i];
            break;
           }
           
         case 5:
           {
            HMADataBuffer[i] = MA2Buffer[i];
            break;
           }

        }
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
      // Swich case to get 2nd HMA of Diff
      //-----------------------------------
      switch(second_Selected_HMA)
        {
         case 0:
           {
            HMADataBuffer1[i] = ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBuffer1[i] = ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBuffer1[i] = ExtSignalBuffer2[i];
            break;
           }
           
         case 3:
           {
            HMADataBuffer1[i] = MABuffer[i];
            break;
           }
           
         case 4:
           {
            HMADataBuffer1[i] = MA1Buffer[i];
            break;
           }
           
         case 5:
           {
            HMADataBuffer1[i] = MA2Buffer[i];
            break;
           }
         
        } 
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
       // Get diff between HMAs as stander
      //-------------------------------------
      double Diff  = MathAbs(HMADataBuffer[i] - HMADataBuffer1[i]);
      double Diff1 = Diff * factor_value  ;  
      double Diff2 = Diff * factor1_value ;
      //double Diff3 = Diff * factor2_value ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
       // Get diff between HMAs as Precentage
      //-------------------------------------
      if(HMADataBuffer1[i]!=0)
         double Diff_pre = MathAbs(((HMADataBuffer[i] - HMADataBuffer1[i])/HMADataBuffer1[i])*100);
         double Diff1_pre = Diff_pre * factor_value  ;  
         double Diff2_pre = Diff_pre * factor1_value ;
         //double Diff3_pre = Diff_pre * factor2_value ;   
 
//---------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------- 
                     //Switch Casse Of FieldPrice and Bands 
//==================================================================================
      switch(first_SelectedBands_HMA)    
           {
            case 0:
              {
               if(BandRule == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer[i] + Diff1 ; 
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer[i] + Diff2 ; 
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer[i] + Diff3 ; 
                     }
                     */
                 }

               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer[i] - Diff1 ; 
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer[i] - Diff2 ; 
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer[i] - Diff3 ; 
                        }
                        */
                    }
                 }
               break;
              }
            //-----------------------------------------------------------------
            case 1:
              {
               if(BandRule == 0)
                  
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer1[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer1[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer1[i] + Diff3;
                     }
                     */
                 }
                  
                  
                  
               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer1[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer1[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer1[i] - Diff3;
                        }
                        */
                    }

                 }
               break;
              }
            //-----------------------------------------------------------------
            case 2:
              {
               if(BandRule == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer2[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer2[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = ExtSignalBuffer2[i] + Diff3;
                     } 
                     */
                  
                 }
               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer2[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer2[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = ExtSignalBuffer2[i] - Diff3;
                        }
                        */
                    } 
                     
                 }
               break;
              }
            //-----------------------------------------------------------------
              
            case 3:
              {
               if(BandRule == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = MABuffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = MABuffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = MABuffer[i] + Diff3;
                     } 
                     */
                  
                 }
               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = MABuffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = MABuffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = MABuffer[i] - Diff3;
                        }
                        */
                    } 
                     
                 }
               break;
              }
            //-----------------------------------------------------------------
            case 4:
              {
               if(BandRule == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = MA1Buffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = MA1Buffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = MA1Buffer[i] + Diff3;
                     } 
                     */
                  
                 }
               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = MA1Buffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = MA1Buffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = MA1Buffer[i] - Diff3;
                        }
                        */
                    } 
                     
                 }
               break;
              }
            //-----------------------------------------------------------------
            case 5:
              {
               if(BandRule == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer[i] = MA2Buffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer[i] = MA2Buffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer[i] = MA2Buffer[i] + Diff3;
                     } 
                     */
                  
                 }
               else
                 {
                  if(BandRule == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer[i] = MA2Buffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer[i] = MA2Buffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer[i] = MA2Buffer[i] - Diff3;
                        }
                        */
                    } 
                     
                 }
               break;
              }

              
           }
    
//==============================================================================================================================================
//==============================================================================================================================================
            
                // Select the Second HMA of user and Select operation rule Action :   
                //-----------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
      switch(second_SelectedBands_HMA)
           {
            case 0:
              {
               if(BandRule1 == 0)
                 {

                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer[i] + Diff1 ;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer[i] + Diff2 ;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer[i] + Diff3 ;
                     }
                     */
                  
                 }
               else
                 {
                  if(BandRule1 == 1)
                    {
                        
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer[i] - Diff1 ;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer[i] - Diff2 ;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer[i] - Diff3 ;
                        }
                        */
                        
                   }
                     
                 }
               break;
              }
            //---------------------------------------------------------------
            case 1:
              {
               if(BandRule1 == 0)
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer1[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer1[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer1[i] + Diff3;
                     }
                     */
                 }
                  
                  
               else
                 {
                  if(BandRule1 == 1)
                     
                     
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer1[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer1[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer1[i] - Diff3;
                        }
                        */
                    }
   
                 }
               break;
              }
            //---------------------------------------------------------------
            case 2:
              {
               if(BandRule1 == 0)
                  
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer2[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer2[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = ExtSignalBuffer2[i] + Diff3;
                     } 
                     */
                  
                 } 
                  

               else
                 {
                  if(BandRule1 == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer2[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer2[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = ExtSignalBuffer2[i] - Diff3;
                        }
                        */
                    } 
                     
                     
                 }
               break;
              }
            //---------------------------------------------------------------
            case 3:
              {
               if(BandRule1 == 0)
                  
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = MABuffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = MABuffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = MABuffer[i] + Diff3;
                     } 
                     */
                  
                 } 
                  

               else
                 {
                  if(BandRule1 == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = MABuffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = MABuffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = MABuffer[i] - Diff3;
                        }
                        */
                    } 
                     
                     
                 }
               break;
              }
              
            //---------------------------------------------------------------
            case 4:
              {
               if(BandRule1 == 0)
                  
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = MA1Buffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = MA1Buffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = MA1Buffer[i] + Diff3;
                     } 
                     */
                  
                 } 
                  

               else
                 {
                  if(BandRule1 == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = MA1Buffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = MA1Buffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = MA1Buffer[i] - Diff3;
                        }
                        */
                    } 
                     
                     
                 }
               break;
              }        
            //---------------------------------------------------------------
            case 5:
              {
               if(BandRule1 == 0)
                  
                 {
                  if(DiffFactorsSelection == 0)
                     {
                        finalHMABuffer1[i] = MA2Buffer[i] + Diff1;
                     }
                  if(DiffFactorsSelection == 1)
                     {
                        finalHMABuffer1[i] = MA2Buffer[i] + Diff2;
                     }
                     /*
                  if(DiffFactorsSelection == 2)
                     {
                        finalHMABuffer1[i] = MA2Buffer[i] + Diff3;
                     } 
                     */
                  
                 } 
                  

               else
                 {
                  if(BandRule1 == 1)
                    {
                     if(DiffFactorsSelection == 0)
                        {
                           finalHMABuffer1[i] = MA2Buffer[i] - Diff1;
                        }
                     if(DiffFactorsSelection == 1)
                        {
                           finalHMABuffer1[i] = MA2Buffer[i] - Diff2;
                        }
                        /*
                     if(DiffFactorsSelection == 2)
                        {
                           finalHMABuffer1[i] = MA2Buffer[i] - Diff3;
                        }
                        */
                    } 
                     
                     
                 }
               break;
              }
              

           }   
          
     
        }
  
  // get Data Buffers data values::
  //-------------------------------
   for(i = Bars-countedBars; i >= 0; i--)
     {
     
    //=======================================================================================================
      // Swich case to get Upper Band With PriceField 
      //-----------------------------------------------
      switch(SelectionHMAsorBands)    
        {
         case 0:
           {
            HMADataBufferfiledUPBand[i] =  ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBufferfiledUPBand[i] =  ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBufferfiledUPBand[i] =  ExtSignalBuffer2[i];
            break;
           }
           
           
         case 3:
           {
            HMADataBufferfiledUPBand[i] =  MABuffer[i];
            break;
           }
           
         case 4:
           {
            HMADataBufferfiledUPBand[i] =  MA1Buffer[i];
            break;
           }
           
           
         case 5:
           {
            HMADataBufferfiledUPBand[i] =  MA2Buffer[i];
            break;
           }
           
           
         case 6:
           {
            
            HMADataBufferfiledUPBand[i] =  finalHMABuffer[i];
            break;
           }
           
         case 7:
           {
            HMADataBufferfiledUPBand[i] =  finalHMABuffer1[i];
            break;
           }
           
         
        }
//----------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------
    //=======================================================================================================
      // Swich case to get 1st HMA With PriceField
      //------------------------------------------
      switch(SelectionHMAsorBands1)
        {
         case 0:
           {
            HMADataBufferfiled[i] =  ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBufferfiled[i] =  ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBufferfiled[i] =  ExtSignalBuffer2[i];
            break;
           }
       
         case 3:
           {
            HMADataBufferfiled[i] =  MABuffer[i];
            break;
           }
           
         case 4:
           {
            HMADataBufferfiled[i] =  MA1Buffer[i];
            break;
           }

         case 5:
           {
            HMADataBufferfiled[i] =  MA2Buffer[i];
            break;
           }
           

         case 6:
           {
            HMADataBufferfiled[i] =  finalHMABuffer[i];
            break;
           }
           
         case 7:
           {
            HMADataBufferfiled[i] =  finalHMABuffer1[i];
            break;
           }

        }
//----------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------
      // Swich case to get 2nd HMA With PriceField
      //------------------------------------------
      switch(SelectionHMAsorBands2)
        {
         case 0:
           {
            HMADataBufferfiled1[i] =  ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBufferfiled1[i] =  ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBufferfiled1[i] =  ExtSignalBuffer2[i];
            break;
           }
         case 3:
           {
            HMADataBufferfiled1[i] =  MABuffer[i];
            break;
           }
         case 4:
           {
            HMADataBufferfiled1[i] =  MA1Buffer[i];
            break;
           }
         case 5:
           {
            HMADataBufferfiled1[i] =  MA2Buffer[i];
            break;
           }
         case 6:
           {
            HMADataBufferfiled1[i] =  finalHMABuffer[i];
            break;
           }
         case 7:
           {
            HMADataBufferfiled1[i] =  finalHMABuffer1[i];
            break;
           }
         
        }
//----------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------
      // Swich case to get 3rd HMA With PriceField
      //------------------------------------------  
      switch(SelectionHMAsorBands3)
        {
         case 0:
           {
            HMADataBufferfiled2[i] =  ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBufferfiled2[i] =  ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBufferfiled2[i] =  ExtSignalBuffer2[i];
            break;
           }
         case 3:
           {
            HMADataBufferfiled2[i] =  MABuffer[i];
            break;
           }
         case 4:
           {
            HMADataBufferfiled2[i] =  MA1Buffer[i];
            break;
           }
         case 5:
           {
            HMADataBufferfiled2[i] =  MA2Buffer[i];
            break;
           }
         case 6:
           {
            HMADataBufferfiled2[i] =  finalHMABuffer[i];
            break;
           }
         case 7:
           {
            HMADataBufferfiled2[i] =  finalHMABuffer1[i];
            break;
           }
        }        
//----------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------
    //=======================================================================================================
      // Swich case to get Lower Band With PriceField 
      //------------------------------------------
      switch(SelectionHMAsorBands4)
        {
         case 0:
           {
            HMADataBufferfiledLowBand[i] =  ExtSignalBuffer[i];
            break;
           }
         case 1:
           {
            HMADataBufferfiledLowBand[i] =  ExtSignalBuffer1[i];
            break;
           }
         case 2:
           {
            HMADataBufferfiledLowBand[i] =  ExtSignalBuffer2[i];
            break;
           }
         case 3:
           {
            HMADataBufferfiledLowBand[i] =  MABuffer[i];
            break;
           }
         case 4:
           {
            HMADataBufferfiledLowBand[i] =  MA1Buffer[i];
            break;
           }
         case 5:
           {
            HMADataBufferfiledLowBand[i] =  MA2Buffer[i];
            break;
           }
         case 6:
           {
            HMADataBufferfiledLowBand[i] =  finalHMABuffer[i];
            break;
           }
         case 7:
           {
            HMADataBufferfiledLowBand[i] =  finalHMABuffer1[i];
            break;
           }
        }  
//----------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------

      double upBan,downBan ;
      if(BandRule == Addition && BandRule1 == Addition)
         {
            upBan    = HMADataBufferfiledUPBand[i];
            downBan  = 0;
         }
      if(BandRule == subtraction && BandRule1 == subtraction)
          {
         
         
            upBan     = 0;
            downBan   = HMADataBufferfiledUPBand[i];
            
         }
      if(BandRule == Addition && BandRule1  == subtraction )
          {
         
         
            upBan     = HMADataBufferfiledUPBand[i];
            downBan   = HMADataBufferfiledLowBand[i];
            
          }
      if(BandRule == subtraction && BandRule1 == Addition)
          {
         
            
            upBan     = HMADataBufferfiledLowBand[i];
            downBan   = HMADataBufferfiledUPBand[i];
            
         
          }
         
       
         
      //if(BandRule == 1 )//|| BandRule1 == 1)
         //string upBand    = "+";//HMADataBufferfiledUPBand;
         //======================================================
                     // Get FieldPrice - MAs Buffers ::
         //======================================================
      
      // get field price value::
      double field_Price  = CalculateFieldPrice(First_FieldPrice  , i);  
      double field_Price1 = CalculateFieldPrice(Second_FieldPrice , i); 
      double field_Price2 = CalculateFieldPrice(Third_FieldPrice  , i);  
      double field_Price3 = CalculateFieldPrice(UPBand_FieldPrice , i);  
      double field_Price4 = CalculateFieldPrice(LowBand_FieldPrice, i);  
      //---------------------------------------------------------------
      // get diff between FieldPrice and MAs Buffers::
      double val  = field_Price  - HMADataBufferfiled [i];
      double val1 = field_Price1 - HMADataBufferfiled1[i];
      double val2 = field_Price2 - HMADataBufferfiled2[i];
      //---------------------------------------------------------------
      // get diff between FieldPrice and Bands Buffer::
      double val3 =  field_Price3  - upBan ;
      double val4 =  field_Price4  - downBan;
      //---------------------------------------------------------------
     // Get diff fieldPrice and HMA as Precentage
      if(HMADataBufferfiled[i]!=0)
         double valPrec  =  (((field_Price - HMADataBufferfiled[i])        / HMADataBufferfiled[i])*100        );
         
      if(HMADataBufferfiled1[i]!=0)
         double val1Prec =  (((field_Price1 - HMADataBufferfiled1[i])      / HMADataBufferfiled1[i])*100        ) ;
        
      if(HMADataBufferfiled2[i]!=0)
         double val2Prec =  (((field_Price2 - HMADataBufferfiled2[i])      / HMADataBufferfiled2[i])*100        ); 
         
      if(HMADataBufferfiledUPBand[i]!=0)
         double val3Prec =  (((field_Price3 - upBan) / upBan)*100   ) ;
        
      if(HMADataBufferfiledLowBand[i]!=0)
         double val4Prec =  (((field_Price4 - downBan) / downBan)*100 );
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
                // to generate ma name with diff
               //----------------------------------------

      string d_ma_n      = MA_Buff(first_Selected_HMA ) ;    
      string d_ma1_n     = MA_Buff(second_Selected_HMA) ;
//=================================================================================== 
                // to generate Ma name with field price
               //----------------------------------------
      string UB_n      = MA_Buff(SelectionHMAsorBands ) ;
      string ma_n      = MA_Buff(SelectionHMAsorBands1) ; 
      string ma1_n     = MA_Buff(SelectionHMAsorBands2) ;
      string ma2_n     = MA_Buff(SelectionHMAsorBands3) ;
      string LB_n      = MA_Buff(SelectionHMAsorBands4) ;
      
//=================================================================================== 
            // to generate Modules Diffs values with its factors
            //--------------------------------------------------
      string DV   = DoubleToString(Diff ,Absolutedecimal);
      string Df1V = DoubleToString(Diff1,Absolutedecimal);
      string Df2V = DoubleToString(Diff2,Absolutedecimal);
      //string Df3V = DoubleToString(Diff3,Absolutedecimal);
//=================================================================================== 
      
      //-------------------------------------------------------------------------------------------------  
      // Present Modules values of  Diff Infomations on Seperated window becouse it present one line only
     //--------------------------------------------------------------------------------------------------
      if (Diff_info == 1 && DiffRule  == 0)
         IndicatorShortName("Diff("+d_ma_n+ "-"+ d_ma1_n+")= "+DV+", D*f1= "+Df1V+", D*f2= "+Df2V);  
    //------------------------------------------------------------------------------------
      // to generate Precentage Diffs values with its factors
      string DVPrec   = DoubleToString(Diff_pre ,Precentagedecimal);
      string Df1VPrec = DoubleToString(Diff1_pre,Precentagedecimal);
      string Df2VPrec = DoubleToString(Diff2_pre,Precentagedecimal);
      //string Df3VPrec = DoubleToString(Diff3_pre,Precentagedecimal);       
      //---------------------------------------------------------------------------------------------------
      // Present Precentage values of Diff Infomations on Seperated window becouse it present one line only
     //----------------------------------------------------------------------------------------------------
      if (Diff_info == 1 && DiffRule  == 1)
         //IndicatorShortName("D-("+d_ma_n +"-"+ d_ma1_n+"%)= "+DVPrec+", D*f1%= "+Df1VPrec+", D*f2%= "+Df2VPrec+", D*f3%= "+Df3VPrec);
         IndicatorShortName("Diff("+d_ma_n +"-"+ d_ma1_n+"%)= "+DVPrec+", D*f1%= "+Df1VPrec+", D*f2%= "+Df2VPrec); 
    //-----------------------------------------------------------------------------------------------------
                // to generate Field Price Name
               //------------------------------
      string UBandFP = FieldPrice(UPBand_FieldPrice ); 
      string FFP     = FieldPrice(First_FieldPrice  );
      string SFP     = FieldPrice(Second_FieldPrice );
      string TFP     = FieldPrice(Third_FieldPrice  );
      string LBandFP = FieldPrice(LowBand_FieldPrice);
    //-----------------------------------------------------------------------------------------------------
                // to generate Field Price Name
               //------------------------------
      // To generate Precentage FieldPrice-HMAs or Bands Values   
      string FV = DoubleToString(val ,Absolutedecimal);
      string SV = DoubleToString(val1,Absolutedecimal);
      string TV = DoubleToString(val2,Absolutedecimal);
      string UV = DoubleToString(val3,Absolutedecimal);
      string LV = DoubleToString(val4,Absolutedecimal);   
    //-----------------------------------------------------------------------------------------------------------------
      // Present Modules values of FieldPrice -  Bands Infomations on Seperated window becouse it present one line only
     //-----------------------------------------------------------------------------------------------------------------
      if (Fieldprice_DiffHullBands == 1 &&  PriceRule  == 0)
         IndicatorShortName(UBandFP+"-"+UB_n+"= "+UV+", "+LBandFP+"-"+LB_n+"= "+LV);  
    //------------------------------------------------------------------------------------------------------------------------
      // Present Modules values of FieldPrice - HMAs or Bands Infomations on Seperated window becouse it present one line only
     //-----------------------------------------------------------------------------------------------------------------------
      if (Fieldprice_DiffHulls == 1 &&  PriceRule  == 0)
         IndicatorShortName(FFP+"-"+ma_n+"= "+FV+", "+SFP+"-"+ma1_n+"= "+SV+", "+TFP+"-"+ma2_n+"= "+TV);  
         //IndicatorShortName(FFP+"-H="+FV+", "+SFP+"-H1="+SV+", "+TFP+"-H2="+TV);  
    //-----------------------------------------------------------------------------------------------------------------------
      // To generate Precentage FieldPrice-HMAs or Bands Values   
      string FVPrec = DoubleToString(valPrec ,Precentagedecimal);
      string SVPrec = DoubleToString(val1Prec,Precentagedecimal);
      string TVPrec = DoubleToString(val2Prec,Precentagedecimal);
      string UVPrec = DoubleToString(val3Prec,Precentagedecimal);
      string LVPrec = DoubleToString(val4Prec,Precentagedecimal);
    //---------------------------------------------------------------------------------------------------------------------------
      // Present Precentage values of FieldPrice - HMAs or Bands Infomations on Seperated window becouse it present one line only
     //--------------------------------------------------------------------------------------------------------------------------
      if (Fieldprice_DiffHulls == 1 && PriceRule  == 1)
         IndicatorShortName(FFP+"-"+ma_n+"%= "+FVPrec+", "+SFP+"-"+ma1_n+"%= "+SVPrec+", "+TFP+"-"+ma2_n+"%= "+TVPrec);
         //IndicatorShortName(FFP+"-H%="+FVPrec+", "+SFP+"-H1%="+SVPrec+", "+TFP+"-H2%="+TVPrec);
     //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      // Present Precentage values of FieldPrice - HMAs or Bands Infomations on Seperated window becouse it present one line only
     //--------------------------------------------------------------------------------------------------------------------------
      if (Fieldprice_DiffHullBands == 1 && PriceRule  == 1)
         IndicatorShortName(UBandFP+"-"+UB_n+"%= "+UVPrec+", "+LBandFP+"-"+LB_n+"%= "+LVPrec);
     //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       // Present ATR Infomations on Seperated window becouse it present one line only
       //-----------------------------------------------------------------------------
      if (ATR == 1) 
         //IndicatorShortName(DoubleToString(Close[i] - upBan ,Absolutedecimal) +   "---" + DoubleToString(Close[i] - downBan ,Absolutedecimal)); 
         IndicatorShortName("ATR("+InpAtrPeriod+") = "+DoubleToString(ATR_val,4)); 
       //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       // Present Hideden all  Infomations on Seperated window becouse it present one line only
       //--------------------------------------------------------------------------------------  
      if (Fieldprice_DiffHulls == 0 && Fieldprice_DiffHullBands == 0 && Diff_info == 0 && ATR == 0)
         IndicatorShortName("ATR Indicator Info");   
       //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   
        // Present All  Infomations on Chart window 
       //------------------------------------------
      if (All_Info == 1 && PriceRule  == 0 && DiffRule  == 0)
         Comment(("\n""Diff("+d_ma_n+ "-"+ d_ma1_n+") = "+DV+", D*f1= "+Df1V+", D*f2= "+Df2V+ "\n\n"+"ATR("+InpAtrPeriod+")= "+DoubleToString(ATR_val,4)+"\n\n"+UBandFP+"-"+UB_n+"= "+UV+", "+FFP+"-"+ma_n+"= "+FV+", "+SFP+"-"+ma1_n+"= "+SV+", "+TFP+"-"+ma2_n+"= "+TV+", "+LBandFP+"-"+LB_n+"= "+LV));
         //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       // Present All  Infomations on Chart window 
       //--------------------------------------------
       else if (All_Info == 1 && PriceRule  == 1&& DiffRule  == 1)
         Comment(("\n""D("+d_ma_n +"-"+ d_ma1_n+"%)= "+DVPrec+", D*f1%= "+Df1VPrec+", D*f2%= "+Df2VPrec+ "\n\n"+"ATR("+InpAtrPeriod+")= "+DoubleToString(ATR_val,4)+"\n\n"+UBandFP+"-"+UB_n+"%= "+UVPrec+", "+FFP+"-"+ma_n+"%= "+FVPrec+", "+SFP+"-"+ma1_n+"%= "+SVPrec+", "+TFP+"-"+ma2_n+"%= "+TVPrec+", "+LBandFP+"-"+LB_n+"%= "+LVPrec));
         //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       // Present All  Infomations on Chart window 
       //------------------------------------------ 
       else if (All_Info == 1 && PriceRule  == 0 && DiffRule  == 1)
         Comment(("\n""Diff("+d_ma_n +"-"+ d_ma1_n+"%)= "+DVPrec+", D*f1%= "+Df1VPrec+", D*f2%= "+Df2VPrec+ "\n\n"+"ATR("+InpAtrPeriod+")= "+DoubleToString(ATR_val,4)+"\n\n"+UBandFP+"-"+UB_n+"= "+UV+", "+FFP+"-"+ma_n+"= "+FV+", "+SFP+"-"+ma1_n+"= "+SV+", "+TFP+"-"+ma2_n+"= "+TV+", "+LBandFP+"-"+LB_n+"= "+LV)); 
      //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       else if (All_Info == 1 && PriceRule  == 1 && DiffRule  == 0)
         Comment(("\n""Diff("+d_ma_n+ "-"+ d_ma1_n+") = "+DV+", D*f1= "+Df1V+", D*f2= "+Df2V+ "\n\n"+"ATR("+InpAtrPeriod+")= "+DoubleToString(ATR_val,4)+"\n\n"+UBandFP+"-"+UB_n+"%= "+UVPrec+", "+FFP+"-"+ma_n+"%= "+FVPrec+", "+SFP+"-"+ma1_n+"%= "+SVPrec+", "+TFP+"-"+ma2_n+"%= "+TVPrec+", "+LBandFP+"-"+LB_n+"%= "+LVPrec)); 
         //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       else                                
          
         Comment(""); 
     }

   return(rates_total);

  }






