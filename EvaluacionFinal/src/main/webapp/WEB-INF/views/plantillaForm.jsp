	 	<div class="contenedor-crearpagos">
        <form id="crearpagos" method="post" action="crearPagosProcesar" class="cmxform" id="pagForm">
            
            <h2 id="titulo-crearpagos">Crear Pagos</h2>
            <label for="" id="label-crearpagos">Id Pagos</label>
            <input type="text"  id="input-crearpagos" name="txtidPagos" value='<c:out value="${nid}"/>'/>
            <label for="" id="label-crearpagos">Fecha de pago</label>
            <input type="date" id="input-crearpagos" name="txtfechaPago" placeholder="Fecha de pago" />
            <label for="" id="label-crearpagos">Monto de pago</label>
            <input type="time" id="input-crearpagos" name="txtMonto"/>
            <label for="" id="label-crearpagos">Mes de Pago</label>
            <select id="input-crearpagos" name="txtMes">
                <option>Seleccione una opción</option>
                <option value="enero">Enero</option>
                <option value="febrero">Febrero</option>
                <option value="marzo">Marzo</option>
                <option value="abril">Abril</option>
                <option value="mayo">Mayo</option>
                <option value="junio">Junio</option>
                <option value="julio">Julio</option>
                <option value="agosto">Agosto</option>
                <option value="septiembre">Septiembre</option>
                <option value="octubre">Octubre</option>
                <option value="noviembre">Noviembre</option>
                <option value="diciembre">Diciembre</option>
            </select>
            <label for="" id="label-crearpagos">Año de pago</label>
            <input type="time" id="input-crearpagos" name="txtAnio"/>
            <label for="" id="label-crearpagos">Rut Cliente</label>
            <select id="input-crearpagos" name="txtCliente_rutcliente">
                <c:forEach items="${lcli}" var="lc">
                    <option value='<c:out value="${lc.getRutCliente()}" />'><c:out value="${lc.getRutCliente()}" /></option>
                </c:forEach>
            </select>
            <input type="submit" value="Ingresar Pago" id="boton-crearpagos">
        </form>