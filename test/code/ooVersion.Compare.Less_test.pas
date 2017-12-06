{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Compare.Less_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion,
  ooVersion.Compare.Less,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionIsLessTest = class sealed(TTestCase)
  published
    procedure EqualIsFalse;
    procedure LessIsTrue;
    procedure LessIsFalse;
  end;

implementation

procedure TVersionIsLessTest.EqualIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsLesser.New.Compare(A, B));
end;

procedure TVersionIsLessTest.LessIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsLesser.New.Compare(A, B));
end;

procedure TVersionIsLessTest.LessIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsLesser.New.Compare(A, B));
end;

initialization

RegisterTest(TVersionIsLessTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
