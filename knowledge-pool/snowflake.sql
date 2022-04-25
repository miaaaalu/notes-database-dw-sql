-- Transfer info to ARRAY
SELECT 'Hi,Snow,Flake'; -- string 
SELECT split('Hi,Snow,Flake', ','); -- array
SELECT split('Hi,Snow,Flake', ',')[0]; --array[0]
SELECT split('Hi,Snow,Flake', ',')[0]::STRING; --array[0]+去掉双引号 

-- Process Nested Data/Json转换
WITH T1 AS 
(SELECT 'Hi,Snow,Flake' AS TestString) 

SELECT VALUE
FROM T1,LATERAL FLATTEN (INPUT => SPLIT(TestString,','));

-- Lateral flatten

create or replace table raw_source (
  src variant);

create or replace stage my_stage
  url = 's3://snowflake-docs/tutorials/json';

copy into raw_source
from @my_stage/server/2.6/2016/07/15/15
file_format = (type = json);

select * from raw_source;

SELECT src:events[0].  rv
FROM raw_source;

SELECT src:device_type::string
from raw_source;

create or replace table events as
  select
    src:device_type::string                             as device_type
  , src:version::string                                 as version
  , value:f::number                                     as f
  , value:rv::variant                                   as rv
  , value:t::number                                     as t
  , value:v.ACHZ::number                                as achz
  , value:v.ACV::number                                 as acv
  , value:v.DCA::number                                 as dca
  , value:v.DCV::number                                 as dcv
  , value:v.ENJR::number                                as enjr
  , value:v.ERRS::number                                as errs
  , value:v.MXEC::number                                as mxec
  , value:v.TMPI::number                                as tmpi
  , value:vd::number                                    as vd
  , value:z::number                                     as z
  from
    raw_source
  , lateral flatten ( input => SRC:events );
  
select * from events;