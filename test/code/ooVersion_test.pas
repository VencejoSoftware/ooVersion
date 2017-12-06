{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage,
  ooVersion,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionTest = class sealed(TTestCase)
  strict private
    _Version: IVersion;
  protected
    procedure SetUp; override;
  published
    procedure MajorIs1;
    procedure MinorIs2;
    procedure PatchIs3;
    procedure BuildIs190;
    procedure StageIsBeta;
    procedure DateTimeIs30_1_2016;
  end;

implementation

procedure TVersionTest.MajorIs1;
begin
  CheckEquals(1, _Version.Major);
end;

procedure TVersionTest.MinorIs2;
begin
  CheckEquals(2, _Version.Minor);
end;

procedure TVersionTest.PatchIs3;
begin
  CheckEquals(3, _Version.Patch);
end;

procedure TVersionTest.BuildIs190;
begin
  CheckEquals(190, _Version.Build);
end;

procedure TVersionTest.DateTimeIs30_1_2016;
begin
  CheckEquals(EncodeDate(2016, 1, 30), _Version.DateTime);
end;

procedure TVersionTest.StageIsBeta;
begin
  CheckTrue(_Version.Stage.Code = TVersionStageCode.Beta);
end;

procedure TVersionTest.SetUp;
begin
  inherited;
  _Version := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), EncodeDate(2016, 1, 30));
end;

initialization

RegisterTest(TVersionTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
