{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Stage_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionStageTest = class sealed(TTestCase)
  published
    procedure StageIsSnapshot;
    procedure StageIsAlpha;
    procedure StageIsBeta;
    procedure StageIsReleaseCandidate;
    procedure StageIsProductive;
  end;

implementation

procedure TVersionStageTest.StageIsAlpha;
begin
  CheckTrue(Alpha = TVersionStage.New(Alpha).Code);
end;

procedure TVersionStageTest.StageIsBeta;
begin
  CheckTrue(Beta = TVersionStage.New(Beta).Code);
end;

procedure TVersionStageTest.StageIsProductive;
begin
  CheckTrue(Productive = TVersionStage.New(Productive).Code);
end;

procedure TVersionStageTest.StageIsSnapshot;
begin
  CheckTrue(Snapshot = TVersionStage.New(Snapshot).Code);
end;

procedure TVersionStageTest.StageIsReleaseCandidate;
begin
  CheckTrue(ReleaseCandidate = TVersionStage.New(ReleaseCandidate).Code);
end;

initialization

RegisterTest(TVersionStageTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
