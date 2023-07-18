program Chart_p;

uses
  Vcl.Forms,
  Chart_u in 'Chart_u.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
