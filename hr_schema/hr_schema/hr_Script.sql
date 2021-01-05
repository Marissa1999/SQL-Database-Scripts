set echo on
--
--spool hr_Spool.txt
--

Begin
for c in (select table_name from user_tables) loop
execute immediate ('drop table '||c.table_name||' cascade constraints');
end loop;
End; 
/

ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;

--
-- create tables, sequences and constraint
--

@@ hr_cre

-- 
-- populate tables
--

@@ hr_popul

--
-- create indexes
--

@@ hr_idx

--
-- create procedural objects
--

@@ hr_code

--
-- add comments to tables and columns
--

@@ hr_comnt

--
-- gather schema statistics
--

@@ hr_analz

--spool off
