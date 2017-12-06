{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version hash calculator
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Hash;

interface

uses
  ooVersion;

type
{$REGION 'documentation'}
{
  @abstract(Version hash calculator)
  Calculate unique hash from a version
  @member(
    Calculated Sum all segments to build a hash
    @returns(Number with the hash)
  )
}
{$ENDREGION}
  IVersionHash = interface
    ['{F77E7AF1-04EA-48A2-AA7E-5F1C0D4B8514}']
    function Calculated: Integer;
  end;
{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersionHash))
  @member(Calculated @seealso(IVersionHash.Calculated))
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

  TVersionHash = class sealed(TInterfacedObject, IVersionHash)
  strict private
    _Version: IVersion;
  public
    function Calculated: Integer;
    constructor Create(const Version: IVersion);
    class function New(const Version: IVersion): IVersionHash;
  end;

implementation

function TVersionHash.Calculated: Integer;
begin
  Result := _Version.Major + _Version.Minor + _Version.Patch + _Version.Build + Ord(_Version.Stage.Code);
end;

constructor TVersionHash.Create(const Version: IVersion);
begin
  _Version := Version;
end;

class function TVersionHash.New(const Version: IVersion): IVersionHash;
begin
  Result := TVersionHash.Create(Version);
end;

end.
