unit UConvert;

interface

type
  TConversor = class
  private

  protected

  public

    function FuncConvert(Decimal: Cardinal): string;
  published

  end;

implementation
    { TConversor }
function TConversor.FuncConvert(Decimal: Cardinal): string;
const
  Arabicos: array [1 .. 13] of Integer = (1, 4, 5, 9, 10, 40, 50, 90, 100, 400,
    500, 900, 1000);
  Romanos: array [1 .. 13] of string = ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L',
    'XC', 'C', 'CD', 'D', 'CM', 'M');
var
  i: Integer;

begin
  Result := '';
  for i := 13 downto 1 do
    while (Decimal >= Arabicos[i]) do

    begin
      Decimal := Decimal - Arabicos[i];
      Result := Result + Romanos[i];
    end;
end;

end.
