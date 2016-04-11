object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 275
  Width = 475
  object conexao: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\Users\Wesley\Documents\fonoauto\BD\ERIKA.FDB'
    Username = 'sysdba'
    Server = 'localhost'
    LoginPrompt = False
    Left = 24
    Top = 16
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 104
    Top = 16
  end
  object ExeInfo1: TExeInfo
    Version = '1.3.1.0'
    Left = 24
    Top = 72
  end
end
