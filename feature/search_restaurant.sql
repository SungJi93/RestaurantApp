--Feature 3
/*
Search for a restaurant by category. Input is a part of category name (e.g., for fast food the input could be just 'fast'). 
Please print out the name, average review score, average wait time, 
and zip code for restaurants that are open and match the input category name. 
*/

CREATE OR REPLACE FUNCTION search_restaurant(p_category_name IN VARCHAR2)
RETURN SYS_REFCURSOR
IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR 
        SELECT resname, resavgreviewscore, resavgwaittime, reszipcode 
        FROM restaurant r JOIN category c ON r.resid = c.catid
        WHERE r.resstatus = 'open' AND UPPER(c.catname) LIKE UPPER('%'||p_category_name||'%');
    RETURN v_cursor;
END;

--To Call this function and see the result
DECLARE
    v_resname restaurant.resname%TYPE;
    v_resavgreviewscore restaurant.resavgreviewscore%TYPE;
    v_resavgwaittime restaurant.resavgwaittime%TYPE;
    v_reszipcode restaurant.reszipcode%TYPE;
    v_cursor SYS_REFCURSOR;
BEGIN
    v_cursor := search_restaurant('fast');
    LOOP
        FETCH v_cursor INTO v_resname, v_resavgreviewscore, v_resavgwaittime, v_reszipcode;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_resname||', '||v_resavgreviewscore||', '||v_resavgwaittime||', '||v_reszipcode);
    END LOOP;
    CLOSE v_cursor;
END;

--To execute the function
BEGIN
    search_restaurant('fast');
END;
