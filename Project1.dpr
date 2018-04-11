program Project1;

uses
  Vcl.Forms,
  TRubahPassword in 'TRubahPassword.pas' {FRubahPassword};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRubahPassword, FRubahPassword);
  Application.Run;
end.
