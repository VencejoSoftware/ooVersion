{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version string formatter
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Format;

interface

uses
  SysUtils,
  ooVersion, ooVersion.Stage.Format;

type
{$REGION 'documentation'}
{
  @abstract(Version string formatter)
  Convert version object to string
  @member(
    AsString Format stage version
    @returns(String with the formatted text)
  )
}
{$ENDREGION}
  IVersionFormat = interface
    ['{57273C10-562B-4A60-B325-B6C4E9ED46FF}']
    function AsString: String;
  end;

{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersionFormat))
  @member(AsString @seealso(IVersionFormat.AsString))
  @member(
    Create Object constructor
    @param(Stage @link(IVersion Object) with the version)
  )
  @member(
    New Create a new @classname as interface
    @param(Stage @link(IVersion Object) with the version)
  )
}
{$ENDREGION}

  TVersionFormat = class sealed(TInterfacedObject, IVersionFormat)
  strict private
    _Version: IVersion;
  public
    function AsString: String;
    constructor Create(const Version: IVersion);
    class function New(const Version: IVersion): IVersionFormat;
  end;

implementation

function TVersionFormat.AsString: String;
var
  Stage: String;
begin
  Result := Format('%d.%d.%d.%d', [_Version.Major, _Version.Minor, _Version.Patch, _Version.Build]);
  Stage := TVersionStageFormat.New(_Version.Stage).AsString;
  if Length(Stage) > 0 then
    Result := Format('%s-%s', [Result, Stage]);
end;

constructor TVersionFormat.Create(const Version: IVersion);
begin
  _Version := Version;
end;

class function TVersionFormat.New(const Version: IVersion): IVersionFormat;
begin
  Result := TVersionFormat.Create(Version);
end;

end.
