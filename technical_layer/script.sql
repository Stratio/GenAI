--
-- Name: Agreement; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Agreement" (
    "Agreement_Type_Code0" integer,
    "Agreement_Name" text,
    "Agreement_Original_Inception_Date" text,
    "Product_Identifier" text,
    "Agreement_Type_Code4" text
);


ALTER TABLE public."Agreement" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Agreement_Assessment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Agreement_Assessment" (
    "Agreement_Identifier" integer,
    "Assessment_Identifier" integer
);


ALTER TABLE public."Agreement_Assessment" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Agreement_Party_Role; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Agreement_Party_Role" (
    "Agreement_Identifier" integer,
    "Party_Identifier" integer,
    "Party_Role_Code" text,
    "Effective_Date" text,
    "Expiration_Date" text
);


ALTER TABLE public."Agreement_Party_Role" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Assesment_Result; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Assesment_Result" (
    "Assessment_Result_Identifier" integer,
    "Assessment_Identifier" integer,
    "Assessment_Result_Type_Code" text
);


ALTER TABLE public."Assesment_Result" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Assessment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Assessment" (
    "Assessment_Identifier" integer,
    "Begin_Date" text,
    "Assessment_Description" text,
    "End_Date" text,
    "Assessment_Reason_Description" text
);


ALTER TABLE public."Assessment" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Assessment_Party_Role; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Assessment_Party_Role" (
    "Party_Identifier" integer,
    "Assessment_Identifier" integer,
    "Party_Role_Code" text,
    "Begin_Date" text,
    "End_Date" text
);


ALTER TABLE public."Assessment_Party_Role" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Catastrophe; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Catastrophe" (
    "Catastrophe_Identifier" integer,
    "Catastrophe_Type_Code" text,
    "Catastrophe_Name" text,
    "Industry_Catastrophe_Code" text,
    "Company_Catastrophe_Code" text
);


ALTER TABLE public."Catastrophe" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Claim; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Claim" (
    "Claim_Identifier" integer,
    "Catastrophe_Identifier" integer,
    "Claim_Description" text,
    "Claims_Made_Date" text,
    "Company_Claim_Number" integer,
    "Company_Subclaim_Number" text,
    "Insurable_Object_Identifier" integer,
    "Occurrence_Identifier" integer,
    "Entry_Into_Claims_Made_Program_Date" text,
    "Claim_Open_Date" text,
    "Claim_Close_Date" text,
    "Claim_Reopen_Date" text,
    "Claim_Status_Code" text,
    "Claim_Reported_Date" text
);


ALTER TABLE public."Claim" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Claim_Amount; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Claim_Amount" (
    "Claim_Amount_Identifier" integer,
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    "Claim_Amount" integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Claim_Amount" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Claim_Coverage; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Claim_Coverage" (
    "Claim_Identifier" integer,
    "Effective_Date" text,
    "Policy_Coverage_Detail_Identifier" integer
);


ALTER TABLE public."Claim_Coverage" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Expense_Payment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Expense_Payment" (
    "Claim_Amount_Identifier" integer
);


ALTER TABLE public."Expense_Payment" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Expense_Payment_v2; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Expense_Payment_v2" (
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    "Amount" integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Expense_Payment_v2" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Expense_Reserve; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Expense_Reserve" (
    "Claim_Amount_Identifier" integer
);


ALTER TABLE public."Expense_Reserve" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Expense_Reverse_v2; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Expense_Reverse_v2" (
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    "Amount" integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Expense_Reverse_v2" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: FireClaim; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."FireClaim" (
    "PolicyNo" text,
    "ClaimNumber" text,
    "Premium" text,
    "InsuredLocation" text,
    "Loss_Ratio" double precision,
    "Nearest_Firestation_miles" integer,
    "Number_of_Firefighters" integer,
    "Fireplace" text,
    "Year_Built" integer
);


ALTER TABLE public."FireClaim" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Geographic_Location; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Geographic_Location" (
    "Geographic_Location_Identifier" integer,
    "Parent_Geographic_Location_Identifier" text,
    "Geographic_Location_Type_Code" text,
    "Location_Code" text,
    "Location_Name" text,
    "Location_Number" text,
    "State_Code" text,
    "Location_Address_Identifier" integer,
    "Physical_Location_Identifier" integer
);


ALTER TABLE public."Geographic_Location" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Insurable_Object; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Insurable_Object" (
    "Insurable_Object_Identifier" integer,
    "Geographic_Location_Identifier" integer,
    "Insurable_Object_Type_Code" text
);


ALTER TABLE public."Insurable_Object" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Location_Address; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Location_Address" (
    "Location_Address_Identifier" integer,
    "Line_1_Address" text,
    "Municipality_Name" text,
    "Line_2_Address" text,
    "Postal_Code" integer,
    "Country_Code" text,
    "State_Code" text,
    "Begin_Date" text,
    "End_Date" text
);


ALTER TABLE public."Location_Address" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Loss_Payment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Loss_Payment" (
    "Claim_Amount_Identifier" integer
);


ALTER TABLE public."Loss_Payment" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Loss_Payment_v2; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Loss_Payment_v2" (
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    amount integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Loss_Payment_v2" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Loss_Payment_v3; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Loss_Payment_v3" (
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    amount integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Loss_Payment_v3" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Loss_Reserve; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Loss_Reserve" (
    "Claim_Amount_Identifier" integer
);


ALTER TABLE public."Loss_Reserve" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Loss_Reserve_v2; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Loss_Reserve_v2" (
    "Claim_Identifier" integer,
    "Claim_Offer_Identifier" text,
    "Amount_Type_Code" text,
    "Event_Date" text,
    "Amount" integer,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Loss_Reserve_v2" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Occurrence; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Occurrence" (
    "Occurrence_Identifier" integer,
    "Catastrophic_Event_Indicator" text,
    "Geographic_Location_Identifier" text,
    "Occurrence_Begin_Date" text,
    "Occurrence_End_Date" text,
    "Occurrence_Begin_Time" text,
    "Occurrence_End_Time" text,
    "Occurrence_Name" text
);


ALTER TABLE public."Occurrence" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Organization; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Organization" (
    "Organization_Identifier" integer,
    "Industry_Code" text,
    "Organization_Name" text,
    "Dun_And_Bradstreet_Identifier" text,
    "Organization_Type_Code" text,
    "Alternate_Name" text,
    "Organization_Description" text,
    "Acronym_Name" text,
    "Industry_Type_Code" text
);


ALTER TABLE public."Organization" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Party; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Party" (
    "Party_Identifier" integer,
    "Party_Name" text,
    "Begin_Date" text,
    "End_Date" text,
    "Party_Type_Code" text
);


ALTER TABLE public."Party" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Party_Role; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Party_Role" (
    "Party_Role_Code" text,
    "Party_Role_Name" text,
    "Party_Role_Description" text
);


ALTER TABLE public."Party_Role" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Person; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Person" (
    "Person_Identifier" integer,
    "First_Name" text,
    "Middle_Name" text,
    "Last_Name" text,
    "Full_Legal_Name" text,
    "Nickname" text,
    "Suffix_Name" text,
    "Birth_Date" text,
    "Birth_Place_Name" text,
    "Gender_Code" text,
    "Prefix_Name" text
);


ALTER TABLE public."Person" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Physical_Location; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Physical_Location" (
    "Physical_Location_Identifier" integer,
    "Physical_Location_Name" text,
    "Latitude_Value" double precision,
    "Longitude_Value" double precision,
    "Altitude_Value" text,
    "Altitude_Mean_Sea_Level_Value" text,
    "Horizontal_Accuracy_Value" text,
    "Vertical_Accuracy_Value" text,
    "Travel_Direction_Description" text,
    "Location_Address_Identifier" integer
);


ALTER TABLE public."Physical_Location" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Policy; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Policy" (
    "Policy_Identifier" integer,
    "Effective_Date" text,
    "Expiration_Date" text,
    "Policy_Number" bigint,
    "Status_Code" text,
    "Geographic_Location_Identifier" text
);


ALTER TABLE public."Policy" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Policy_Amount; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Policy_Amount" (
    "Policy_Amount_Identifier" integer,
    "Geographic_Location_Identifier" text,
    "Policy_Identifier" integer,
    "Effective_Date" text,
    "Amount_Type_Code" text,
    "Earning_Begin_Date" text,
    "Earning_End_Date" text,
    "Policy_Coverage_Detail_Identifier" integer,
    "Policy_Amount" integer,
    "Insurable_Object_Identifier" text,
    "Insurance_Type_Code" text
);


ALTER TABLE public."Policy_Amount" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Policy_Amounts; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Policy_Amounts" (
    "Policy_Amount_Identifier" integer,
    "Geographic_Location_Identifier" text,
    "Policy_Identifier" integer,
    "Effective_Date" text,
    "Amount_Type_Code" text,
    "Earning_Begin_Date" text,
    "Earning_End_Date" text,
    "Policy_Coverage_Detail_Identifier" integer,
    "Policy_Amount" integer,
    "Insurable_Object_Identifier" text,
    "Insurance_Type_Code" text,
    is_premium text NOT NULL
);


ALTER TABLE public."Policy_Amounts" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Policy_Coverage_Detail; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Policy_Coverage_Detail" (
    "Effective_Date" text,
    "Policy_Coverage_Detail_Identifier" integer,
    "Coverage_Identifier" text,
    "Insurable_Object_Identifier" integer,
    "Policy_Identifier" integer,
    "Coverage_Part_Code" text,
    "Coverage_Description" text,
    "Expiration_Date" text,
    "Coverage_Inclusion_Exclusion_Code" text
);


ALTER TABLE public."Policy_Coverage_Detail" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Premium; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Premium" (
    "Policy_Amount_Identifier" integer
);


ALTER TABLE public."Premium" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: Underwriting_Assessment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public."Underwriting_Assessment" (
    "Assessment_Result_Identifier" integer
);


ALTER TABLE public."Underwriting_Assessment" OWNER TO "execution-identity-rocket.demo-rocket";

--
-- Name: agreement_assessment; Type: TABLE; Schema: public; Owner: execution-identity-rocket.demo-rocket
--

CREATE TABLE public.agreement_assessment (
    "Agreement_Identifier" integer,
    "Assessment_Identifier" integer
);
