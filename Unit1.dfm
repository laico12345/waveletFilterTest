object Form1: TForm1
  Left = 268
  Top = 221
  Width = 1628
  Height = 797
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 16
    Top = 184
    Width = 113
    Height = 49
    Caption = 'Wavelet'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object Chart1: TChart
    Left = 144
    Top = 32
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Origin')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 144
    Top = 168
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Haar')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 2
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 144
    Top = 440
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Second')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 3
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 16
    Top = 240
    Width = 113
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Chart4: TChart
    Left = 144
    Top = 304
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Firstorder')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 5
    object LineSeries3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 24
    Width = 113
    Height = 153
    Caption = 'Wave'
    ItemIndex = 0
    Items.Strings = (
      #19977#35282#27874
      #26041#27874
      #27491#24358#27874)
    TabOrder = 6
  end
  object Chart5: TChart
    Left = 144
    Top = 576
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Lowpass')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 7
    object LineSeries4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Chart6: TChart
    Left = 632
    Top = 32
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Highpass')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 8
    object LineSeries5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Edit2: TEdit
    Left = 16
    Top = 344
    Width = 97
    Height = 21
    TabOrder = 9
    Text = '1'
  end
  object Chart7: TChart
    Left = 632
    Top = 168
    Width = 481
    Height = 129
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Text.Strings = (
      'Gaussian')
    BackColor = clWhite
    BottomAxis.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.5
    LeftAxis.Maximum = 10
    LeftAxis.Minimum = -10
    View3D = False
    TabOrder = 10
    object LineSeries6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|JPEG Image File (*.jpg)|*.jpg'
    Left = 32
    Top = 728
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 64
    Top = 728
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Top = 728
  end
end
