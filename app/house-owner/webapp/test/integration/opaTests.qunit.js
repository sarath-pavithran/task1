sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'houseowner/test/integration/FirstJourney',
		'houseowner/test/integration/pages/grihanadhList',
		'houseowner/test/integration/pages/grihanadhObjectPage'
    ],
    function(JourneyRunner, opaJourney, grihanadhList, grihanadhObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('houseowner') + '/index.html'
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