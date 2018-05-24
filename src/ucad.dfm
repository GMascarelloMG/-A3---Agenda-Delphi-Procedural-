object tcad: Ttcad
  Left = 0
  Top = 0
  Caption = 'CADASTRAR'
  ClientHeight = 346
  ClientWidth = 700
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 520
    Top = 27
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label2: TLabel
    Left = 264
    Top = 83
    Width = 91
    Height = 13
    Caption = 'Telefone Comercial'
  end
  object Label3: TLabel
    Left = 520
    Top = 83
    Width = 98
    Height = 13
    Caption = 'Telefone Residencial'
  end
  object Label4: TLabel
    Left = 520
    Top = 188
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object SpeedButton1: TSpeedButton
    Left = 272
    Top = 264
    Width = 177
    Height = 57
    Caption = 'Cadastrar'
    OnClick = SpeedButton1Click
  end
  object edendereco: TLabeledEdit
    Left = 8
    Top = 155
    Width = 441
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o'
    TabOrder = 0
  end
  object ednome: TLabeledEdit
    Left = 8
    Top = 40
    Width = 441
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'NOME'
    TabOrder = 1
    OnKeyPress = ednomeKeyPress
  end
  object rgsexo: TRadioGroup
    Left = 8
    Top = 67
    Width = 185
    Height = 49
    Caption = 'Sexo'
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 2
  end
  object edtelc: TMaskEdit
    Left = 264
    Top = 95
    Width = 119
    Height = 21
    EditMask = '(00)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 3
    Text = '(  )     -    '
  end
  object edtelr: TMaskEdit
    Left = 520
    Top = 95
    Width = 119
    Height = 21
    EditMask = '(00)0000-0000;1;_'
    MaxLength = 13
    TabOrder = 4
    Text = '(  )    -    '
  end
  object edbairro: TLabeledEdit
    Left = 520
    Top = 155
    Width = 169
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 5
  end
  object rgec: TRadioGroup
    Left = 8
    Top = 182
    Width = 441
    Height = 59
    Caption = 'Estado Civil'
    Columns = 3
    Items.Strings = (
      'Solteiro'
      'Casado'
      'Uni'#227'o Est'#225'vel'
      'Divorciado'
      'Vi'#250'vo')
    TabOrder = 6
  end
  object mecep: TMaskEdit
    Left = 521
    Top = 207
    Width = 120
    Height = 21
    EditMask = '00000-000;1;_'
    MaxLength = 9
    TabOrder = 7
    Text = '     -   '
  end
  object edidade: TEdit
    Left = 520
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 8
  end
end
