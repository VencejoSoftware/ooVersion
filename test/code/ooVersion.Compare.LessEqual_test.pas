{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Compare.LessEqual_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion,
  ooVersion.Compare.LessEqual,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionIsLessOrEqualTest = class sealed(TTestCase)
  published
    procedure LessIsTrue;
    procedure EqualIsTrue;
    procedure LessOrEqualIsTrue;
    procedure LessOrEqualIsFalse;
  end;

implementation

procedure TVersionIsLessOrEqualTest.EqualIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsLesserOrEqual.New.Compare(A, B));
end;

procedure TVersionIsLessOrEqualTest.LessIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 191, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsLesserOrEqual.New.Compare(A, B));
end;

procedure TVersionIsLessOrEqualTest.LessOrEqualIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsLesserOrEqual.New.Compare(A, B));
end;

procedure TVersionIsLessOrEqualTest.LessOrEqualIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsLesserOrEqual.New.Compare(A, B));
end;

initialization

RegisterTest(TVersionIsLessOrEqualTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
