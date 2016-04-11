inherited FPacientes: TFPacientes
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 521
  ClientWidth = 767
  OnCreate = FormCreate
  ExplicitWidth = 783
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlConteudo: TRzPanel
    Width = 767
    Height = 521
    ExplicitWidth = 767
    ExplicitHeight = 521
    inherited pgc1: TRzPageControl
      Width = 763
      Height = 517
      ActivePage = tsVisual
      TabIndex = 1
      ExplicitWidth = 763
      ExplicitHeight = 517
      FixedDimension = 19
      inherited tsConsulta: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 20
        ExplicitWidth = 759
        ExplicitHeight = 494
        inherited pnl1: TRzPanel
          Width = 759
          ExplicitWidth = 759
          inherited btnEdit: TAdvGlowButton
            ExplicitTop = 2
          end
          inherited btnRefresh: TAdvGlowButton
            OnClick = btnRefreshClick
          end
        end
        inherited grdConsulta: TAdvStringGrid
          Width = 759
          Height = 459
          OnClickCell = grdConsultaClickCell
          SearchFooter.Visible = True
          ShowDesignHelper = False
          ExplicitWidth = 759
          ExplicitHeight = 459
        end
      end
      inherited tsVisual: TRzTabSheet
        ExplicitWidth = 759
        ExplicitHeight = 494
        inherited RzPanel1: TRzPanel
          Top = 459
          Width = 759
          ExplicitTop = 459
          ExplicitWidth = 759
        end
        object pgc2: TRzPageControl
          Left = 0
          Top = 0
          Width = 759
          Height = 459
          Hint = ''
          ActivePage = tsFichaBasica
          Align = alClient
          TabIndex = 0
          TabOrder = 1
          FixedDimension = 19
          object tsFichaBasica: TRzTabSheet
            Color = clWhite
            Caption = 'Ficha de Cadastro'
            object grp1: TRzGroupBox
              Left = 379
              Top = 0
              Width = 376
              Height = 436
              Align = alClient
              Caption = 'DADOS DE CONTATO'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -13
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 15724521
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              GroupStyle = gsUnderline
              ParentFont = False
              TabOrder = 1
              object lbl9: TLabel
                Left = 6
                Top = 24
                Width = 45
                Height = 13
                Caption = 'Endere'#231'o'
              end
              object lbl10: TLabel
                Left = 6
                Top = 67
                Width = 37
                Height = 13
                Caption = 'N'#250'mero'
              end
              object lbl11: TLabel
                Left = 71
                Top = 67
                Width = 65
                Height = 13
                Caption = 'Complemento'
              end
              object lbl12: TLabel
                Left = 191
                Top = 67
                Width = 28
                Height = 13
                Caption = 'Bairro'
              end
              object lbl13: TLabel
                Left = 6
                Top = 110
                Width = 98
                Height = 13
                Caption = 'Ponto de Refer'#234'ncia'
              end
              object lbl14: TLabel
                Left = 6
                Top = 153
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object lbl15: TLabel
                Left = 134
                Top = 239
                Width = 42
                Height = 13
                Caption = 'Telefone'
              end
              object lbl16: TLabel
                Left = 254
                Top = 239
                Width = 33
                Height = 13
                Caption = 'Celular'
              end
              object lbl17: TLabel
                Left = 6
                Top = 282
                Width = 28
                Height = 13
                Caption = 'E-mail'
              end
              object lbl20: TLabel
                Left = 6
                Top = 239
                Width = 19
                Height = 13
                Caption = 'CEP'
              end
              object lbl21: TLabel
                Left = 6
                Top = 196
                Width = 19
                Height = 13
                Caption = 'Pa'#237's'
              end
              object edtEndereco: TRzEdit
                Left = 6
                Top = 40
                Width = 362
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 0
              end
              object edtNumero: TRzEdit
                Left = 6
                Top = 83
                Width = 59
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 1
              end
              object edtComplemento: TRzEdit
                Left = 71
                Top = 83
                Width = 114
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 2
              end
              object edtBairro: TRzEdit
                Left = 191
                Top = 83
                Width = 177
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 3
              end
              object edtReferencia: TRzEdit
                Left = 6
                Top = 126
                Width = 362
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 4
              end
              object edtCidCod: TRzButtonEdit
                Left = 6
                Top = 169
                Width = 94
                Height = 21
                Text = ''
                TabOrder = 5
                OnEnter = edtPaiCodEnter
                OnExit = edtCidCodExit
                OnKeyPress = edtCidCodKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = edtCidCodButtonClick
              end
              object edtCidadeNome: TRzEdit
                Left = 99
                Top = 169
                Width = 233
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 6
              end
              object edtCidadeUF: TRzEdit
                Left = 338
                Top = 169
                Width = 30
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 7
              end
              object edtTelefone: TRzEdit
                Left = 134
                Top = 255
                Width = 114
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 11
              end
              object edtCelular: TRzEdit
                Left = 254
                Top = 255
                Width = 114
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 12
              end
              object edtEmail: TRzEdit
                Left = 6
                Top = 298
                Width = 362
                Height = 21
                Text = ''
                CharCase = ecLowerCase
                TabOrder = 13
              end
              object grp4: TRzGroupBox
                Left = 0
                Top = 323
                Width = 376
                Height = 113
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                Caption = 'Quando Menor de Idade'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clWindowText
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                GroupStyle = gsUnderline
                TabOrder = 14
                Transparent = True
                object lbl18: TLabel
                  Left = 6
                  Top = 25
                  Width = 106
                  Height = 13
                  Caption = 'Nome do Respons'#225'vel'
                end
                object lbl19: TLabel
                  Left = 6
                  Top = 68
                  Width = 99
                  Height = 13
                  Caption = 'Telefone de Contato'
                end
                object edtResponsavel: TRzEdit
                  Left = 6
                  Top = 41
                  Width = 362
                  Height = 21
                  Text = ''
                  CharCase = ecUpperCase
                  TabOrder = 0
                end
                object edtFoneContato: TRzEdit
                  Left = 6
                  Top = 84
                  Width = 114
                  Height = 21
                  Text = ''
                  CharCase = ecUpperCase
                  TabOrder = 1
                end
              end
              object edtCEP: TRzEdit
                Left = 6
                Top = 255
                Width = 122
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 10
              end
              object edtPaisCod: TRzButtonEdit
                Left = 6
                Top = 212
                Width = 94
                Height = 21
                Text = ''
                TabOrder = 8
                OnEnter = edtPaiCodEnter
                OnExit = edtPaisCodExit
                OnKeyPress = edtPaisCodKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = edtPaisCodButtonClick
              end
              object edtNomePais: TRzEdit
                Left = 99
                Top = 212
                Width = 269
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 9
              end
            end
            object grp2: TRzGroupBox
              Left = 0
              Top = 0
              Width = 379
              Height = 436
              Align = alLeft
              Caption = 'INFORMA'#199#213'ES PESSOAIS'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -13
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 15724521
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              GroupStyle = gsUnderline
              ParentFont = False
              TabOrder = 0
              object lbl2: TLabel
                Left = 52
                Top = 24
                Width = 75
                Height = 13
                Caption = 'Nome Completo'
              end
              object lbl1: TLabel
                Left = 11
                Top = 67
                Width = 35
                Height = 13
                Caption = 'Apelido'
              end
              object lbl3: TLabel
                Left = 167
                Top = 67
                Width = 96
                Height = 13
                Caption = 'Data de Nascimento'
              end
              object lbl4: TLabel
                Left = 269
                Top = 67
                Width = 28
                Height = 13
                Caption = 'Idade'
              end
              object lbl5: TLabel
                Left = 11
                Top = 110
                Width = 61
                Height = 13
                Caption = 'Naturalidade'
              end
              object lbl6: TLabel
                Left = 11
                Top = 153
                Width = 66
                Height = 13
                Caption = 'Nacionalidade'
              end
              object lbl7: TLabel
                Left = 11
                Top = 196
                Width = 14
                Height = 13
                Caption = 'Pai'
              end
              object lbl8: TLabel
                Left = 11
                Top = 239
                Width = 20
                Height = 13
                Caption = 'M'#227'e'
              end
              object lbl22: TLabel
                Left = 111
                Top = 67
                Width = 24
                Height = 13
                Caption = 'Sexo'
              end
              object lbl29: TLabel
                Left = 13
                Top = 24
                Width = 10
                Height = 13
                Caption = 'Id'
              end
              object edtNome: TRzEdit
                Left = 52
                Top = 40
                Width = 321
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 1
                OnChange = edtNomeChange
              end
              object edtApelido: TRzEdit
                Left = 11
                Top = 83
                Width = 94
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 2
              end
              object edtNascimento: TJvDateEdit
                Left = 167
                Top = 83
                Width = 96
                Height = 21
                ShowNullDate = False
                TabOrder = 4
                OnExit = edtNascimentoExit
              end
              object edtIdade: TRzEdit
                Left = 269
                Top = 83
                Width = 104
                Height = 21
                TabStop = False
                Text = ''
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 5
              end
              object edtNatCodigo: TRzButtonEdit
                Left = 11
                Top = 126
                Width = 94
                Height = 21
                Text = ''
                TabOrder = 6
                OnEnter = edtPaiCodEnter
                OnExit = edtNatCodigoExit
                OnKeyPress = edtNatCodigoKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = edtNatCodigoButtonClick
              end
              object edtNaturalidade: TRzEdit
                Left = 104
                Top = 126
                Width = 233
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 7
              end
              object edtNatUF: TRzEdit
                Left = 343
                Top = 126
                Width = 30
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 8
              end
              object edtNacionalidade: TRzEdit
                Left = 11
                Top = 169
                Width = 362
                Height = 21
                Text = ''
                CharCase = ecUpperCase
                TabOrder = 9
              end
              object edtPaiCod: TRzButtonEdit
                Left = 11
                Top = 212
                Width = 61
                Height = 21
                Text = ''
                TabOrder = 10
                OnEnter = edtPaiCodEnter
                OnExit = edtPaiCodExit
                OnKeyPress = edtPaiCodKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = edtPaiCodButtonClick
              end
              object edtNomePai: TRzEdit
                Left = 71
                Top = 212
                Width = 302
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 11
              end
              object edtMaeCod: TRzButtonEdit
                Left = 11
                Top = 255
                Width = 61
                Height = 21
                Text = ''
                TabOrder = 12
                OnEnter = edtPaiCodEnter
                OnExit = edtMaeCodExit
                OnKeyPress = edtMaeCodKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = edtMaeCodButtonClick
              end
              object edtNomeMae: TRzEdit
                Left = 70
                Top = 255
                Width = 303
                Height = 21
                TabStop = False
                Text = ''
                CharCase = ecUpperCase
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 13
              end
              object grp3: TRzGroupBox
                Left = 0
                Top = 282
                Width = 379
                Height = 154
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                Caption = 'Anota'#231#245'es Gerais'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clWindowText
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                GroupStyle = gsUnderline
                TabOrder = 14
                Transparent = True
                object mmoAnotacoes: TRzMemo
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 373
                  Height = 131
                  Align = alClient
                  TabOrder = 0
                end
              end
              object cbbSexo: TRzComboBox
                Left = 111
                Top = 83
                Width = 50
                Height = 21
                Style = csDropDownList
                TabOrder = 3
                Items.Strings = (
                  'Fem'
                  'Masc')
                Values.Strings = (
                  'F'
                  'M')
              end
              object edtId: TRzEdit
                Left = 11
                Top = 40
                Width = 35
                Height = 21
                Text = ''
                Color = clInfoBk
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object tsComplemento: TRzTabSheet
            Color = clWhite
            Caption = 'Dados Complementares'
            object hdrNomePaciente: TJvGradientHeaderPanel
              Left = 0
              Top = 0
              Width = 755
              Height = 30
              GradientStartColor = 10485760
              GradientSteps = 1000
              GradientStyle = grHorizontal
              LabelTop = 6
              LabelCaption = 'Nome do Paciente'
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWhite
              LabelFont.Height = -13
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = [fsBold]
              LabelAlignment = taLeftJustify
              Align = alTop
              TabOrder = 0
            end
            object grp5: TRzGroupBox
              Left = 0
              Top = 30
              Width = 755
              Height = 209
              Align = alTop
              Caption = 'DOCUMENTA'#199#195'O'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -13
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 15724521
              GroupStyle = gsUnderline
              TabOrder = 1
              object grdDocumentos: TAdvStringGrid
                Left = 0
                Top = 48
                Width = 359
                Height = 161
                Cursor = crDefault
                Align = alClient
                DrawingStyle = gdsClassic
                ScrollBars = ssBoth
                TabOrder = 1
                HoverRowCells = [hcNormal, hcSelected]
                OnClickCell = grdDocumentosClickCell
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = clWindowText
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ControlLook.FixedGradientHoverFrom = clGray
                ControlLook.FixedGradientHoverTo = clWhite
                ControlLook.FixedGradientDownFrom = clGray
                ControlLook.FixedGradientDownTo = clSilver
                ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownHeader.Font.Color = clWindowText
                ControlLook.DropDownHeader.Font.Height = -11
                ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                ControlLook.DropDownHeader.Font.Style = []
                ControlLook.DropDownHeader.Visible = True
                ControlLook.DropDownHeader.Buttons = <>
                ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownFooter.Font.Color = clWindowText
                ControlLook.DropDownFooter.Font.Height = -11
                ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                ControlLook.DropDownFooter.Font.Style = []
                ControlLook.DropDownFooter.Visible = True
                ControlLook.DropDownFooter.Buttons = <>
                Filter = <>
                FilterDropDown.Font.Charset = DEFAULT_CHARSET
                FilterDropDown.Font.Color = clWindowText
                FilterDropDown.Font.Height = -11
                FilterDropDown.Font.Name = 'Tahoma'
                FilterDropDown.Font.Style = []
                FilterDropDown.TextChecked = 'Checked'
                FilterDropDown.TextUnChecked = 'Unchecked'
                FilterDropDownClear = '(All)'
                FilterEdit.TypeNames.Strings = (
                  'Starts with'
                  'Ends with'
                  'Contains'
                  'Not contains'
                  'Equal'
                  'Not equal'
                  'Clear')
                FixedRowHeight = 22
                FixedFont.Charset = DEFAULT_CHARSET
                FixedFont.Color = clWindowText
                FixedFont.Height = -11
                FixedFont.Name = 'Tahoma'
                FixedFont.Style = [fsBold]
                FloatFormat = '%.2f'
                PrintSettings.DateFormat = 'dd/mm/yyyy'
                PrintSettings.Font.Charset = DEFAULT_CHARSET
                PrintSettings.Font.Color = clWindowText
                PrintSettings.Font.Height = -11
                PrintSettings.Font.Name = 'Tahoma'
                PrintSettings.Font.Style = []
                PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                PrintSettings.FixedFont.Color = clWindowText
                PrintSettings.FixedFont.Height = -11
                PrintSettings.FixedFont.Name = 'Tahoma'
                PrintSettings.FixedFont.Style = []
                PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                PrintSettings.HeaderFont.Color = clWindowText
                PrintSettings.HeaderFont.Height = -11
                PrintSettings.HeaderFont.Name = 'Tahoma'
                PrintSettings.HeaderFont.Style = []
                PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                PrintSettings.FooterFont.Color = clWindowText
                PrintSettings.FooterFont.Height = -11
                PrintSettings.FooterFont.Name = 'Tahoma'
                PrintSettings.FooterFont.Style = []
                PrintSettings.PageNumSep = '/'
                SearchFooter.FindNextCaption = 'Find &next'
                SearchFooter.FindPrevCaption = 'Find &previous'
                SearchFooter.Font.Charset = DEFAULT_CHARSET
                SearchFooter.Font.Color = clWindowText
                SearchFooter.Font.Height = -11
                SearchFooter.Font.Name = 'Tahoma'
                SearchFooter.Font.Style = []
                SearchFooter.HighLightCaption = 'Highlight'
                SearchFooter.HintClose = 'Close'
                SearchFooter.HintFindNext = 'Find next occurrence'
                SearchFooter.HintFindPrev = 'Find previous occurrence'
                SearchFooter.HintHighlight = 'Highlight occurrences'
                SearchFooter.MatchCaseCaption = 'Match case'
                ShowDesignHelper = False
                SortSettings.DefaultFormat = ssAutomatic
                Version = '7.2.8.0'
              end
              object pnlBtnsDoc: TRzPanel
                Left = 0
                Top = 17
                Width = 755
                Height = 31
                Align = alTop
                BorderOuter = fsButtonDown
                Color = clWhite
                TabOrder = 0
                object btnAddDoc: TAdvGlowButton
                  AlignWithMargins = True
                  Left = 5
                  Top = 5
                  Width = 76
                  Height = 21
                  Align = alLeft
                  BorderStyle = bsNone
                  Caption = 'Adicionar'
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
                  TabOrder = 0
                  OnClick = btnAddDocClick
                  Appearance.Color = clLime
                  Appearance.ColorTo = clGreen
                  Appearance.ColorChecked = 16111818
                  Appearance.ColorCheckedTo = 16367008
                  Appearance.ColorDisabled = 15921906
                  Appearance.ColorDisabledTo = 15921906
                  Appearance.ColorDown = clBlack
                  Appearance.ColorDownTo = clBlack
                  Appearance.ColorHot = clBlack
                  Appearance.ColorHotTo = clBlack
                  Appearance.ColorMirror = clLime
                  Appearance.ColorMirrorTo = clGreen
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
                end
                object btnDelDoc: TAdvGlowButton
                  AlignWithMargins = True
                  Left = 159
                  Top = 5
                  Width = 66
                  Height = 21
                  Align = alLeft
                  BorderStyle = bsNone
                  Caption = 'Excluir'
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
                  TabOrder = 2
                  OnClick = btnDelDocClick
                  Appearance.Color = clRed
                  Appearance.ColorTo = 225
                  Appearance.ColorChecked = 16111818
                  Appearance.ColorCheckedTo = 16367008
                  Appearance.ColorDisabled = 15921906
                  Appearance.ColorDisabledTo = 15921906
                  Appearance.ColorDown = clBlack
                  Appearance.ColorDownTo = clBlack
                  Appearance.ColorHot = clBlack
                  Appearance.ColorHotTo = clBlack
                  Appearance.ColorMirror = clRed
                  Appearance.ColorMirrorTo = 225
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
                end
                object btnEditDoc: TAdvGlowButton
                  AlignWithMargins = True
                  Left = 87
                  Top = 5
                  Width = 66
                  Height = 21
                  Align = alLeft
                  BorderStyle = bsNone
                  Caption = 'Editar'
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
                  TabOrder = 1
                  OnClick = btnEditDocClick
                  Appearance.Color = clYellow
                  Appearance.ColorTo = 1148667
                  Appearance.ColorChecked = 16111818
                  Appearance.ColorCheckedTo = 16367008
                  Appearance.ColorDisabled = 15921906
                  Appearance.ColorDisabledTo = 15921906
                  Appearance.ColorDown = clBlack
                  Appearance.ColorDownTo = clBlack
                  Appearance.ColorHot = clBlack
                  Appearance.ColorHotTo = clBlack
                  Appearance.ColorMirror = clYellow
                  Appearance.ColorMirrorTo = 1148667
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
                end
              end
              object pnlDocs: TRzPanel
                Left = 359
                Top = 48
                Width = 396
                Height = 161
                Align = alRight
                BorderOuter = fsButtonDown
                Color = 15724521
                Enabled = False
                TabOrder = 2
                object lbl23: TLabel
                  Left = 6
                  Top = 6
                  Width = 92
                  Height = 13
                  Caption = 'Tipo de Documento'
                  Enabled = False
                end
                object lbl24: TLabel
                  Left = 167
                  Top = 6
                  Width = 37
                  Height = 13
                  Caption = 'N'#250'mero'
                  Enabled = False
                end
                object lbl25: TLabel
                  Left = 6
                  Top = 49
                  Width = 69
                  Height = 13
                  Caption = #211'rg'#227'o Emissor'
                  Enabled = False
                end
                object lbl26: TLabel
                  Left = 103
                  Top = 49
                  Width = 79
                  Height = 13
                  Caption = 'Data de Emiss'#227'o'
                  Enabled = False
                end
                object lbl27: TLabel
                  Left = 199
                  Top = 49
                  Width = 75
                  Height = 13
                  Caption = 'Pa'#237's de Emiss'#227'o'
                  Enabled = False
                end
                object lbl28: TLabel
                  Left = 351
                  Top = 49
                  Width = 13
                  Height = 13
                  Caption = 'UF'
                  Enabled = False
                end
                object pnl2: TRzPanel
                  Left = 2
                  Top = 128
                  Width = 392
                  Height = 31
                  Align = alBottom
                  BorderOuter = fsButtonDown
                  BorderSides = [sdBottom]
                  Color = clWhite
                  Enabled = False
                  TabOrder = 6
                  Transparent = True
                  object btnSaveDoc: TAdvGlowButton
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 62
                    Height = 23
                    Align = alLeft
                    BorderStyle = bsNone
                    Caption = 'Salvar'
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
                    TabOrder = 0
                    OnClick = btnSaveDocClick
                    Appearance.Color = clLime
                    Appearance.ColorTo = clGreen
                    Appearance.ColorChecked = 16111818
                    Appearance.ColorCheckedTo = 16367008
                    Appearance.ColorDisabled = 15921906
                    Appearance.ColorDisabledTo = 15921906
                    Appearance.ColorDown = clBlack
                    Appearance.ColorDownTo = clBlack
                    Appearance.ColorHot = clBlack
                    Appearance.ColorHotTo = clBlack
                    Appearance.ColorMirror = clLime
                    Appearance.ColorMirrorTo = clGreen
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
                    Enabled = False
                  end
                  object btnCancelDoc: TAdvGlowButton
                    AlignWithMargins = True
                    Left = 71
                    Top = 3
                    Width = 66
                    Height = 23
                    Align = alLeft
                    BorderStyle = bsNone
                    Caption = 'Cancelar'
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
                    TabOrder = 1
                    OnClick = btnCancelDocClick
                    Appearance.Color = clRed
                    Appearance.ColorTo = 225
                    Appearance.ColorChecked = 16111818
                    Appearance.ColorCheckedTo = 16367008
                    Appearance.ColorDisabled = 15921906
                    Appearance.ColorDisabledTo = 15921906
                    Appearance.ColorDown = clBlack
                    Appearance.ColorDownTo = clBlack
                    Appearance.ColorHot = clBlack
                    Appearance.ColorHotTo = clBlack
                    Appearance.ColorMirror = clRed
                    Appearance.ColorMirrorTo = 225
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
                    Enabled = False
                  end
                end
                object cbbTipoDoc: TRzComboBox
                  Left = 6
                  Top = 22
                  Width = 155
                  Height = 21
                  Style = csDropDownList
                  Enabled = False
                  TabOrder = 0
                  Items.Strings = (
                    'Documento de Identidade'
                    'Documento de Estrangeiro'
                    'Documento de Conselho Regional'
                    'Documento de Conselho de Classe'
                    'Carteira de Trabalho'
                    'CPF'
                    'CNPJ'
                    'Passaporte'
                    'Certificado de Reservista'
                    'CNH'
                    'Identidade Funcional'
                    'Certid'#227'o')
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    '10'
                    '11'
                    '12')
                end
                object edtNumDoc: TRzEdit
                  Left = 167
                  Top = 22
                  Width = 218
                  Height = 21
                  Text = ''
                  Enabled = False
                  TabOrder = 1
                end
                object cbbEmissor: TRzComboBox
                  Left = 6
                  Top = 65
                  Width = 91
                  Height = 21
                  Style = csDropDownList
                  Enabled = False
                  TabOrder = 2
                  Items.Strings = (
                    'SSP'
                    'MTE'
                    'Detran'
                    'DPF'
                    'Cart'#243'rio'
                    'Outros')
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6')
                end
                object edtEmissao: TJvDateEdit
                  Left = 103
                  Top = 65
                  Width = 90
                  Height = 21
                  Enabled = False
                  ShowNullDate = False
                  TabOrder = 3
                end
                object cbbPaisDoc: TRzComboBox
                  Left = 199
                  Top = 65
                  Width = 146
                  Height = 21
                  Style = csDropDownList
                  Enabled = False
                  TabOrder = 4
                  Items.Strings = (
                    'Documento de Identidade'
                    'Documento de Estrangeiro'
                    'Documento de Conselho Regional'
                    'Documento de Conselho de Classe'
                    'Carteira de Trabalho'
                    'CPF'
                    'CNPJ'
                    'Passaporte'
                    'Certificado de Reservista'
                    'CNH'
                    'Identidade Funcional'
                    'Certid'#227'o')
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    '10'
                    '11'
                    '12')
                end
                object edtUFDoc: TRzEdit
                  Left = 351
                  Top = 65
                  Width = 34
                  Height = 21
                  Text = ''
                  Enabled = False
                  TabOrder = 5
                end
              end
            end
            object grp6: TRzGroupBox
              Left = 0
              Top = 239
              Width = 755
              Height = 197
              Align = alClient
              Caption = 'SESS'#213'ES REALIZADAS'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -13
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 15724521
              GroupStyle = gsUnderline
              TabOrder = 2
              Visible = False
              object grdSessoes: TAdvStringGrid
                Left = 0
                Top = 17
                Width = 755
                Height = 180
                Cursor = crDefault
                Align = alClient
                DrawingStyle = gdsClassic
                ScrollBars = ssBoth
                TabOrder = 0
                HoverRowCells = [hcNormal, hcSelected]
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = clWindowText
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ControlLook.FixedGradientHoverFrom = clGray
                ControlLook.FixedGradientHoverTo = clWhite
                ControlLook.FixedGradientDownFrom = clGray
                ControlLook.FixedGradientDownTo = clSilver
                ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownHeader.Font.Color = clWindowText
                ControlLook.DropDownHeader.Font.Height = -11
                ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                ControlLook.DropDownHeader.Font.Style = []
                ControlLook.DropDownHeader.Visible = True
                ControlLook.DropDownHeader.Buttons = <>
                ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownFooter.Font.Color = clWindowText
                ControlLook.DropDownFooter.Font.Height = -11
                ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                ControlLook.DropDownFooter.Font.Style = []
                ControlLook.DropDownFooter.Visible = True
                ControlLook.DropDownFooter.Buttons = <>
                Filter = <>
                FilterDropDown.Font.Charset = DEFAULT_CHARSET
                FilterDropDown.Font.Color = clWindowText
                FilterDropDown.Font.Height = -11
                FilterDropDown.Font.Name = 'Tahoma'
                FilterDropDown.Font.Style = []
                FilterDropDown.TextChecked = 'Checked'
                FilterDropDown.TextUnChecked = 'Unchecked'
                FilterDropDownClear = '(All)'
                FilterEdit.TypeNames.Strings = (
                  'Starts with'
                  'Ends with'
                  'Contains'
                  'Not contains'
                  'Equal'
                  'Not equal'
                  'Clear')
                FixedRowHeight = 22
                FixedFont.Charset = DEFAULT_CHARSET
                FixedFont.Color = clWindowText
                FixedFont.Height = -11
                FixedFont.Name = 'Tahoma'
                FixedFont.Style = [fsBold]
                FloatFormat = '%.2f'
                PrintSettings.DateFormat = 'dd/mm/yyyy'
                PrintSettings.Font.Charset = DEFAULT_CHARSET
                PrintSettings.Font.Color = clWindowText
                PrintSettings.Font.Height = -11
                PrintSettings.Font.Name = 'Tahoma'
                PrintSettings.Font.Style = []
                PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                PrintSettings.FixedFont.Color = clWindowText
                PrintSettings.FixedFont.Height = -11
                PrintSettings.FixedFont.Name = 'Tahoma'
                PrintSettings.FixedFont.Style = []
                PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                PrintSettings.HeaderFont.Color = clWindowText
                PrintSettings.HeaderFont.Height = -11
                PrintSettings.HeaderFont.Name = 'Tahoma'
                PrintSettings.HeaderFont.Style = []
                PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                PrintSettings.FooterFont.Color = clWindowText
                PrintSettings.FooterFont.Height = -11
                PrintSettings.FooterFont.Name = 'Tahoma'
                PrintSettings.FooterFont.Style = []
                PrintSettings.PageNumSep = '/'
                SearchFooter.FindNextCaption = 'Find &next'
                SearchFooter.FindPrevCaption = 'Find &previous'
                SearchFooter.Font.Charset = DEFAULT_CHARSET
                SearchFooter.Font.Color = clWindowText
                SearchFooter.Font.Height = -11
                SearchFooter.Font.Name = 'Tahoma'
                SearchFooter.Font.Style = []
                SearchFooter.HighLightCaption = 'Highlight'
                SearchFooter.HintClose = 'Close'
                SearchFooter.HintFindNext = 'Find next occurrence'
                SearchFooter.HintFindPrev = 'Find previous occurrence'
                SearchFooter.HintHighlight = 'Highlight occurrences'
                SearchFooter.MatchCaseCaption = 'Match case'
                ShowDesignHelper = False
                SortSettings.DefaultFormat = ssAutomatic
                Version = '7.2.8.0'
              end
            end
          end
        end
      end
    end
  end
end
