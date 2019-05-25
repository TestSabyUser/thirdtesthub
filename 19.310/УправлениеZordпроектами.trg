<?xml version="1.0" encoding="WINDOWS-1251" ?>
<trigger_library version="1.02">

  <trigger last_changed="Игнатьев И.В." name="ПередУдалитьПунктПланаРабот" responsible="Игнатьев И.В.">
    <definition>
      <language>PLPGSQL</language>
      <body>BEGIN
   DELETE FROM "ЛицоДокумента" WHERE "СвязьДокументов" = OLD."@СвязьДокументов" AND
   ((SELECT dt."ТипДокумента" FROM "Документ" doc
    LEFT JOIN "ТипДокумента" dt ON doc."ТипДокумента"=dt."@ТипДокумента"
    WHERE doc."@Документ" = OLD."ДокументОснование"
    ) = 'ПланРабот');
   RETURN OLD;
END;</body>
    </definition>
  </trigger>

</trigger_library>
