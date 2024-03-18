sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'school1tm/test/integration/FirstJourney',
		'school1tm/test/integration/pages/personal_dataList',
		'school1tm/test/integration/pages/personal_dataObjectPage',
		'school1tm/test/integration/pages/student_dataObjectPage'
    ],
    function(JourneyRunner, opaJourney, personal_dataList, personal_dataObjectPage, student_dataObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('school1tm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepersonal_dataList: personal_dataList,
					onThepersonal_dataObjectPage: personal_dataObjectPage,
					onThestudent_dataObjectPage: student_dataObjectPage
                }
            },
            opaJourney.run
        );
    }
);