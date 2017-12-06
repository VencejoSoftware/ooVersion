{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version comparer interface
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Compare;

interface

uses
  ooVersion;

type
{$REGION 'documentation'}
{
  @abstract(Version comparer)
  Interface to compare two version objects
  @member(
    Compare Compare two version
    @param(A First version to compare)
    @param(B Second version to compare)
    @returns(Boolean with the comparision result)
  )
}
{$ENDREGION}
  IVersionCompare = interface
    ['{8B682D14-31C7-47B4-9936-8B62064B0BDF}']
    function Compare(const A, B: IVersion): Boolean;
  end;

implementation

end.
