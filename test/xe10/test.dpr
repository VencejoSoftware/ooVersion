{
  Copyright (c) 2018, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
program test;

uses
  ooRunTest,
  ooVersion.Stage_test in '..\code\ooVersion.Stage_test.pas',
  ooVersion_test in '..\code\ooVersion_test.pas',
  ooVersion.Stage.Format_test in '..\code\ooVersion.Stage.Format_test.pas',
  ooVersion.Format_test in '..\code\ooVersion.Format_test.pas',
  ooVersion.Hash_test in '..\code\ooVersion.Hash_test.pas',
  ooVersion.Compare.Equal_test in '..\code\ooVersion.Compare.Equal_test.pas',
  ooVersion.Compare.Greater_test in '..\code\ooVersion.Compare.Greater_test.pas',
  ooVersion.Compare.GreaterEqual_test in '..\code\ooVersion.Compare.GreaterEqual_test.pas',
  ooVersion.Compare.Less_test in '..\code\ooVersion.Compare.Less_test.pas',
  ooVersion.Compare.LessEqual_test in '..\code\ooVersion.Compare.LessEqual_test.pas',
  ooVersion.Compare.Equal in '..\..\code\ooVersion.Compare.Equal.pas',
  ooVersion.Compare.Greater in '..\..\code\ooVersion.Compare.Greater.pas',
  ooVersion.Compare.GreaterEqual in '..\..\code\ooVersion.Compare.GreaterEqual.pas',
  ooVersion.Compare.Less in '..\..\code\ooVersion.Compare.Less.pas',
  ooVersion.Compare.LessEqual in '..\..\code\ooVersion.Compare.LessEqual.pas',
  ooVersion.Compare in '..\..\code\ooVersion.Compare.pas',
  ooVersion.Format in '..\..\code\ooVersion.Format.pas',
  ooVersion.Hash in '..\..\code\ooVersion.Hash.pas',
  ooVersion in '..\..\code\ooVersion.pas',
  ooVersion.Stage.Format in '..\..\code\ooVersion.Stage.Format.pas',
  ooVersion.Stage in '..\..\code\ooVersion.Stage.pas';

{R *.RES}

begin
  Run;

end.
