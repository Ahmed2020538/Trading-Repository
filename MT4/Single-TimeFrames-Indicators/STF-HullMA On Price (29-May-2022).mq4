//+------------------------------------------------------------------+
//|                                                       HullMA.mq4 |
//|                                                    Ahmed.Elsayed |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+



/*The Hull Moving Average (HMA), developed by Alan Hull, is an extremely
fast and smooth moving average that almost eliminates lag altogether
 and manages to improve smoothing at the same time.To calculate
it, firts, you have to calculate a difference between two LWMA of
periods p/2 and p and then calculate another LWMA from this difference
 but with a period of square root of p
Integer(SquareRoot(Period)) WMA [2 x Integer(Period/2) WMA(Price) – Period WMA(Price)]
Calculation
1-Calculate a Weighted Moving Average with period n / 2 and multiply it by 2
2-Calculate a Weighted Moving Average for period n and subtract if from step 1
3-Calculate a Weighted Moving Average with period sqrt(n) using the data from step 2
HMA= WMA(2*WMA(n/2) − WMA(n)),sqrt(n))*/
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------



#property copyright "Ahmad.Elsayed"
#property link      "https://www.mql5.com"
#property version   "1.00"
//#property strict
#property indicator_chart_window
#include <MovingAverages.mqh>
//---------------------------
//---------------------------
//--- indicator settings
//---------------------------
//---------------------------
#property indicator_buffers 6
#property indicator_color1 DeepSkyBlue
#property indicator_type1  DRAW_NONE
#property indicator_width1 2
#property indicator_label1 ""

#property indicator_color2 Orange
#property indicator_type2  DRAW_NONE
#property indicator_width2 2
#property indicator_label2 ""

#property indicator_type3  DRAW_NONE
#property indicator_width3 2
#property indicator_label3 ""


#property indicator_type4  DRAW_NONE
#property indicator_width4 2
#property indicator_label4 ""


#property indicator_type5  DRAW_NONE
#property indicator_width5 2
#property indicator_label5 ""



#property indicator_type6  DRAW_NONE
#property indicator_width6 2
#property indicator_label6 ""


//---------------------------

// drop down list for slope cases
//--------------------------------
enum SlopeCases                 
                                
  {
   As_Previous_Slope_Colour               = 0,    //As Previous Slope Colour
   As_Next_Slope_Colour                   = 1,   //As Next Slope Colour
   Independent_of_Previous_or_Next_Colour = 2,  //Independent of Previous or Next Colours
  };

enum linesstyle
  {
   Lines    = DRAW_LINE,   //Lines   
   //Arrows = DRAW_ARROW, //Arrows
   //Dots  = DRAW_ARROW, //Arrows
   Hidden  = DRAW_NONE  //Hidden
  };
//---------------------------
 
enum linestypes
  {
   Line  = STYLE_SOLID,   //SOLID   
   Dots = STYLE_DOT,     //DOT
   Dachs  = STYLE_DASH, //DASH
  };
//---------------------------
//---- input parameters

//Actually, the HMA uses LWMA but you can change it if you want
//writting MODE_SMA (simple moving average)or MODE_EMA (exponential
//moving average) or MODE_SMMA (smoothed moving average) instead of
//MODE_LWMA (linear-weighted moving average).
input bool                Show_Data_Window  = False;
input ENUM_APPLIED_PRICE  HMAPrice          = 0;
input int                 HMAPeriod         = 13;           // Period
input int                 HMAShift          = 0;             // Shift
 

//---------------------------
//---------------------------
input linesstyle       HMASlopeUpDownType   = Hidden; 
input  ENUM_LINE_STYLE HMASlopeUpDownStyle  = 0; 
input color            HMASlopeUpclr        = clrDeepSkyBlue;  
input color            HMASlopeDownclr      = clrOrange;
//---------------------------
//---------------------------
input SlopeCases       Zero_Slope_Colour   = As_Next_Slope_Colour; 
input linesstyle       HMASlopeZeroType    = Hidden;
input  ENUM_LINE_STYLE HMASlopeZeroStyle   = 0;    
input color            HMASlopeZeroClr     = clrGold; 
input int              HMASlopesWidth      = 1;         
//Here you chose the price which the moving averages will be applied:
//0-close price, 1-open price, 2-high price, 3-low price, 4- median
//price , 5-typical price, 6-weighted price.

//---- indicator buffers
double upHMABuffer      [];
double downHMABuffer    [];
double HMAUpZeroSlope   [];
double HMADownZeroSlope [];
double HMABuffer        [];
double ExtSignalBuffer  [];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping

   IndicatorDigits(Digits+1);

   IndicatorBuffers(6);
//--- drawing settings

   SetIndexStyle (0 , HMASlopeUpDownType , HMASlopeUpDownStyle , HMASlopesWidth , HMASlopeUpclr);       
   SetIndexShift (0 , HMAShift);
   SetIndexBuffer(0 , upHMABuffer);
   SetIndexLabel (0 , "");
   //---------------------------
   SetIndexStyle (1 , HMASlopeUpDownType , HMASlopeUpDownStyle , HMASlopesWidth , HMASlopeDownclr);   
   SetIndexShift (1 , HMAShift);
   SetIndexBuffer(1 , downHMABuffer);
   SetIndexLabel (1 , "");
   //---------------------------
   SetIndexStyle (2 , HMASlopeZeroType , HMASlopeZeroStyle , HMASlopesWidth , HMASlopeZeroClr);    
   SetIndexShift (2 , HMAShift);
   SetIndexBuffer(2 , HMAUpZeroSlope);
   SetIndexLabel (2 , "");
   //---------------------------
   SetIndexStyle (3 , HMASlopeZeroType , HMASlopeZeroStyle , HMASlopesWidth , HMASlopeZeroClr);    
   SetIndexShift (3 , HMAShift);
   SetIndexBuffer(3 , HMADownZeroSlope);
   SetIndexLabel (3 , "");
   //---------------------------
   SetIndexStyle (4 , DRAW_NONE); 
   SetIndexBuffer(4 , HMABuffer);
   SetIndexLabel (4 , "");
   
   //---------------------------
  if(Show_Data_Window == 0)
    {
      SetIndexBuffer(5 , ExtSignalBuffer);
      SetIndexStyle (5 , DRAW_NONE);  
      SetIndexLabel (5 , "");
      
      IndicatorShortName("");
      
    }
  else
    {
      SetIndexBuffer(5 , ExtSignalBuffer);
      SetIndexStyle (5 , DRAW_NONE);  
      SetIndexLabel (5 , "Hull Moving Average");
      
      
      IndicatorShortName("Hull Moving Average("+IntegerToString(HMAPeriod)
                         +","+IntegerToString(HMAShift)+")");
      
    }

   
   
   /*
   SetIndexStyle (5 , DRAW_NONE); 
   SetIndexBuffer(5 , ExtSignalBuffer);
   SetIndexLabel (5 , "Hull Moving Average");
*/
   
//--- name for indicator label

   //SetIndexLabel(0,"Hull Moving Average");
//--- check for input parameters
   if(HMAPeriod<=1)
     {
      Print("Wrong input parameters");
      return(INIT_FAILED);
     }
//--- initialization done

   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
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
//---
   int i,limit;
   double trend[];
   int p    = (int)floor(MathSqrt(HMAPeriod));
   int medp = (int)floor(HMAPeriod/2);
   
   ArrayResize(trend, rates_total-prev_calculated+HMAPeriod);
   ArraySetAsSeries(trend, true);

//---
   if(rates_total <= HMAPeriod)
      return(0);
//--- last counted bar will be recounted
   limit=rates_total-prev_calculated;
   if(prev_calculated>0)
      limit++;
//---------------------------
//---------------------------
//--- hull moving average 1st buffer
   for(i=0; i<limit; i++)
      HMABuffer[i]=2*iMA(NULL,0,medp,0,MODE_LWMA,HMAPrice,i)
                   -iMA(NULL,0,HMAPeriod,0,MODE_LWMA,HMAPrice,i);
//---------------------------
//---------------------------
//--- hull moving average 2nd buffer
   int weightsum=0;
   for(i=p; i>0; i--)
      weightsum+=i;
   LinearWeightedMAOnBuffer(rates_total,prev_calculated,0,p,HMABuffer,ExtSignalBuffer,weightsum);
//---------------------------
//---------------------------
   for(i = limit; i >= 0; i--)
     {
     
     
     
      if(Zero_Slope_Colour == 0)
         {
            upHMABuffer[i]   =  EMPTY_VALUE;
            downHMABuffer[i] =  EMPTY_VALUE;
            if(ExtSignalBuffer[i]>ExtSignalBuffer[i+1])
              {
               upHMABuffer[i] = ExtSignalBuffer[i];
               if(i <  (rates_total-1)&& upHMABuffer[i+1] == EMPTY_VALUE){
                  downHMABuffer[i] = ExtSignalBuffer[i];
                  }
               
              }
            else 
              {
               downHMABuffer[i] = ExtSignalBuffer[i];
               if(i <  (rates_total-1)&& downHMABuffer[i+1] == EMPTY_VALUE){
                 upHMABuffer[i] = ExtSignalBuffer[i];
                 }
               
              }
        }
     
      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
      if(Zero_Slope_Colour == 1)
         {
           //defining if it's up or down trend
            trend[i]  = (i<rates_total-1) ? (ExtSignalBuffer[i]>ExtSignalBuffer[i+1]) ? 1 : (ExtSignalBuffer[i]<ExtSignalBuffer[i+1]) ? -1 : trend[i+1] : 0;
            if(trend[i]>0)
              {
               upHMABuffer[i] = ExtSignalBuffer[i];
               if(trend[i+1]<0)
                  upHMABuffer[i+1]=ExtSignalBuffer[i+1];
               downHMABuffer[i] = EMPTY_VALUE;
              }
            else
               if(trend[i]<0)
                 {
                  downHMABuffer[i] = ExtSignalBuffer[i];
                  if(trend[i+1]>0)
                     downHMABuffer[i+1]=ExtSignalBuffer[i+1];
                  upHMABuffer[i] = EMPTY_VALUE;
                 }
        }

      //-----------------------------------------------------------------
      //-----------------------------------------------------------------
     
      if(Zero_Slope_Colour == 2)
        {
     
         upHMABuffer[i]   = EMPTY_VALUE;
         downHMABuffer[i] =  EMPTY_VALUE;
   
         if(ExtSignalBuffer[i]>ExtSignalBuffer[i+1])
           {
            upHMABuffer[i] = ExtSignalBuffer[i];
            
            HMAUpZeroSlope[i] = EMPTY_VALUE;
            if(i <  (rates_total-1)&& (upHMABuffer[i+1] == EMPTY_VALUE || upHMABuffer[i] == EMPTY_VALUE)){
               HMAUpZeroSlope[i]   = ExtSignalBuffer[i];
               HMAUpZeroSlope[i+1] = ExtSignalBuffer[i+1];
               }
            
           }
         else 
           {
            downHMABuffer[i] = ExtSignalBuffer[i];
            
            HMADownZeroSlope[i]  = EMPTY_VALUE;
            if(i <  (rates_total-1)&& (downHMABuffer[i+1] == EMPTY_VALUE || downHMABuffer[i] == EMPTY_VALUE )){
              HMADownZeroSlope[i]   = ExtSignalBuffer[i];
              HMADownZeroSlope[i+1] = ExtSignalBuffer[i+1];
              }
            
           }
         }
     }
//--- done
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
