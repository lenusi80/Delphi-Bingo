object FrmBigNumeros: TFrmBigNumeros
  Left = -4
  Top = -4
  BorderStyle = bsNone
  Caption = 'BigNumeros'
  ClientHeight = 708
  ClientWidth = 1024
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 0
    Top = 0
    Width = 209
    Height = 217
    Brush.Color = clBlack
    Shape = stEllipse
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 1024
    Height = 708
    Align = alClient
    Brush.Color = clBlack
    Pen.Style = psClear
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 195
    Top = 39
    Width = 649
    Height = 540
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -600
    Font.Name = 'Baskerville Old Face'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = -34
    Top = 2
    Width = 278
    Height = 230
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -187
    Font.Name = 'Imprint MT Shadow'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 72
    Top = 592
  end
end
