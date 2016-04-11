inherited FConPaises: TFConPaises
  Caption = 'FConPaises'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    inherited JvGradientHeaderPanel1: TJvGradientHeaderPanel
      GradientStartColor = clTeal
    end
    inherited btnFiltro: TAdvGlowButton
      Appearance.Color = clTeal
      Appearance.ColorTo = clTeal
      Appearance.ColorMirror = 13289984
      Appearance.ColorMirrorTo = clTeal
    end
  end
  inherited RzPanel2: TRzPanel
    inherited JvGradientHeaderPanel2: TJvGradientHeaderPanel
      GradientStartColor = clTeal
    end
    inherited grdConsulta: TNextGrid
      object colId: TNxTextColumn
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
      end
      object colNome: TNxTextColumn
        DefaultWidth = 370
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nome do Pa'#237's'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 370
      end
    end
  end
  inherited RzPanel3: TRzPanel
    inherited btnSelecionar: TAdvGlowButton
      Appearance.Color = clTeal
      Appearance.ColorTo = clTeal
      Appearance.ColorMirror = 13289984
      Appearance.ColorMirrorTo = clTeal
    end
  end
  inherited pnlOcioso: TRzPanel
    inherited gdt1: TJvGradient
      StartColor = clTeal
      EndColor = 13289984
    end
    inherited lbl8: TLabel
      Width = 442
      Height = 44
    end
  end
end
