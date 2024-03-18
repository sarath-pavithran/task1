sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'school1tm',
            componentId: 'personal_dataList',
            contextPath: '/personal_data'
        },
        CustomPageDefinitions
    );
});