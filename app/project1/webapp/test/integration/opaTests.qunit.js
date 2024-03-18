sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/grihanadhList',
		'project1/test/integration/pages/grihanadhObjectPage'
    ],
    function(JourneyRunner, opaJourney, grihanadhList, grihanadhObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThegrihanadhList: grihanadhList,
					onThegrihanadhObjectPage: grihanadhObjectPage
                }
            },
            opaJourney.run
        );
    }
);