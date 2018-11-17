{
  Copyright (c) 2018, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
program test;

uses
  RunTest,
  VersionStage_test in '..\code\Version.Stage_test.pas',
  Version_test in '..\code\Version_test.pas',
  VersionStageFormat_test in '..\code\Version.Stage.Format_test.pas',
  VersionFormat_test in '..\code\Version.Format_test.pas',
  VersionHash_test in '..\code\Version.Hash_test.pas',
  VersionCompareEqual_test in '..\code\Version.Compare.Equal_test.pas',
  VersionCompareGreater_test in '..\code\Version.Compare.Greater_test.pas',
  VersionCompareGreaterEqual_test in '..\code\Version.Compare.GreaterEqual_test.pas',
  VersionCompareLess_test in '..\code\Version.Compare.Less_test.pas',
  VersionCompareLessEqual_test in '..\code\Version.Compare.LessEqual_test.pas',
  VersionCompareEqual in '..\..\code\Version.Compare.Equal.pas',
  VersionCompareGreater in '..\..\code\Version.Compare.Greater.pas',
  VersionCompareGreaterEqual in '..\..\code\Version.Compare.GreaterEqual.pas',
  VersionCompareLess in '..\..\code\Version.Compare.Less.pas',
  VersionCompareLessEqual in '..\..\code\Version.Compare.LessEqual.pas',
  VersionCompare in '..\..\code\Version.Compare.pas',
  VersionFormat in '..\..\code\Version.Format.pas',
  VersionHash in '..\..\code\Version.Hash.pas',
  Version in '..\..\code\Version.pas',
  VersionStageFormat in '..\..\code\Version.Stage.Format.pas',
  VersionStage in '..\..\code\Version.Stage.pas';

{R *.RES}

begin
  Run;

end.
