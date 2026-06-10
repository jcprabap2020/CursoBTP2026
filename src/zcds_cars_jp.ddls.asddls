@AbapCatalog.sqlViewName: 'ZDDL_CARS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cars'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_CARS_jp
  as select from zrent_cars_jp
{
  key matricula    as Matricula,
      marca        as Marca,
      modelo       as Modelo,
      color        as Color,
      motor        as Motor,
      potencia     as Potencia,
      und_potencia as UndPotencia,
      combustible  as Combustible,
      consumo      as Consumo,
      fecha_fabr   as FechaFabr,
      puertas      as Puertas,
      precio       as Precio,
      moneda       as Moneda,
      alquilado    as Alquilado,
      alq_desde    as AlqDesde,
      alq_hasta    as AlqHasta
}
