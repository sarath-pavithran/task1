using app.school as appSchool from '../db/schema';
service MyService {

    @odata.draft.enabled
    entity personal_data as projection on appSchool.personal_data;
    entity student_data as projection on appSchool.student_data;
    entity membership_data as projection on appSchool.membership_data;
    @odata.draft.enabled
    entity grihanadh as projection on appSchool.grihanadh;

    

}
