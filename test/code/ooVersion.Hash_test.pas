{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
unit ooVersion.Hash_test;

interface

uses
  Forms, SysUtils,
  ooVersion.Stage, ooVersion, ooVersion.Hash,
{$IFDEF FPC}
  fpcunit, testregistry
{$ELSE}
  TestFramework
{$ENDIF};

type
  TVersionHashTest = class sealed(TTestCase)
  published
    procedure VersionHashIs0;
    procedure VersionHashIs198;
    procedure VersionHashIs1024;
  end;

implementation

procedure TVersionHashTest.VersionHashIs0;
var
  Version: IVersion;
begin
  Version := TVersion.New(0, 0, 0, 0, TVersionStage.New(Snapshot), Date);
  CheckEquals(0, TVersionHash.New(Version).Calculated);
end;

procedure TVersionHashTest.VersionHashIs1024;
var
  Version: IVersion;
begin
  Version := TVersion.New(255, 255, 255, 255, TVersionStage.New(Productive), Date);
  CheckEquals(1024, TVersionHash.New(Version).Calculated);
end;

procedure TVersionHashTest.VersionHashIs198;
var
  Version: IVersion;
begin
  Version := TVersion.New(1, 2, 3, 190, TVersionStage.New(Beta), Date);
  CheckEquals(198, TVersionHash.New(Version).Calculated);
end;

initialization

RegisterTest(TVersionHashTest {$IFNDEF FPC}.Suite {$ENDIF});

end.
