unit MainForm;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  ooVersion, ooVersion.Stage, ooVersion.Format, ooVersion.Stage.Format, ooVersion.Hash,
  ooVersion.Compare.Equal, ooVersion.Compare.Greater, ooVersion.Compare.GreaterEqual, ooVersion.Compare.Less,
  ooVersion.Compare.LessEqual, ooVersion.Compare;

type
  TMainForm = class(TForm)
    edMayor: TEdit;
    edMinor: TEdit;
    edPatch: TEdit;
    edBuild: TEdit;
    cbStage: TComboBox;
    edMayor1: TEdit;
    edMinor1: TEdit;
    edPatch1: TEdit;
    edBuild1: TEdit;
    cbStage1: TComboBox;
    lbVersion: TLabel;
    lbVersion1: TLabel;
    Button1: TButton;
    procedure OnChangeVersion(Sender: TObject);
    procedure OnChangeVersion1(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function Version1: IVersion;
    function Version2: IVersion;
  end;

var
  NewMainForm: TMainForm;

implementation

{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}

function TMainForm.Version1: IVersion;
begin
  try
    Result := TVersion.New(StrToInt(edMayor1.Text), StrToInt(edMinor1.Text), StrToInt(edPatch1.Text),
      StrToInt(edBuild1.Text), TVersionStage.New(TVersionStageCode(cbStage1.ItemIndex)), Now);
  except

  end;
end;

function TMainForm.Version2: IVersion;
begin
  try
    Result := TVersion.New(StrToInt(edMayor.Text), StrToInt(edMinor.Text), StrToInt(edPatch.Text),
      StrToInt(edBuild.Text), TVersionStage.New(TVersionStageCode(cbStage.ItemIndex)), Now);
  except

  end;
end;

procedure TMainForm.OnChangeVersion1(Sender: TObject);
begin
  lbVersion1.Caption := TVersionFormat.New(Version1).AsString + ' > ' + IntToStr(TVersionHash.New(Version1).Calculated);
end;

procedure TMainForm.OnChangeVersion(Sender: TObject);
begin
  lbVersion.Caption := TVersionFormat.New(Version2).AsString + ' > ' + IntToStr(TVersionHash.New(Version2).Calculated);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  if TVersionIsEqual.New.Compare(Version1, Version2) then
    Button1.Caption := '=';
  if TVersionIsGreaterOrEqual.New.Compare(Version1, Version2) then
    Button1.Caption := '>=';
  if TVersionIsGreater.New.Compare(Version1, Version2) then
    Button1.Caption := '>';
  if TVersionIsLesserOrEqual.New.Compare(Version1, Version2) then
    Button1.Caption := '<=';
  if TVersionIsLesser.New.Compare(Version1, Version2) then
    Button1.Caption := '<';
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  OnChangeVersion(Self);
  OnChangeVersion1(Self);
end;

end.
