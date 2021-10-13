object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Prueba de desarrollo delphi 1'
  ClientHeight = 202
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 445
    Height = 202
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitTop = -24
    object Label1: TLabel
      Left = 48
      Top = 24
      Width = 126
      Height = 13
      Caption = 'Calcular serie de Fibonacci'
    end
    object Label2: TLabel
      Left = 48
      Top = 50
      Width = 337
      Height = 31
      Caption = 
        'Por favor ingrese un numero entero positivo entre el 1 y el 20 p' +
        'ara generar el numero de elementos correspondientes a la serie F' +
        'ibonacci'
      WordWrap = True
    end
    object SpeedButton1: TSpeedButton
      Left = 117
      Top = 87
      Width = 90
      Height = 22
      Caption = 'Forma tradicional'
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 48
      Top = 128
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object SpeedButton2: TSpeedButton
      Left = 213
      Top = 87
      Width = 92
      Height = 22
      Caption = 'Forma recursiva'
      OnClick = SpeedButton2Click
    end
    object Button1: TButton
      Left = 192
      Top = 19
      Width = 105
      Height = 25
      Caption = 'Inicio del calculo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 48
      Top = 87
      Width = 49
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
  end
end
