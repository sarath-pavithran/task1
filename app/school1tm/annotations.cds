using MyService as service from '../../srv/service';

annotate service.personal_data with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bloodGroup',
            Value : bloodGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
        {
            $Type : 'UI.DataField',
            Label : 'pincode',
            Value : pincode,
        },
    ]
);
annotate service.personal_data with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bloodGroup',
                Value : bloodGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pincode',
                Value : pincode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Student Data',
            ID : 'StudentData',
            Target : 'studentData/@UI.LineItem#StudentData',
        },
    ]
);
annotate service.student_data with @(
    UI.LineItem #StudentData : [
        {
            $Type : 'UI.DataField',
            Value : sId,
            Label : 'sId',
        },{
            $Type : 'UI.DataField',
            Value : regNo,
            Label : 'regNo',
        },{
            $Type : 'UI.DataField',
            Value : pId,
            Label : 'pId',
        },{
            $Type : 'UI.DataField',
            Value : deptName,
            Label : 'deptName',
        },{
            $Type : 'UI.DataField',
            Value : class,
            Label : 'class',
        },]
);
annotate service.student_data with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Membership Data',
            ID : 'MembershipData',
            Target : 'clubData/@UI.LineItem#MembershipData',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : sId,
                Label : 'sId',
            },{
                $Type : 'UI.DataField',
                Value : regNo,
                Label : 'regNo',
            },{
                $Type : 'UI.DataField',
                Value : pId,
                Label : 'pId',
            },{
                $Type : 'UI.DataField',
                Value : deptName,
                Label : 'deptName',
            },{
                $Type : 'UI.DataField',
                Value : class,
                Label : 'class',
            },],
    }
);
annotate service.membership_data with @(
    UI.LineItem #MembershipData : [
        {
            $Type : 'UI.DataField',
            Value : studentData.clubData.teamLeaderId,
            Label : 'teamLeaderId',
        },{
            $Type : 'UI.DataField',
            Value : studentData.clubData.sId,
            Label : 'sId',
        },{
            $Type : 'UI.DataField',
            Value : studentData.clubData.mId,
            Label : 'mId',
        },{
            $Type : 'UI.DataField',
            Value : studentData.clubData.joinedDate,
            Label : 'joinedDate',
        },{
            $Type : 'UI.DataField',
            Value : studentData.clubData.clubId,
            Label : 'clubId',
        },]
);
annotate service.membership_data with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Club Data',
            ID : 'ClubData',
            Target : '@UI.FieldGroup#ClubData',
        },],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : studentData.clubData.clubId,
                Label : 'clubId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.joinedDate,
                Label : 'joinedDate',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.mId,
                Label : 'mId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.sId,
                Label : 'sId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.teamLeaderId,
                Label : 'teamLeaderId',
            },],
    }
);
annotate service.membership_data with @(
    UI.FieldGroup #demo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : studentData.clubData.mId,
                Label : 'mId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.clubId,
                Label : 'clubId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.joinedDate,
                Label : 'joinedDate',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.sId,
                Label : 'sId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.teamLeaderId,
                Label : 'teamLeaderId',
            },],
    }
);
annotate service.membership_data with @(
    UI.FieldGroup #ClubData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : studentData.clubData.clubId,
                Label : 'clubId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.joinedDate,
                Label : 'joinedDate',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.mId,
                Label : 'mId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.sId,
                Label : 'sId',
            },{
                $Type : 'UI.DataField',
                Value : studentData.clubData.teamLeaderId,
                Label : 'teamLeaderId',
            },],
    }
);
annotate service.membership_data with {
    sId @Common.FieldControl : #ReadOnly
};
