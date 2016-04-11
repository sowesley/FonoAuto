inherited FConCidades: TFConCidades
  Caption = 'FConCidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    inherited JvGradientHeaderPanel1: TJvGradientHeaderPanel
      GradientStartColor = 8388672
      TabOrder = 3
    end
    inherited edtDescricao: TRzEdit
      Left = 80
      Width = 336
      ExplicitLeft = 80
      ExplicitWidth = 336
    end
    inherited btnFiltro: TAdvGlowButton
      Appearance.Color = 16712834
      Appearance.ColorTo = 16712834
      Appearance.ColorMirror = 16712834
      Appearance.ColorMirrorTo = 16712834
    end
    object cbbUF: TRzComboBox
      Left = 5
      Top = 28
      Width = 69
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnKeyDown = cbbUFKeyDown
      OnKeyPress = cbbUFKeyPress
    end
  end
  inherited RzPanel2: TRzPanel
    inherited JvGradientHeaderPanel2: TJvGradientHeaderPanel
      GradientStartColor = 8388672
    end
    inherited grdConsulta: TNextGrid
      object colId: TNxTextColumn
        Alignment = taCenter
        DefaultWidth = 100
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
        Width = 100
      end
      object colCidade: TNxTextColumn
        DefaultWidth = 300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nome da Cidade'
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
        Width = 300
      end
      object colUF: TNxTextColumn
        Alignment = taCenter
        DefaultWidth = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'UF'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = [fsBold]
        Header.ParentFont = False
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 50
      end
    end
  end
  inherited RzPanel3: TRzPanel
    inherited btnSelecionar: TAdvGlowButton
      Appearance.Color = 8388672
      Appearance.ColorTo = 8388672
      Appearance.ColorMirror = 16712834
      Appearance.ColorMirrorTo = 8388672
    end
  end
  inherited pnlOcioso: TRzPanel
    Top = 420
    ExplicitTop = 420
    inherited gdt1: TJvGradient
      StartColor = 8388672
      EndColor = 16712834
      ExplicitWidth = 442
    end
  end
end
