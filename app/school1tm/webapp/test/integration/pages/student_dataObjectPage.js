sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'school1tm',
            componentId: 'student_dataObjectPage',
            contextPath: '/personal_data/studentData'
        },
        CustomPageDefinitions
    );
});