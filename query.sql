CREATE TABLE base_analise AS
SELECT A.*, 
B.quantidade_datas AS qtd_checkins,
C."avg(stars)" AS mean_stars,
C.classification AS classificacao_stars,
D.total_compliments 
FROM public.business AS A
LEFT JOIN public.checkin AS B
on a.business_id = b.business_id
LEFT JOIN public.review AS C
on a.business_id = c.business_id
LEFT JOIN public.tip AS D
on a.business_id = d.business_id