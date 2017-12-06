{$REGION 'documentation'}
{
  Copyright (c) 2016, Vencejo Software
  Distributed under the terms of the Modified BSD License
  The full license is distributed with this software
}
{
  Version stage definition
  @created(28/10/2017)
  @author Vencejo Software <www.vencejosoft.com>
}
{$ENDREGION}
unit ooVersion.Stage;

interface

type
{$REGION 'documentation'}
{
  @value Snapshot Developer snapshot stage
  @value Alpha Alpha stage
  @value Beta Beta stage
  @value ReleaseCandidate Release candidate stage
  @value Productive Last stage
}
{$ENDREGION}
  TVersionStageCode = (Snapshot, Alpha, Beta, ReleaseCandidate, Productive);

{$REGION 'documentation'}
{
  @abstract(Version stage definition)
  Defines an stage for any version type
  @member(
    Code Item for enum @link(TVersionStageCode)
    @returns(@link(TVersionStageCode a valid code))
  )
}
{$ENDREGION}

  IVersionStage = interface
    ['{AFC277B6-ACC5-4B62-809E-435C7602C9D6}']
    function Code: TVersionStageCode;
  end;

{$REGION 'documentation'}
{
  @abstract(Implementation of @link(IVersionStage))
  @member(
    Code @seealso(IVersionStage.Code)
  )
  @member(
    Create Object constructor
    @param(Code Item for enum @link(TVersionStageCode))
  )
  @member(
    New Create a new @classname as interface
    @param(Code Item for enum @link(TVersionStageCode))
  )
}
{$ENDREGION}

  TVersionStage = class sealed(TInterfacedObject, IVersionStage)
  strict private
    _Code: TVersionStageCode;
  public
    function Code: TVersionStageCode;
    constructor Create(const Code: TVersionStageCode);
    class function New(const Code: TVersionStageCode): IVersionStage;
  end;

implementation

function TVersionStage.Code: TVersionStageCode;
begin
  Result := _Code;
end;

constructor TVersionStage.Create(const Code: TVersionStageCode);
begin
  _Code := Code;
end;

class function TVersionStage.New(const Code: TVersionStageCode): IVersionStage;
begin
  Result := TVersionStage.Create(Code);
end;

end.
