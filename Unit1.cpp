//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "jpeg.hpp"
#include <math.h>
#include <vector>
#include <cmath>
#include <time.h>
#include <stdlib.h>
#include <cfloat>
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int foo(const int position, const int period){
    return period - abs(position % (2 * period) - period);
}
int square(int x,int freq)
{
    if((x/10)%2 == 0) return 2;
    else if ((x/10)%2 == 1) return -2;
    else return 0;
}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
    Wavelet();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Wavelet()
{
    //TODO: Add your source code here
    //ListBox1->Clear();ListBox2->Clear();ListBox3->Clear();ListBox5->Clear();
    Series1->Clear();LineSeries1->Clear();LineSeries2->Clear();LineSeries3->Clear();LineSeries4->Clear();
    LineSeries5->Clear();LineSeries6->Clear();
    float A,a[100],haar[100],diff_fir[100],diff_sec[100],Lowpass[100],Highpass[100];
    float Sig[100];
    int B,Low_count;
    float waveletcoff[2] = {1/1.414 , -1/1.414};
    int array_length = (sizeof(a) / sizeof(a[0]));
    float sigma = StrToFloat(Edit2->Text);
    float gau = sqrt(2*M_PI);
    //A = AMPLITUDE * sin(i * 2 * M_PI / FREQUENCY);
    if(RadioGroup1->ItemIndex == 0){
        for(int i=0;i<array_length;i++){
            A=foo(i,5);
            a[i] = A;
        }
        Series1->GetVertAxis->SetMinMax(10,-10);
        LineSeries1->GetVertAxis->SetMinMax(10,-10);
        LineSeries2->GetVertAxis->SetMinMax(10,-10);
        LineSeries3->GetVertAxis->SetMinMax(10,-10);
        LineSeries4->GetVertAxis->SetMinMax(10,-10);
        LineSeries5->GetVertAxis->SetMinMax(10,-10);
        LineSeries6->GetVertAxis->SetMinMax(10,-10);
    }
    else if(RadioGroup1->ItemIndex == 1){
        /*for(int i=0;i<5;i++)
            a[i] = 0;   */
        for(int i=0;i<array_length;i++){
            B=square(i,5);
            a[i] = B;
        }
        Series1->GetVertAxis->SetMinMax(10,-10);
        LineSeries1->GetVertAxis->SetMinMax(10,-10);
        LineSeries2->GetVertAxis->SetMinMax(10,-10);
        LineSeries3->GetVertAxis->SetMinMax(10,-10);
        LineSeries4->GetVertAxis->SetMinMax(10,-10);
        LineSeries5->GetVertAxis->SetMinMax(10,-10);
        LineSeries6->GetVertAxis->SetMinMax(10,-10);
    }
    else if(RadioGroup1->ItemIndex == 2){
        for(int i=0;i<array_length;i++){
            A=sin(3.141215967*i*10./180.);
            a[i] = A;
        }
        Series1->GetVertAxis->SetMinMax(2,-2);
        LineSeries1->GetVertAxis->SetMinMax(2,-2);
        LineSeries2->GetVertAxis->SetMinMax(2,-2);
        LineSeries3->GetVertAxis->SetMinMax(2,-2);
        LineSeries4->GetVertAxis->SetMinMax(2,-2);
        LineSeries5->GetVertAxis->SetMinMax(2,-2);
        LineSeries6->GetVertAxis->SetMinMax(2,-2);
    }
    for(int i = 0; i<array_length;i++)
        Series1->AddY(a[i],"",clRed);

    for (int i = 0; i < array_length; i++){
        haar[i] = a[i] * waveletcoff[1] + a[(i+1)%array_length] * waveletcoff[0];
        LineSeries1->AddY(haar[i],"",clRed);
    }
    for (int i = 0; i < array_length; i++){
        diff_fir[i] = a[(i+1)%array_length] - a[i];
        LineSeries3->AddY(diff_fir[i],"",clRed);
    }
    for (int i = 1; i < array_length; i++){
        diff_sec[i] = a[(i+1)%array_length] + a[i-1] - (2*a[i]);
        LineSeries2->AddY(diff_sec[i],"",clRed);
    }
    for (int i = 0; i < array_length; i++){
        Low_count=0;
        for(int j=0;j<10;j++)
            Low_count = Low_count + (a[(i+j)%array_length]);
        Lowpass[i] = Low_count/10;
        LineSeries4->AddY(Lowpass[i],"",clRed);
    }
    for (int i = 1; i < array_length; i++){
        Highpass[i] = a[i]  - a[i-1];
        LineSeries5->AddY(Highpass[i],"",clRed);
    }
    for (int i = 1; i < array_length; i++){
        Sig[i] = (1/(gau*sigma)) * exp(-(pow(i,2)/(2*pow(sigma,2))));
        LineSeries6->AddY(Sig[i],"",clRed);
    }
    Edit1->Text = Series1->Count();
}
void __fastcall TForm1::FormCreate(TObject *Sender)
{
    Form1->Caption=Now();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
    Form1->Caption=Now();
}
//---------------------------------------------------------------------------


