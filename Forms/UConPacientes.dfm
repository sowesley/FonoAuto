inherited FConPacientes: TFConPacientes
  Caption = 'FConPacientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    inherited JvGradientHeaderPanel1: TJvGradientHeaderPanel
      GradientStartColor = 10485760
    end
    inherited btnFiltro: TAdvGlowButton
      OnClick = btnFiltroClick
      Appearance.Color = 10485760
      Appearance.ColorTo = 10485760
      Appearance.ColorMirror = clBlue
      Appearance.ColorMirrorTo = 10485760
    end
  end
  inherited RzPanel2: TRzPanel
    inherited JvGradientHeaderPanel2: TJvGradientHeaderPanel
      GradientStartColor = 10485760
    end
    inherited grdConsulta: TNextGrid
      object colId: TNxNumberColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Id'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        Options = [coCanClick, coCanSort, coPublicUsing]
        ParentFont = False
        Position = 0
        SortType = stNumeric
        Width = 60
        FormatMask = '0000'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object colNome: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nome'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        Options = [coCanClick, coCanSort, coPublicUsing]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 210
      end
      object colSexo: TNxTextColumn
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Sexo'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        Options = [coCanClick, coCanSort, coPublicUsing]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
      end
      object colNascimento: TNxDateColumn
        Alignment = taCenter
        DefaultValue = '09/03/2016'
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nascimento'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        Options = [coCanClick, coCanSort, coPublicUsing]
        ParentFont = False
        Position = 3
        SortType = stDate
        Width = 100
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
    end
  end
  inherited RzPanel3: TRzPanel
    inherited btnSelecionar: TAdvGlowButton
      Appearance.Color = 10485760
      Appearance.ColorTo = 10485760
      Appearance.ColorMirror = clBlue
      Appearance.ColorMirrorTo = 10485760
    end
  end
  inherited pnlOcioso: TRzPanel
    Top = 420
    Width = 446
    ExplicitTop = 420
    ExplicitWidth = 446
    inherited gdt1: TJvGradient
      Width = 442
      StartColor = 10485760
      EndColor = clBlue
    end
    inherited lbl8: TLabel
      Width = 442
    end
  end
end
