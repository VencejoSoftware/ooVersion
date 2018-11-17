{
  Copyright (c) 2018, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit VersionCompareGreaterEqual_test;

interface

uses
  Forms, SysUtils,
  VersionStage, Version,
  VersionCompareGreaterEqual,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionIsGreaterOrEqualTest = class sealed(TTestCase)
  published
    procedure GreaterIsTrue;
    procedure EqualIsTrue;
    procedure GreaterOrEqualIsTrue;
    procedure GreaterOrEqualIsFalse;
  end;

implementation

procedure TVersionIsGreaterOrEqualTest.EqualIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsGreaterOrEqual.New.Compare(A, B));
end;

procedure TVersionIsGreaterOrEqualTest.GreaterIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 191, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsGreaterOrEqual.New.Compare(A, B));
end;

procedure TVersionIsGreaterOrEqualTest.GreaterOrEqualIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsGreaterOrEqual.New.Compare(A, B));
end;

procedure TVersionIsGreaterOrEqualTest.GreaterOrEqualIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsGreaterOrEqual.New.Compare(A, B));
end;

initialization

RegisterTest(TVersionIsGreaterOrEqualTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
