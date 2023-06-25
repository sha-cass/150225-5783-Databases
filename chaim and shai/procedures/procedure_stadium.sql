CREATE OR REPLACE PROCEDURE AddStadium(
    p_Stadium_name VARCHAR2,
    p_Capacity NUMBER,
    p_Country VARCHAR2,
    p_Owner VARCHAR2,
    p_Maintenance_manager VARCHAR2,
    p_Found_year NUMBER,
    p_City VARCHAR2
)
AS
    v_StadiumID NUMBER;
BEGIN
    -- Generate the next available StadiumID
    SELECT MAX(StadiumID) + 1 INTO v_StadiumID FROM Stadium;

    -- Insert the new stadium into the Stadium table
    INSERT INTO Stadium (Stadium_name, Capacity, Country, Owner, Maintenance_manager, Found_year, StadiumID, City)
    VALUES (p_Stadium_name, p_Capacity, p_Country, p_Owner, p_Maintenance_manager, p_Found_year, v_StadiumID, p_City);

    DBMS_OUTPUT.PUT_LINE('Stadium added successfully. StadiumID: ' || v_StadiumID);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding stadium: ' || SQLERRM);
END;
/
