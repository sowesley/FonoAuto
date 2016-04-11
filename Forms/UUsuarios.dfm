inherited FUsuarios: TFUsuarios
  Caption = 'FUsuarios'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlConteudo: TRzPanel
    inherited pgc1: TRzPageControl
      ActivePage = tsVisual
      TabIndex = 1
      FixedDimension = 19
      inherited tsConsulta: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 20
        ExplicitWidth = 696
        ExplicitHeight = 339
        inherited pnl1: TRzPanel
          inherited btnRefresh: TAdvGlowButton
            OnClick = btnRefreshClick
          end
          object btnTrocaSenha: TAdvGlowButton
            AlignWithMargins = True
            Left = 499
            Top = 3
            Width = 118
            Height = 27
            Align = alLeft
            BorderStyle = bsNone
            Caption = 'TROCA SENHA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 4
            Appearance.Color = 10485760
            Appearance.ColorTo = 10485760
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = clBlack
            Appearance.ColorDownTo = clBlack
            Appearance.ColorHot = clBlack
            Appearance.ColorHotTo = clBlack
            Appearance.ColorMirror = 10485760
            Appearance.ColorMirrorTo = 10485760
            Appearance.ColorMirrorHot = clBlack
            Appearance.ColorMirrorHotTo = clBlack
            Appearance.ColorMirrorDown = clBlack
            Appearance.ColorMirrorDownTo = clBlack
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.TextColorDown = clWhite
            Appearance.TextColorHot = clWhite
            ExplicitLeft = 567
          end
        end
        inherited grdConsulta: TAdvStringGrid
          OnClickCell = grdConsultaClickCell
          ShowDesignHelper = False
        end
      end
      inherited tsVisual: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 20
        ExplicitWidth = 696
        ExplicitHeight = 339
        object lbl29: TLabel [0]
          Left = 13
          Top = 10
          Width = 10
          Height = 13
          Caption = 'Id'
        end
        object lbl2: TLabel [1]
          Left = 52
          Top = 10
          Width = 75
          Height = 13
          Caption = 'Nome Completo'
        end
        object lbl1: TLabel [2]
          Left = 11
          Top = 53
          Width = 25
          Height = 13
          Caption = 'Login'
        end
        object lbl3: TLabel [3]
          Left = 111
          Top = 53
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        inherited RzPanel1: TRzPanel
          TabOrder = 4
        end
        object edtId: TRzEdit
          Left = 11
          Top = 26
          Width = 35
          Height = 21
          Text = ''
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
        object edtNome: TRzEdit
          Left = 52
          Top = 26
          Width = 321
          Height = 21
          Text = ''
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object edtLogin: TRzEdit
          Left = 11
          Top = 69
          Width = 94
          Height = 21
          Text = ''
          CharCase = ecLowerCase
          TabOrder = 2
        end
        object edtSenha: TRzEdit
          Left = 111
          Top = 69
          Width = 94
          Height = 21
          Text = ''
          PasswordChar = '*'
          TabOrder = 3
        end
      end
    end
  end
end
