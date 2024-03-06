using { managed } from '@sap/cds/common';

namespace my.bookshop;

entity Books : managed {
  key ID : Integer;
  title  : String;
  descr : String;
  category: String;
  
  @mandatory
  pdf : LargeBinary @Core.MediaType : 'pdf';
}

annotate Books  {
  descr @changelog;  
  title @changelog;
}