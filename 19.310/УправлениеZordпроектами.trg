<?xml version="1.0" encoding="WINDOWS-1251" ?>
<trigger_library version="1.02">

  <trigger last_changed="�������� �.�." name="���������������������������" responsible="�������� �.�.">
    <definition>
      <language>PLPGSQL</language>
      <body>BEGIN
   DELETE FROM "�������������" WHERE "���������������" = OLD."@���������������" AND
   ((SELECT dt."������������" FROM "��������" doc
    LEFT JOIN "������������" dt ON doc."������������"=dt."@������������"
    WHERE doc."@��������" = OLD."�����������������"
    ) = '���������');
   RETURN OLD;
END;</body>
    </definition>
  </trigger>

</trigger_library>
