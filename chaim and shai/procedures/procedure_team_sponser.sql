CREATE OR REPLACE PROCEDURE LinkTeamToSponsor(
    p_TeamID NUMBER,
    p_SponsorID NUMBER
)
AS
    v_TeamCount NUMBER;
    v_SponsorCount NUMBER;
BEGIN
    -- Check if the provided TeamID exists in the Team table
    SELECT COUNT(*) INTO v_TeamCount FROM Team WHERE TeamID = p_TeamID;

    -- Check if the provided SponsorID exists in the Sponsor table
    SELECT COUNT(*) INTO v_SponsorCount FROM Sponsor WHERE SponsorID = p_SponsorID;

    IF v_TeamCount = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid TeamID. Team does not exist.');
    ELSIF v_SponsorCount = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid SponsorID. Sponsor does not exist.');
    ELSE
        -- Check if the team and sponsor are already linked
        SELECT COUNT(*) INTO v_SponsorCount FROM sponsored_by WHERE TeamID = p_TeamID AND SponsorID = p_SponsorID;

        IF v_SponsorCount > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Team and Sponsor are already linked.');
        ELSE
            -- Link the team and sponsor in the sponsored_by table
            INSERT INTO sponsored_by (Year_start, TeamID, SponsorID)
            VALUES (EXTRACT(YEAR FROM SYSDATE), p_TeamID, p_SponsorID);

            DBMS_OUTPUT.PUT_LINE('Team and Sponsor successfully linked.');
        END IF;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error linking Team and Sponsor: ' || SQLERRM);
END;
/
