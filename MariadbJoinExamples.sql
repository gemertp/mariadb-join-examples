-- Simple query (1)
select * from tbl_left;

-- Simple query (2)
select * from tbl_right;

-- Table reference (3)
select * from tbl_left, tbl_right;

-- Table reference with where clause (4)
select * from tbl_left, tbl_right
where tbl_left.id = tbl_right.persid;

-- INNER JOIN (5)
select * from tbl_left
inner join tbl_right on tbl_left.id = tbl_right.persid;

-- Inner join (inner is default) (6)
select * from tbl_left
join tbl_right on tbl_left.id = tbl_right.persid;

-- LEFT OUTER JOIN (outer is default) (7)
select * from tbl_left
left join tbl_right on tbl_left.id = tbl_right.persid;

-- RIGHT OUTER JOIN (outer is default) (8)
select * from tbl_left
right join tbl_right on tbl_left.id = tbl_right.persid;

-- FULL OUTER JOIN (9)
(select * from tbl_left
left outer join tbl_right on tbl_left.id = tbl_right.persid)
union all
(select * from tbl_left
right outer join tbl_right on tbl_left.id = tbl_right.persid
where tbl_left.id is NULL);

-- NULL LEFT JOIN (10)
select * from tbl_left
left join tbl_right on tbl_left.id = tbl_right.persid
where tbl_right.persid is NULL;

-- NULL RIGHT JOIN (11)
select * from tbl_left
right join tbl_right on tbl_left.id = tbl_right.persid
where tbl_left.id is NULL;

-- Exclude from both (12)
select * from tbl_left
left outer join tbl_right on tbl_left.id = tbl_right.persid
where tbl_right.persid is NULL
union
select * from tbl_left
right outer join tbl_right on tbl_left.id = tbl_right.persid
where tbl_left.id is NULL;
