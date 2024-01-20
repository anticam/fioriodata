sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'btpuiemloyee/test/integration/FirstJourney',
		'btpuiemloyee/test/integration/pages/EmployeesList',
		'btpuiemloyee/test/integration/pages/EmployeesObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeesList, EmployeesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('btpuiemloyee') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeesList: EmployeesList,
					onTheEmployeesObjectPage: EmployeesObjectPage
                }
            },
            opaJourney.run
        );
    }
);