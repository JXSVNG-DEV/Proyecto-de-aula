   SELECT CURRENT_USER();
      ALTER USER 'root'@'localhost' IDENTIFIED BY 'NuevaClave123';
         USE domicilios;
   SELECT * FROM productos;
   SELECT * FROM categorias;
SELECT * FROM negocios;
SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT * FROM comprobantes;
SELECT * FROM productos_negocios;
SELECT p.codigo, p.nombre, p.precio, p.stock, c.nombre AS categoria, n.nombre AS negocio
FROM productos p
LEFT JOIN categorias c ON c.id = p.categoria_id
LEFT JOIN productos_negocios pn ON pn.producto_id = p.id
LEFT JOIN negocios n ON n.id = pn.negocio_id;