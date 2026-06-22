@AbapCatalog.sqlViewName: 'ZDDL_MAT'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'algo'
@Metadata.ignorePropagatedAnnotations: true
define view zcl_algo as select from ZCDS_CARS_jp
{
   key Matricula as mat,
   key Marca     as mar   
}
