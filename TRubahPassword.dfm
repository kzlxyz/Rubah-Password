object FRubahPassword: TFRubahPassword
  Left = 0
  Top = 0
  Caption = 'Konfigurasi - [Rubah Password]'
  ClientHeight = 231
  ClientWidth = 433
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 47
    Width = 417
    Height = 144
    Caption = 'Data Pengguna [User]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Username'
    end
    object Label2: TLabel
      Left = 26
      Top = 54
      Width = 81
      Height = 13
      Caption = 'Nama Petugas'
    end
    object Label3: TLabel
      Left = 26
      Top = 81
      Width = 88
      Height = 13
      Caption = 'Password Lama'
    end
    object Label4: TLabel
      Left = 26
      Top = 108
      Width = 83
      Height = 13
      Caption = 'Password Baru'
    end
    object Username: TEdit
      Left = 147
      Top = 24
      Width = 122
      Height = 21
      TabOrder = 0
      Text = 'Username'
      OnKeyPress = UsernameKeyPress
    end
    object NamaPetugas: TEdit
      Left = 147
      Top = 51
      Width = 249
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'Edit1'
    end
    object PasswordLama: TEdit
      Left = 147
      Top = 78
      Width = 122
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
      Text = 'Edit1'
    end
    object PasswordBaru: TEdit
      Left = 147
      Top = 105
      Width = 122
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
      Text = 'Edit1'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 41
    Align = alTop
    Caption = 'Rubah Password'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 123
    ExplicitTop = 54
    ExplicitWidth = 185
  end
  object Keluar: TButton
    Left = 351
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = KeluarClick
  end
  object Batal: TButton
    Left = 270
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BatalClick
  end
  object UbahPassword: TButton
    Left = 142
    Top = 197
    Width = 122
    Height = 25
    Caption = 'Ubah Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = UbahPasswordClick
  end
  object Umum: TZQuery
    Connection = Koneksi
    Params = <>
    Left = 228
    Top = 135
  end
  object Koneksi: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 3306
    Database = 'perpustakaan_3'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Kurniawan\Documents\RAD Studio\Rubah Password\libmysql.' +
      'dll'
    Left = 144
    Top = 137
  end
end
