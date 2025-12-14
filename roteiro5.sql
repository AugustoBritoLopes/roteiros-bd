-- questao 1

SELECT count (e.fname)
FROM employee e
WHERE e.sex = 'F';

 count 
-------
    11
(1 row)

-- questao 2

SELECT avg (e.salary)
FROM employee e
WHERE e.sex = 'M' AND e.address LIKE '%TX';


        avg         
--------------------
 35714.285714285714
(1 row)

-- questao 3
SELECT e.superssn AS ssn_supervisor, count (e.ssn) AS qtd_supervisionados
FROM employee e
GROUP BY e.superssn
ORDER BY qtd_supervisionados;

-- questao 4
SELECT s.fname AS nome_supervisor, f.qtd_supervisionados
FROM employee s
JOIN
(SELECT e.superssn AS ssn_supervisor, count (e.ssn) AS qtd_supervisionados
FROM employee e 
GROUP BY e.superssn) f 
ON s.ssn = f.ssn_supervisor
ORDER BY qtd_supervisionados;


-- questao 5
SELECT s.fname AS nome_supervisor, f.qtd_supervisionados
FROM employee s
RIGHT JOIN
(SELECT e.superssn AS ssn_supervisor, count (e.ssn) AS qtd_supervisionados
FROM employee e 
GROUP BY e.superssn) f 
ON s.ssn = f.ssn_supervisor;

-- questao 6
SELECT MIN(conta) AS qtd
FROM (
    SELECT count(w.essn) AS conta
    FROM works_on w
    GROUP BY w.pno
) AS nome;

-- questao 7
SELECT T1.pno AS num_proj, T1.qtd_func
FROM (
    SELECT w.pno, count(w.essn) AS qtd_func
    FROM works_on w
    GROUP BY w.pno
) AS T1
WHERE T1.qtd_func = (
    SELECT MIN(T2_temp.qtd_func)
    FROM (
        SELECT count(w.essn) AS qtd_func
        FROM works_on w
        GROUP BY w.pno
    ) AS T2_temp
);

-- questao 8
SELECT w.pno AS num_proj, avg(e.salary) AS media_sal -- o que eu quero no final 
FROM employee e JOIN works_on w ON e.ssn = w.essn -- condição de junção
GROUP BY w.pno;

-- questao 9
SELECT t.num_proj, p.pname AS proj_nome, t.media_sal -- o que eu quero no final 
FROM project p JOIN (
    SELECT w.pno AS num_proj, avg(e.salary) AS media_sal
    FROM employee e JOIN works_on w 
    ON e.ssn = w.essn
    GROUP BY w.pno
    ) t
ON p.pnumber = t.num_proj;

-- questao 10

SELECT e.fname, e.salary
FROM employee e
WHERE e.ssn NOT IN(
    SELECT w.essn
    FROM works_on w
    WHERE w.pno = 92 
)
AND e.salary > (
    SELECT MAX(e2.salary)
    FROM employee e2 JOIN works_on w2 ON e2.ssn = w2.essn
    WHERE w2.pno = 92
);

-- questao 11

SELECT e.ssn, COALESCE(t.qtd_proj, 0)
FROM employee e LEFT JOIN (
    SELECT count(w.pno) AS qtd_proj, w.essn
    FROM works_on w
    GROUP BY w.essn
    ) t 
    ON e.ssn = t.essn
ORDER BY COALESCE(t.qtd_proj, 0);

-- questao 12 

SELECT w.pno AS num_proj, COUNT(e.ssn) AS qtd_func
FROM employee e LEFT JOIN works_on w ON e.ssn = w.essn
GROUP BY w.pno
HAVING COUNT(e.ssn) < 5
ORDER BY qtd_func;

-- questao 13

SELECT e.fname
FROM employee e
WHERE e.ssn IN(
    SELECT w.essn
    FROM works_on w
    WHERE w.essn = e.ssn AND(
        w.pno IN (
            SELECT p.pnumber
            FROM project p
            WHERE p.pnumber = w.pno AND p.plocation = 'Sugarland'
        )
    )
)
AND EXISTS(
    SELECT *
    FROM dependent d
    WHERE d.essn = e.ssn
);

-- questao 14

SELECT d.dname
FROM department d
WHERE NOT EXISTS(
    SELECT *
    FROM project p
    WHERE p.dnum = d.dnumber
);


-- questao 15

SELECT e.fname, e.lname
FROM employee e
WHERE e.ssn <> '123456789' and NOT EXISTS (
    SELECT w.pno from works_on w where w.essn = '123456789'
    EXCEPT
    SELECT w1.pno from works_on w1 where w1.essn = e.ssn
);

