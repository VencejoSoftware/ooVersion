object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Demo form'
  ClientHeight = 128
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbVersion: TLabel
    Left = 8
    Top = 35
    Width = 12
    Height = 13
    Caption = '...'
  end
  object lbVersion1: TLabel
    Left = 8
    Top = 86
    Width = 12
    Height = 13
    Caption = '...'
  end
  object edMayor: TEdit
    Left = 8
    Top = 8
    Width = 40
    Height = 21
    TabOrder = 0
    Text = '1'
    OnChange = OnChangeVersion
  end
  object edMinor: TEdit
    Left = 54
    Top = 8
    Width = 40
    Height = 21
    TabOrder = 1
    Text = '2'
    OnChange = OnChangeVersion
  end
  object edPatch: TEdit
    Left = 100
    Top = 8
    Width = 40
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = OnChangeVersion
  end
  object edBuild: TEdit
    Left = 146
    Top = 8
    Width = 40
    Height = 21
    TabOrder = 3
    Text = '99'
    OnChange = OnChangeVersion
  end
  object cbStage: TComboBox
    Left = 188
    Top = 8
    Width = 109
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'Snapshot'
    OnChange = OnChangeVersion
    Items.Strings = (
      'Snapshot'
      'Alpha'
      'Beta'
      'ReleaseCandidate'
      'Productive')
  end
  object edMayor1: TEdit
    Left = 8
    Top = 59
    Width = 40
    Height = 21
    TabOrder = 5
    Text = '1'
    OnChange = OnChangeVersion1
  end
  object edMinor1: TEdit
    Left = 54
    Top = 59
    Width = 40
    Height = 21
    TabOrder = 6
    Text = '2'
    OnChange = OnChangeVersion1
  end
  object edPatch1: TEdit
    Left = 100
    Top = 59
    Width = 40
    Height = 21
    TabOrder = 7
    Text = '0'
    OnChange = OnChangeVersion1
  end
  object edBuild1: TEdit
    Left = 146
    Top = 59
    Width = 40
    Height = 21
    TabOrder = 8
    Text = '71'
    OnChange = OnChangeVersion1
  end
  object cbStage1: TComboBox
    Left = 188
    Top = 59
    Width = 109
    Height = 21
    Style = csDropDownList
    ItemIndex = 2
    TabOrder = 9
    Text = 'Beta'
    OnChange = OnChangeVersion1
    Items.Strings = (
      'Snapshot'
      'Alpha'
      'Beta'
      'ReleaseCandidate'
      'Productive')
  end
  object Button1: TButton
    Left = 222
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Compare'
    TabOrder = 10
    OnClick = Button1Click
  end
end
