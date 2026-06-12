@AbapCatalog.sqlViewName: 'ZDDL_RENTING'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view zcds_renting_jp
  as select from ZCDS_CARS_jp as cars
  association [1]    to ZCDS_REM_DAYS_JP     as _rem    on  cars.Matricula = _rem.matricula
                                                        and cars.Marca     = _rem.marca

  association [1]    to ZCDS_BRANDS_jp       as _brands on  cars.Marca = _brands.Marca
  association [0..*] to ZCDS_DET_CUSTOMER_JP as _det    on  cars.Matricula = _det.matricula

{
  key cars.Matricula as matricula,
  key cars.Marca     as marca,
      cars.Modelo    as modelo,
      cars.Color     as color,
      cars.Motor     as motorcito,
      cars.Potencia,
      cars.UndPotencia,
      cars.Combustible,
      cars.Consumo,
      cars.FechaFabr,
      cars.Puertas,
      cars.Precio,
      cars.Moneda,
      cars.Alquilado,
      cars.AlqDesde,
      cars.AlqHasta,
      case
          when _rem.dias_libres between 1 and 10 then 'malo'
          when _rem.dias_libres between 11 and 50 then 'medio'
          when _rem.dias_libres between 51 and 100 then 'Super bueno'
          when _rem.dias_libres > 101 then 'terrible Super bueno'
          else '---'
      end            as termino,
      _brands.Url    as imagen,
      _det
}
