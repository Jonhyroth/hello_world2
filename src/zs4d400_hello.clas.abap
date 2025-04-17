CLASS zs4d400_hello DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zs4d400_hello IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

 out->write( 'hello world bakayaro' ).


  ENDMETHOD.
ENDCLASS.
