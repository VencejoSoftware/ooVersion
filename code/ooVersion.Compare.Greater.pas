{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Greater comparer
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Compare.Greater;

interface

uses
  ooVersion,
  ooVersion.Hash,
  ooVersion.Compare;

type
{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersionCompare))
  Compare if version A are greater than version B
  @member(Compare @seealso(IVersionCompare.Compare))
  @member(New Create a new @classname as interface)
}
{$ENDREGION}
  TVersionIsGreater = class sealed(TInterfacedObject, IVersionCompare)
  public
    function Compare(const A, B: IVersion): Boolean;
    class function New: IVersionCompare;
  end;

implementation

function TVersionIsGreater.Compare(const A, B: IVersion): Boolean;
begin
  Result := TVersionHash.New(A).Calculated > TVersionHash.New(B).Calculated;
end;

class function TVersionIsGreater.New: IVersionCompare;
begin
  Result := TVersionIsGreater.Create;
end;

end.
