{
  Copyright (c) 2018, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
program test;

uses
  RunTest,
  VersionStage_test in '..\code\VersionStage_test.pas',
  Version_test in '..\code\Version_test.pas',
  VersionStageFormat_test in '..\code\VersionStageFormat_test.pas',
  VersionFormat_test in '..\code\VersionFormat_test.pas',
  VersionHash_test in '..\code\VersionHash_test.pas',
  VersionCompareEqual_test in '..\code\VersionCompareEqual_test.pas',
  VersionCompareGreater_test in '..\code\VersionCompareGreater_test.pas',
  VersionCompareGreaterEqual_test in '..\code\VersionCompareGreaterEqual_test.pas',
  VersionCompareLess_test in '..\code\VersionCompareLess_test.pas',
  VersionCompareLessEqual_test in '..\code\VersionCompareLessEqual_test.pas',
  VersionCompareEqual in '..\..\code\VersionCompareEqual.pas',
  VersionCompareGreater in '..\..\code\VersionCompareGreater.pas',
  VersionCompareGreaterEqual in '..\..\code\VersionCompareGreaterEqual.pas',
  VersionCompareLess in '..\..\code\VersionCompareLess.pas',
  VersionCompareLessEqual in '..\..\code\VersionCompareLessEqual.pas',
  VersionCompare in '..\..\code\VersionCompare.pas',
  VersionFormat in '..\..\code\VersionFormat.pas',
  VersionHash in '..\..\code\VersionHash.pas',
  Version in '..\..\code\Version.pas',
  VersionStageFormat in '..\..\code\VersionStageFormat.pas',
  VersionStage in '..\..\code\VersionStage.pas';

{ R *.RES }

begin
  Run;

end.
