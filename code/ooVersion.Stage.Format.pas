{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version stage string formatter
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Stage.Format;

interface

uses
  SysUtils,
  ooVersion.Stage;

type
{$REGION 'documentation'}
{
  @abstract(Version stage string formatter)
  Convert stage version object to string
  @member(
    AsString Format stage version
    @returns(String with the formatted text)
  )
}
{$ENDREGION}
  IVersionStageFormat = interface
    ['{81C4946F-AA40-42E5-925D-E00A0171FD6D}']
    function AsString: String;
  end;

{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersionStageFormat))
  @member(AsString @seealso(IVersionStageFormat.AsString))
  @member(
    Create Object constructor
    @param(Stage @link(IVersionStage Object) with the stage)
  )
  @member(
    New Create a new @classname as interface
    @param(Stage @link(IVersionStage Object) with the stage)
  )
}
{$ENDREGION}

  TVersionStageFormat = class sealed(TInterfacedObject, IVersionStageFormat)
  strict private
    _Stage: IVersionStage;
  public
    function AsString: String;
    constructor Create(const Stage: IVersionStage);
    class function New(const Stage: IVersionStage): IVersionStageFormat;
  end;

implementation

function TVersionStageFormat.AsString: String;
const
  CODES: array [TVersionStageCode] of string = ('snapshot', 'alpha', 'beta', 'rc', 'release');
begin
  Result := CODES[_Stage.Code];
end;

constructor TVersionStageFormat.Create(const Stage: IVersionStage);
begin
  _Stage := Stage;
end;

class function TVersionStageFormat.New(const Stage: IVersionStage): IVersionStageFormat;
begin
  Result := TVersionStageFormat.Create(Stage);
end;

end.
