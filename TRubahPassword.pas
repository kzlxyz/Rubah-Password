unit TRubahPassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ZAbstractConnection, ZConnection, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFRubahPassword = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Keluar: TButton;
    Batal: TButton;
    UbahPassword: TButton;
    Username: TEdit;
    Label1: TLabel;
    NamaPetugas: TEdit;
    Label2: TLabel;
    PasswordLama: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    PasswordBaru: TEdit;
    Umum: TZQuery;
    Koneksi: TZConnection;
    procedure KeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BatalClick(Sender: TObject);
    procedure UsernameKeyPress(Sender: TObject; var Key: Char);
    procedure UbahPasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRubahPassword: TFRubahPassword;
    PassLama  : String;

implementation

{$R *.dfm}

procedure TFRubahPassword.KeluarClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFRubahPassword.UbahPasswordClick(Sender: TObject);
  begin
    if PasswordLama.Text <> PassLama then
      MessageDlg('Password Lama Salah !!',mtError,[mbOK],0)
    else
    begin
      if Length(PasswordBaru.Text) < 6 then
        MessageDlg('Password Minimal 6 Karakter !!',mtError,[mbok],0)
      else
      begin
        with Umum do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update tuser set password='+PasswordBaru.Text+' where Iduser='+Username.Text+'';
          ExecSQL;
          MessageDlg('Ganti Password Sukses !!',mtInformation,[mbOK],0);
          Close;
        end;
        FormShow(Sender);
      end;
    end;
  end;

procedure TFRubahPassword.UsernameKeyPress(Sender: TObject; var Key: Char);
  begin
    if Key = Char(13) then
    begin
      with Umum do
      begin
        Close;
        SQL.Clear;
        SQL.Text  :=  'select tu.*, tg.NamaPetugas from tpetugas tg, tuser tu '+
                      'where tu.IDUser = tg.IDPetugas and tu.IDUser = '+Username.Text+'';
        Open;
        if not Eof then
          begin
            Username.Text     := FieldByName('IDUser').AsString;
            NamaPetugas.Text  := FieldByName('NamaPetugas').AsString;
            PassLama          := FieldByName('Password').AsString;
            Username.SetFocus;
          end
        else
        MessageDlg('User Tidak ditemukan !!',mtError,[mbOK],0);
      end;
    end;
  end;

procedure TFRubahPassword.BatalClick(Sender: TObject);
  begin
    FormShow(Sender);
  end;

procedure TFRubahPassword.FormShow(Sender: TObject);
  begin
    Username.Clear;
    NamaPetugas.Clear;
    PasswordLama.Clear;
    PasswordBaru.Clear;
  end;

end.
