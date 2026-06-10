@AbapCatalog.sqlViewName: 'ZDDL_REMDAYS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Determina días faltantes'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_REM_DAYS_JP as select from zrent_cars_jp
{
    key matricula as matricula,
    key marca     as marca,
    alq_hasta     as termino,

    dats_days_between( alq_hasta , '20220102' ) as dias_libres

}
