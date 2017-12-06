{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Compare.Equal_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion,
  ooVersion.Compare.Equal,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionIsEqualTest = class sealed(TTestCase)
  published
    procedure AreEqualsVersion;
    procedure NotAreEqualsVersion;
  end;

implementation

procedure TVersionIsEqualTest.AreEqualsVersion;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsEqual.New.Compare(A, B));
end;

procedure TVersionIsEqualTest.NotAreEqualsVersion;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(ReleaseCandidate), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsEqual.New.Compare(A, B));
end;

initialization

RegisterTest(TVersionIsEqualTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
