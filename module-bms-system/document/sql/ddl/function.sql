DROP FUNCTION IF EXISTS `getChildId`;
-- �������� �� ��ȡ�¼����е�����ڵ�ID �� �����Լ���
CREATE FUNCTION `getChildId`(rootId INT) RETURNS VARCHAR(3300)
BEGIN
        DECLARE ptemp VARCHAR(3300);
        DECLARE ctemp VARCHAR(3300);
		SET ptemp = '';
		SET ctemp =CAST(rootId AS CHAR);
		WHILE ctemp IS NOT NULL DO
		SET ptemp = CONCAT(ptemp,',',ctemp);
		SELECT GROUP_CONCAT(id) INTO ctemp FROM nodelist   
		WHERE FIND_IN_SET(pid,ctemp)>0; 
		END WHILE;  
		RETURN ptemp;  
END