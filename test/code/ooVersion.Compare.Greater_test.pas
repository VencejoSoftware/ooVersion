{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Compare.Greater_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion,
  ooVersion.Compare.Greater,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionIsGreaterTest = class sealed(TTestCase)
  published
    procedure EqualIsFalse;
    procedure GreaterIsTrue;
    procedure GreaterIsFalse;
  end;

implementation

procedure TVersionIsGreaterTest.EqualIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsGreater.New.Compare(A, B));
end;

procedure TVersionIsGreaterTest.GreaterIsFalse;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  CheckFalse(TVersionIsGreater.New.Compare(A, B));
end;

procedure TVersionIsGreaterTest.GreaterIsTrue;
var
  A, B: IVersion;
begin
  A := TVersion.New(1, 2, 3, 200, TVersionStage.New(Beta), Date);
  B := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckTrue(TVersionIsGreater.New.Compare(A, B));
end;

initialization

RegisterTest(TVersionIsGreaterTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
