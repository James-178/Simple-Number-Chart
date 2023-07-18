unit Chart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
    arrPanels : Array[0..99] of TPanel;

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormActivate(Sender: TObject);
var

  i, ileft, itop, j : integer;
begin
  ileft := 48;
  itop := 48;
  j := 1;
  for i := 0 to 99 do
  begin
    arrPanels[i] := TPanel.Create(Self);
    with arrPanels[i] do
    begin
      Parent := self;
      Caption := inttostr(i+1);
      left := ileft;
      top := itop;
      Width := 80;
      Height := 80;
      font.Size := 15;
      font.Style := [fsbold];
      ParentBackground := false;
      ParentColor := false;
      OnClick := frmmain.Panel1Click;
    end;

    ileft := ileft + 80;
    inc(j);
    if j = 11 then
    begin
      j := 1;
      itop := itop+80;
      ileft := 48
    end;
  end;
end;



procedure TfrmMain.Panel1Click(Sender: TObject);
var
  ClickedPanel: TPanel;
  i: Integer;
begin
  Panel1.Color := clBlack;
  if Sender is TPanel then
  begin
    ClickedPanel := TPanel(Sender);
    if arrPanels[strtoint(ClickedPanel.Caption)-1].Color = clBtnFace then
      arrPanels[strtoint(ClickedPanel.Caption)-1].Color := clLime
    else
      arrPanels[strtoint(ClickedPanel.Caption)-1].Color := clBtnFace;

  end;
end;



end.
