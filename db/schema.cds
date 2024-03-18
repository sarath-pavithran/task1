namespace app.school ;

entity personal_data {
    key pId : String;
    name : String(20);
    bloodGroup : String(5);
    address : String(25);
    pincode : String(10);
    studentData : Composition of many student_data on studentData.personalData = $self;
}

entity student_data {
    key sId : String;
    pId : String;
    regNo : String(10);
    deptName : String(20);
    class : Integer;
    personalData : Association to  one personal_data on personalData.pId = pId;
    clubData :  Composition of  many membership_data on clubData.studentData = $self;
}
entity membership_data {
    key mId : String;
    sId : String;
    clubId: String;
    joinedDate : String;
    teamLeaderId : String(10);
    studentData : Association to one student_data on studentData.sId = sId;
}

entity bank_data {
    key branchId : String(10);
    branchName : String(20);
    strength : Integer;
    customer_datas : Association to customer_data;
}
entity customer_data {
    key customerId : String(10);
    account_type : String(20);
    balance : Integer;
    user_datas : Association to user_data;
    bank_datas : Association to bank_data;
}

entity user_data {
    key userId : String(10);
    userName : String(20);
    age : Integer;
    address : String(20);
    customer_datas : Association to customer_data;
}
entity grihanadh {
    key Id : Integer  @Common.DerivedDefaultValue : '$autoIncrement()';

    name : String(20);
    age : String(20);
    occupation : String(20);
    addr : String(20);
    today : Date @Common.DerivedDefaultValue: 'now()';
    
}