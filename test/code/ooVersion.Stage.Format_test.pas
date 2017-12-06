{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Stage.Format_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion.Stage.Format,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionStageFormatTest = class sealed(TTestCase)
  published
    procedure SnapshotIsSnapshot;
    procedure AlphaIsAlpha;
    procedure BetaIsBeta;
    procedure ReleaseCandidateIsRC;
    procedure ProductiveIsRelease;
  end;

implementation

procedure TVersionStageFormatTest.AlphaIsAlpha;
begin
  CheckEquals('alpha', TVersionStageFormat.New(TVersionStage.New(Alpha)).AsString);
end;

procedure TVersionStageFormatTest.BetaIsBeta;
begin
  CheckEquals('beta', TVersionStageFormat.New(TVersionStage.New(Beta)).AsString);
end;

procedure TVersionStageFormatTest.ProductiveIsRelease;
begin
  CheckEquals('release', TVersionStageFormat.New(TVersionStage.New(Productive)).AsString);
end;

procedure TVersionStageFormatTest.ReleaseCandidateIsRC;
begin
  CheckEquals('rc', TVersionStageFormat.New(TVersionStage.New(ReleaseCandidate)).AsString);
end;

procedure TVersionStageFormatTest.SnapshotIsSnapshot;
begin
  CheckEquals('snapshot', TVersionStageFormat.New(TVersionStage.New(Snapshot)).AsString);
end;

initialization

RegisterTest(TVersionStageFormatTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
