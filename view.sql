--- Deployed on TEST 
USE [TX_HUB_Topics]
GO

create or alter view [enrolment].[enrolment_01_00] as

SELECT 
    [study_number],
    [programme_offer_date] AS [enrolment_offer_date],
    [programme_offer_location] AS [enrolment_offer_location],
    [programme_code],
    [programme_regulation_start_date] as [enrolment_regulation_start_date] ,
    [programme_regulation_code] as [enrolment_regulation_code],
    [programme_enrolment_name] AS [enrolment_name],
    [enrolment_start_date],
    [type_of_programme_code],
    [type_of_programme_en],
    [type_of_programme_da],
    [enrolment_type_code],
    [enrolment_type_en],
    [enrolment_type_da],
    [form_of_enrolment_code],
    [form_of_enrolment_en],
    [form_of_enrolment_da],
    [legal_basis],
    [full_name],
    [first_names],
    [last_name],
    [programme_name_en],
    [programme_name_da],
    [ects_points],
    [ects_points_obtained],
    [academic_degree_code],
    [academic_degree_en],
    [academic_degree_da],
    [level_of_education_code],
    [level_of_education_en],
    [level_of_education_da],
    [enrolment_status_code],
    [enrolment_status_en],
    [enrolment_status_da],
    [disenrolment_date],
    [enrolment_start_semester_code] as [enrolment_start_period],
    [disenrolment_semester_code],
    [disenrolment_type_code],
    [disenrolment_type_en],
    [disenrolment_type_da],
    [disenrolment_reason_code],
    [disenrolment_reason_en],
    [disenrolment_reason_da],
    cast(CASE WHEN enrolment_type_code = 'vacant_seat_enrolment' THEN 1
		 WHEN form_of_enrolment_code IN (5700, 5100) THEN 1
		 ELSE 0
	END as bit) AS [open_university],
    cast(CASE 
	WHEN level_of_education_code  = 'level_8' 
	   THEN 1 
	   ELSE 0 
	END as bit) as [phd],
    cast(CASE 
	WHEN [legal_basis] = 'ordinary education system' 
	   THEN 1 
	   ELSE 0 
	END as bit) as [ordinary],
    cast(CASE 
	WHEN enrolment_type_code = 'admission_course_enrolment' 
	   THEN 1 
	   ELSE 0 
        END as bit) as [admission_course],
    [legacy_id1],
    [legacy_id2],
    [legacy_id3],
    [legacy_id4],
    [legacy_id5],
    [legacy_id6],
    [legacy_id7],
    NULL AS [legacy_id9],
    [is_current_record],
    [is_deleted_record],
    [create_date],
    [update_date],
    [data_source],
    [dip_id],
    [programme_dip_id],
    [programme_offer_dip_id],
    [student_dip_id],
    [dip_supplier],
    'Programme' AS [enrolment_type]
FROM [TX_HUB_Topics].[programme_enrolment].[programme_enrolment_01_00]

UNION ALL

SELECT 
    [study_number],
    [single_subject_element_offer_date] AS [enrolment_offer_date],
    [single_subject_element_offer_location] AS [enrolment_offer_location],
    NULL AS [programme_code],
    NULL AS [enrolment_regulation_start_date],
    NULL AS [enrolment_regulation_code],
    [single_subject_element_enrolment_name] AS [enrolment_name],
    [enrolment_start_date],
    NULL AS [type_of_programme_code],
    NULL AS [type_of_programme_en],
    NULL AS [type_of_programme_da],
    [enrolment_type_code],
    [enrolment_type_en],
    [enrolment_type_da],
    [form_of_enrolment_code],
    [form_of_enrolment_en],
    [form_of_enrolment_da],
    NULL AS [legal_basis],
    [full_name],
    [first_names],
    [last_name],
    NULL AS [programme_name_en],
    NULL AS [programme_name_da],
    NULL AS [ects_points],
    [ects_points_obtained],
    NULL AS [academic_degree_code],
    NULL AS [academic_degree_en],
    NULL AS [academic_degree_da],
    [level_of_education_code],
    [level_of_education_en],
    [level_of_education_da],
    [enrolment_status_code],
    [enrolment_status_en],
    [enrolment_status_da],
    [disenrolment_date],
    [enrolment_start_period],
    [disenrolment_semester_code],
    [disenrolment_type_code],
    [disenrolment_type_en],
    [disenrolment_type_da],
    [disenrolment_reason_code],
    [disenrolment_reason_en],
    [disenrolment_reason_da],
    cast(CASE WHEN enrolment_type_code = 'vacant_seat_enrolment' THEN 1
		 WHEN form_of_enrolment_code IN (5700, 5100) THEN 1
		 ELSE 0
	END as bit) AS [open_university],
    cast(CASE 
	WHEN level_of_education_code  = 'level_8' 
	   THEN 1 
	   ELSE 0 
	END as bit) as [phd],
    cast(0 as bit) as [ordinary],
    cast(CASE 
	WHEN enrolment_type_code = 'admission_course_enrolment' 
	   THEN 1 
	   ELSE 0 
        END as bit) as [admission_course],
    [legacy_id1],
    [legacy_id2],
    [legacy_id3],
    [legacy_id4],
    [legacy_id5],
    [legacy_id6],
    [legacy_id7],
    [legacy_id9],
    [is_current_record],
    [is_deleted_record],
    [create_date],
    [update_date],
    [data_source],
    [dip_id],
    NULL AS [programme_dip_id],
    NULL AS [programme_offer_dip_id],
    [student_dip_id],
    [dip_supplier],
    'SingleSubjectElement' AS [enrolment_type]
FROM [TX_HUB_Topics].[single_subject_element_enrolment].[single_subject_element_enrolment_01_00]
;
