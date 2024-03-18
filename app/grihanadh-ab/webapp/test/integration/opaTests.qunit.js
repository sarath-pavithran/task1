sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'grihanadhab/test/integration/FirstJourney',
		'grihanadhab/test/integration/pages/grihanadhList',
		'grihanadhab/test/integration/pages/grihanadhObjectPage'
    ],
    function(JourneyRunner, opaJourney, grihanadhList, grihanadhObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('grihanadhab') + '/index.html'
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