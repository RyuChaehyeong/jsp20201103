--joinEx1

--14��, 8��
SELECT * FROM employee;

--4��, 3��
SELECT * FROM department;
--
--14�� ���� 4�� �࿡ match (56����) 
--FROM ���� 2���� ���̺�
SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
--���� �̸� �÷��� ��Ȯ�ϰ� ���־�� ��

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno,  dname
FROM employee, department
WHERE  employee.dno = department.dno;

--�� ������� �Ҽӵ� �μ����� ���
SELECT *
FROM employee, department
WHERE employee.dno = department.dno;


--�����ȣ, ����̸�, �ҼӺμ� �̸� ����ϱ�
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--��ȣ�� Į�������� ���� ���� ��
SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--�÷��� �տ� ���̺�� ����ϱ�
SELECT eno, ename, dname, department.dno
FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

--equi join (���� ���� ���� ���� �͸� ���� ��)
--������ ������ �ೢ�� ��, ������ �� ��ŭ�� ��, �� ���̺��� ����

--���̺��� �ʹ� �� �ݺ��ϱ� ����, ���̺� ���� ��Ī�� �� ���ִ�. 
SELECT e.eno, e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

--���̺�� ��Ī ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno AND e.eno = 7788;

--EQUI JOIN�� �̿��Ͽ� SCOTT ����� �μ���ȣ�� �μ��̸� ���
SELECT ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno AND e.ename = 'SCOTT';

--natural join
SELECT * FROM employee natural join department --�����̺� �÷� �� ���� �÷������� ����
WHERE eno = 7782;
-->> �÷��� & ������ Ÿ���� ���ƾ� ��

--join using
SELECT * FROM employee join department USING(dno); --�÷��� ����
-->> �÷��� ���Ƶ� ��. ������ Ÿ�� �޶󵵵�

--join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
-->> Ÿ��, �÷��� �޶� ���ΰ���

--169
--natural join������ join �÷��� ��Ī�� ����ϸ� �ȵȴ�.
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE e.eno = 7788;

--USING �� ����ϱ�
SELECT e.eno, e.ename, d.dname, dno
FROM employee e join department d USING (dno)
WHERE e.eno = 7788;

--ON�� ����ϱ�, join �÷��� ��Ī�� ���־�� ��
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e join department d on e.dno = d.dno
WHERE e.eno = 7788;

--inner join�� on �����ڸ� ����Ͽ� ����̸�, �μ�, ������ ���
SELECT e.ename, d.dname, d.loc
FROM employee e join department d ON e.dno = d.dno;

--inner join�� using �����ڸ� ����Ͽ� 10�� �μ��� ���ϴ� �������� �������, �μ�, ������ �Բ� ǥ��
SELECT DISTINCT e.job, d.dname, d.loc
FROM employee e join department d USING(dno)
WHERE dno = 10;

--natural join�� ����Ͽ� Ŀ�̼��� �޴� ��� ����� �̸�, �μ��̸�, ������ ���
SELECT e.ename, d.dname, d.loc
FROM employee e natural join department d
WHERE e.commission IS NOT NULL;
