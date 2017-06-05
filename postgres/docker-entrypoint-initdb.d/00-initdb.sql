CREATE SEQUENCE sq_test_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1;

CREATE TABLE test(
  id INTEGER PRIMARY KEY DEFAULT nextval('sq_test_id'::regclass),
  name character varying(32) NOT NULL,
  created timestamp without time zone DEFAULT now() NOT NULL,
  updated timestamp without time zone DEFAULT now()
)

