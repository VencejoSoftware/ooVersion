{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version definition
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion;

interface

uses
  ooVersion.Stage;

type
{$REGION 'documentation'}
{
  @abstract(Version definition)
  Object to defines a software version
  @member(
    Major Segment that indicates breakage in the software
    @return(Number with major value)
  )
  @member(
    Minor Segment that indicates a set of functionality in a backwards-compatible manner
    @return(Number with minor value)
  )
  @member(
    Patch Segment that indicates backwards-compatible bug fixes.
    @return(Number with patch value)
  )
  @member(
    Build Compilation autoincremental value
    @return(Number with build value)
  )
  @member(
    Stage Stage of verions
    @return(@link(IVersionStage Object) with the stage)
  )
  @member(
    DateTime Date/Time of the version release
    @return(Datetime value)
  )
}
{$ENDREGION}
  IVersion = interface
    ['{949DACF6-3916-4150-888C-6EA8B04D87E5}']
    function Major: Byte;
    function Minor: Byte;
    function Patch: Byte;
    function Build: Byte;
    function Stage: IVersionStage;
    function DateTime: TDateTime;
  end;

{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersion))
  @member(Major @seealso(IVersion.Major))
  @member(Minor @seealso(IVersion.Minor))
  @member(Patch @seealso(IVersion.Patch))
  @member(Build @seealso(IVersion.Build))
  @member(Stage @seealso(IVersion.Stage))
  @member(DateTime @seealso(IVersion.DateTime))
  @member(
    Create Object constructor
    @param(Major Major value)
    @param(Minor Minor value)
    @param(Patch Patch value)
    @param(Build Build value)
    @param(Stage Stage object)
    @param(DateTime Date/time value)
  )
  @member(
    New Create a new @classname as interface
    @param(Major Major value)
    @param(Minor Minor value)
    @param(Patch Patch value)
    @param(Build Build value)
    @param(Stage Stage object)
    @param(DateTime Date/time value)
  )
}
{$ENDREGION}

  TVersion = class sealed(TInterfacedObject, IVersion)
  strict private
    _Major, _Minor, _Patch, _Build: Byte;
    _Stage: IVersionStage;
    _DateTime: TDateTime;
  public
    function Major: Byte;
    function Minor: Byte;
    function Patch: Byte;
    function Build: Byte;
    function Stage: IVersionStage;
    function DateTime: TDateTime;
    constructor Create(const Major, Minor, Patch, Build: Byte; const Stage: IVersionStage; const DateTime: TDateTime);
    class function New(const Major, Minor, Patch, Build: Byte; const Stage: IVersionStage; const DateTime: TDateTime)
      : IVersion;
  end;

implementation

function TVersion.Major: Byte;
begin
  Result := _Major;
end;

function TVersion.Minor: Byte;
begin
  Result := _Minor;
end;

function TVersion.Build: Byte;
begin
  Result := _Build;
end;

function TVersion.Patch: Byte;
begin
  Result := _Patch;
end;

function TVersion.Stage: IVersionStage;
begin
  Result := _Stage;
end;

function TVersion.DateTime: TDateTime;
begin
  Result := _DateTime;
end;

constructor TVersion.Create(const Major, Minor, Patch, Build: Byte; const Stage: IVersionStage;
  const DateTime: TDateTime);
begin
  _Major := Major;
  _Minor := Minor;
  _Patch := Patch;
  _Build := Build;
  _Stage := Stage;
  _DateTime := DateTime;
end;

class function TVersion.New(const Major, Minor, Patch, Build: Byte; const Stage: IVersionStage;
  const DateTime: TDateTime): IVersion;
begin
  Result := TVersion.Create(Major, Minor, Patch, Build, Stage, DateTime);
end;

end.
