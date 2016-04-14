inherited FConPadrao: TFConPadrao
  BorderStyle = bsNone
  Caption = 'FConPadrao'
  ClientHeight = 513
  ClientWidth = 460
  OnShow = FormShow
  ExplicitWidth = 460
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 454
    Height = 55
    Align = alTop
    BorderOuter = fsButtonDown
    BorderSides = [sdLeft, sdRight, sdBottom]
    TabOrder = 0
    Transparent = True
    object JvGradientHeaderPanel1: TJvGradientHeaderPanel
      Left = 2
      Top = 0
      Width = 450
      Height = 25
      Margins.Top = 10
      Margins.Bottom = 0
      GradientStartColor = 4227327
      GradientSteps = 1000
      GradientStyle = grHorizontal
      LabelTop = 5
      LabelCaption = 'Filtro'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWhite
      LabelFont.Height = -11
      LabelFont.Name = 'Microsoft Sans Serif'
      LabelFont.Style = [fsBold]
      LabelAlignment = taLeftJustify
      Align = alTop
      TabOrder = 0
      object btnClose: TAdvGlowButton
        AlignWithMargins = True
        Left = 426
        Top = 5
        Width = 21
        Height = 15
        Hint = 'FILTRO'
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = 'X'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnCloseClick
        Appearance.Color = 9549311
        Appearance.ColorTo = 9549311
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirror = 33023
        Appearance.ColorMirrorTo = 9549311
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        ExplicitLeft = 428
        ExplicitTop = 30
        ExplicitHeight = 18
      end
    end
    object edtDescricao: TRzEdit
      Left = 8
      Top = 28
      Width = 408
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Color = 11794687
      TabOrder = 1
      OnKeyPress = edtDescricaoKeyPress
    end
    object btnFiltro: TAdvGlowButton
      AlignWithMargins = True
      Left = 428
      Top = 30
      Width = 21
      Height = 18
      Hint = 'FILTRO'
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000473424954080808087C086488000000097048597300000B1300000B
        1301009A9C18000001A549444154388DDD8F4D4B5B611085CFF4DEFBAAA929D1
        A0B69498542B8824019775934D88BBD22CB22922148A087565E93F90FE83A256
        8D68503736822E8410DCF9B12CA19A6EAA0563AD9A8AC6EFFB7ADF71A3128568
        75E981030373CEC30CE19A42A150391D1D15ED59964D4A69D7998984C8D935ED
        904B4A4E1289C4767E9E2E867038FCDAEFF3B57BBDDE5A97CBF5ACDCE9B40B21
        00669852E25F36BB97C964D6D3A9D4AFEF4B4BDDF1787CEA121008041C8D6F5A
        D3EF9B9BAA9E5656906118104240080100304D13A669424A893F7F37393A39BF
        FE6366AC21994CEEEAE707EC7FDB2A9D8E2D38DE796903CF0D8927242158028A
        614220776A60EDD0C0E281838A57EDE3AFCACAF6AFBC00009E4FC323BFFD2D6F
        A1085000AC3C2B804E2D787E8EF6ADF4B4B65D74B47CC0CEDC44DC5D53F73257
        E5F38309605C9A94054FFA6AB9A0DC9DB1211A548C7E66F432D3178B5F7C18FE
        7A6B315FAE8F6303D46731F558ECEE88F516CA3D2AB4A84F45BB6CDB2BF2F1EE
        F271CD62F4F39D01CCAC43236605564A197706FCAF1E3240D7F50DE7EAECB46D
        67397B6F7A2412D182C160F54D9933895DAC41ADAADC550000000049454E44AE
        426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnFiltroClick
      Appearance.Color = 9549311
      Appearance.ColorTo = 9549311
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = 33023
      Appearance.ColorMirrorTo = 9549311
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 454
    Height = 409
    Align = alClient
    BorderOuter = fsButtonDown
    BorderSides = [sdLeft, sdRight, sdBottom]
    TabOrder = 1
    Transparent = True
    object JvGradientHeaderPanel2: TJvGradientHeaderPanel
      Left = 2
      Top = 0
      Width = 450
      Height = 25
      Margins.Top = 10
      Margins.Bottom = 0
      GradientStartColor = 4227327
      GradientSteps = 1000
      GradientStyle = grHorizontal
      LabelTop = 5
      LabelCaption = 'Resultados da Pesquisa'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWhite
      LabelFont.Height = -11
      LabelFont.Name = 'Microsoft Sans Serif'
      LabelFont.Style = [fsBold]
      LabelAlignment = taLeftJustify
      Align = alTop
      TabOrder = 0
    end
    object grdConsulta: TNextGrid
      Left = 2
      Top = 25
      Width = 450
      Height = 382
      Align = alClient
      BorderStyle = bsNone
      Caption = ''
      Options = [goGrid, goHeader, goSelectFullRow]
      TabOrder = 1
      TabStop = True
      OnDblClick = grdConsultaDblClick
      OnKeyDown = grdConsultaKeyDown
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 479
    Width = 454
    Height = 31
    Align = alBottom
    BorderOuter = fsButtonDown
    BorderSides = [sdLeft, sdRight, sdBottom]
    TabOrder = 3
    Transparent = True
    object btnSelecionar: TAdvGlowButton
      AlignWithMargins = True
      Left = 341
      Top = 3
      Width = 108
      Height = 23
      Hint = 'FILTRO'
      Align = alRight
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000001BA49444154785EA5D34F4854411C07F09937F3DE73DEDB7F6F9F5281
        4204B22C885887C04B273B78EBD25121BC74DB0A2C88C415612F827A112F6A87
        D89317413C14414507498822300844F6D68244FB5C9BD17D6F66FC2D2888ABF1
        64BF97070F3EBF9961BE83B5D6A89D18A8CDD02618D90B63839DF29F0120BF36
        9F5C17A7039A3FE3FA92EF9B85A016C9C1F9EA180C59BDCA11A6FD2EB370FB5E
        C6B93FE43996895760884B63E2A2E79BCFF277D32C094229A5A5441A40787607
        0F00AC37BFE7712A43C76F0D24192C870F6BA1DCF81008A9F4433842E374C023
        D85E397727394C287E0368F4044F245274BCA7CF65CC44588A48BEFF188828D2
        A380DF9EBDC6B15CBFDBC15206E9CE3B8C9A7801F04B96202FAEF53266C1CA48
        2AF5097018EAC780D7CEF760F9FB97BA201469CB3548F666876327C8AB748FED
        1816C29820B5F5799F870DFD144CF9A222BDE60772EAE7D601A70C6BEA60C3BD
        613262234C6DA4B637EBBC71A89E0358FA5F1367C4BE2C55BEFDE3B64734CB52
        64A5A9DEFDCAC51157930016E354B9246A72AEBA2D84E511F5FB07E747755902
        307B79955B3321F6A2BF957741512B546CC1311FD32CE0CE56DC9AB69FF331CF
        DCA75F7B0C7C050000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnSelecionarClick
      Appearance.Color = 9549311
      Appearance.ColorTo = 9549311
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = 33023
      Appearance.ColorMirrorTo = 9549311
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object pnlOcioso: TRzPanel
    Left = 6
    Top = 419
    Width = 446
    Height = 48
    BorderOuter = fsButtonDown
    TabOrder = 2
    Visible = False
    object gdt1: TJvGradient
      Left = 2
      Top = 2
      Width = 442
      Height = 44
      Style = grVertical
      StartColor = 4227327
      EndColor = 10928895
      ExplicitLeft = -11
      ExplicitTop = 10
      ExplicitWidth = 565
    end
    object lbl8: TLabel
      Left = 2
      Top = 2
      Width = 442
      Height = 44
      Align = alClient
      Alignment = taCenter
      Caption = 'Aguarde! Filtrando...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 133
      ExplicitHeight = 16
    end
  end
end
