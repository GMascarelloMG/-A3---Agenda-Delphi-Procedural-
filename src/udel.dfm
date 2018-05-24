object tdel: Ttdel
  Left = 0
  Top = 0
  ClientHeight = 368
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btbuscar: TSpeedButton
    Left = 559
    Top = 4
    Width = 65
    Height = 33
    Caption = 'Buscar'
    OnClick = btbuscarClick
  end
  object Grid: TStringGrid
    Left = 31
    Top = 43
    Width = 593
    Height = 262
    ColCount = 9
    FixedCols = 0
    RowCount = 100
    FixedRows = 0
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
  object Button1: TButton
    Left = 32
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btedit: TButton
    Left = 262
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = bteditClick
  end
  object Button2: TButton
    Left = 526
    Top = 320
    Width = 75
    Height = 26
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object edbusca: TEdit
    Left = 8
    Top = 8
    Width = 217
    Height = 21
    TabOrder = 4
  end
  object coestadocivil: TComboBox
    Left = 231
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'Estado Civil'
    Items.Strings = (
      'Solteiro'
      'Casado'
      'Uni'#227'o Est'#225'vel'
      'Divorciado'
      'Vi'#250'vo')
  end
  object cosexo: TComboBox
    Left = 382
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'Sexo'
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
end
