{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Format_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion, ooVersion.Format,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionStageFormatTest = class sealed(TTestCase)
  published
    procedure VersionIs123190_Beta;
  end;

implementation

procedure TVersionStageFormatTest.VersionIs123190_Beta;
var
  Version: IVersion;
begin
  Version := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), EncodeDate(2016, 1, 30));
  CheckEquals('1.2.3.190-beta', TVersionFormat.New(Version).AsString);
end;

initialization

RegisterTest(TVersionStageFormatTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
