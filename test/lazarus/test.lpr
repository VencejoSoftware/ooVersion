{
  Copyright (c) 2018, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
program test;

uses
  ooRunTest,
  ooVersionStage_test in '..\code\ooVersion.Stage_test.pas',
  ooVersion_test in '..\code\ooVersion_test.pas',
  ooVersionStageFormat_test in '..\code\ooVersion.Stage.Format_test.pas',
  ooVersionFormat_test in '..\code\ooVersion.Format_test.pas',
  ooVersionHash_test in '..\code\ooVersion.Hash_test.pas',
  ooVersionCompareEqual_test in '..\code\ooVersion.Compare.Equal_test.pas',
  ooVersionCompareGreater_test in '..\code\ooVersion.Compare.Greater_test.pas',
  ooVersionCompareGreaterEqual_test in '..\code\ooVersion.Compare.GreaterEqual_test.pas',
  ooVersionCompareLess_test in '..\code\ooVersion.Compare.Less_test.pas',
  ooVersionCompareLessEqual_test in '..\code\ooVersion.Compare.LessEqual_test.pas',
  ooVersionCompareEqual in '..\..\code\ooVersion.Compare.Equal.pas',
  ooVersionCompareGreater in '..\..\code\ooVersion.Compare.Greater.pas',
  ooVersionCompareGreaterEqual in '..\..\code\ooVersion.Compare.GreaterEqual.pas',
  ooVersionCompareLess in '..\..\code\ooVersion.Compare.Less.pas',
  ooVersionCompareLessEqual in '..\..\code\ooVersion.Compare.LessEqual.pas',
  ooVersionCompare in '..\..\code\ooVersion.Compare.pas',
  ooVersionFormat in '..\..\code\ooVersion.Format.pas',
  ooVersionHash in '..\..\code\ooVersion.Hash.pas',
  ooVersion in '..\..\code\ooVersion.pas',
  ooVersionStageFormat in '..\..\code\ooVersion.Stage.Format.pas',
  ooVersionStage in '..\..\code\ooVersion.Stage.pas';

{R *.RES}

begin
  Run;

end.
