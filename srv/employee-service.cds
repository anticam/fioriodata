using btp.j as bj from '../db/data-model';

service EmployeeService {
    entity Employees @(Capabilities: {
        InsertRestrictions: {
            $Type: 'Capabilities.InsertRestrictionsType',
            Insertable,

        },
        DeleteRestrictions: {
            $Type: 'Capabilities.DeleteRestrictionsType',
            Deletable,
        },
        UpdateRestrictions: {
            $Type: 'Capabilities.UpdateRestrictionsType',
            Updatable,
        },
    })                as select from bj.EMPLOYEE_REGISTRY;

    annotate Employees with @odata.draft.enabled;

    @readonly
    entity Department as select from bj.DEPARTMENT;

    annotate Department with @odata.draft.enabled;
}

// annotate EmployeeService.Employees with @(UI: {
//     // Filter Bar
//     SelectionFields: [DEPARTMENT_ID],

//     // Table Column
//     LineItem       : [
//         {
//             $Type: 'UI.DataField',
//             Value: NAME,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: EMAIL_ID,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: DEPARTMENT_ID,
//         },
//     ],
// }) {
//     NAME       @title: 'Name';
//     EMAIL_ID   @title: 'Email ID';
//     DEPARTMENT @title: 'Department';
// }
