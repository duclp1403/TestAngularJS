use[dichvugiadinh]
go
--4 Xuất các hợp đồng của khách hàng
select hd.*,kh._tenKH from hopdong hd,khachhang kh where hd._maKH=kh._username and kh._username='a'
--5 xuất danh sách thợ và điểm đánh giá tb
select t._tenTho,sum(hd._danhGia)/COUNT(hd._danhGia) as N'Số sao TB' from hopdong hd,chuyenmon cm, tho t 
where t._username=cm._maTho and cm._maCM=hd._maCM
group by t._username,t._tenTho
--6  Xuất các thợ sữa mái nhà có điểm tb > 4.5
select t._tenTho,sum(hd._danhGia)/COUNT(hd._danhGia) as N'Số sao TB >4.5' from hopdong hd,chuyenmon cm, tho t 
where t._username=cm._maTho and cm._maCM=hd._maCM and cm._tenCM=N'Sửa'
group by t._username,t._tenTho
having sum(hd._danhGia)/COUNT(hd._danhGia)>4.5