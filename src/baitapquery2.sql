use btqlbanhang;
alter table oder modify oTotalPrice int;
create table oder_detail(
oID int ,
pID int,
oquty int,
foreign key (oID) references oder(oID),
foreign key (pID) references products(pID)
);
select oder.oID, oder.oDate, products.pPrice from oder_detail join oder on oder_detail.oID = oder.oID join products on oder_detail.pID = products.pID;
select customer.cName, products.pName from oder_detail join products on products.pID = oder_detail.pID join oder on oder_detail.oID = oder.oID join customer on customer.cID = oder.cID;
select * from customer where cID not in (select cID from oder);
select oder.oID, oder.oDate, sum(oder_detail.oquty*products.pPrice) as totalAmount
from oder_detail join products on oder_detail.pID = products.pID
    join oder on oder_detail.oID = oder.oID group by oder_detail.oID;