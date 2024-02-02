using EmployeeService as service from '../../srv/employee-service';

annotate service.Employees with @(
                                  // Filter Bar
                                UI.SelectionFields: [DEPARTMENT_ID], );

annotate service.Employees with @(

    UI.LineItem           : [
        {
            $Type: 'UI.DataField',
            Label: 'Name1',
            Value: NAME,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Email ID1',
            Value: EMAIL_ID,
        },
        {
            $Type: 'UI.DataFieldForAnnotation',
            Label: 'Rate',
            Value: RATE,

        

        }
        ,
        {
            $Type: 'UI.DataField',
            Label: 'Department1',
            Value: DEPARTMENT_ID,

        }
    ],
    // Object Page designing
    UI.HeaderInfo         : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Employee8',
        TypeNamePlural: 'Employees8',

    },

    UI.Facets             : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Default',
            ID    : 'Default',
            Label : 'General',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Admin',
            ID    : 'AdminData',
            Label : 'Administrative Data',
        },

    ],

    // Fieldgroups
    UI.FieldGroup #Default: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: NAME,
            },
            {
                $Type: 'UI.DataField',
                Value: EMAIL_ID,
            },
            {
                $Type: 'UI.DataField',
                Value: DEPARTMENT_ID,
            },
            {
                $Type: 'UI.DataField',
                Value: RATE,


            },
        ]
    },

    UI.FieldGroup #Admin  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy,
            },

        ]

    }


) {
    NAME       @title: 'Name4';
    EMAIL_ID   @title: 'Email ID4';
    DEPARTMENT @(
        title : 'Department4',
        Common: {

            // Dropdown list instead of popup window
            ValueListWithFixedValues,

            ValueList: {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'Department',
                Label         : 'Departments5',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterOut',
                        LocalDataProperty: DEPARTMENT_ID,
                        ValueListProperty: 'ID',
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'NAME',
                    },

                ]
            },


        }
    );

};

// annotate service.Employees with {
//     DEPARTMENT @Common.ValueList: {
//         $Type         : 'Common.ValueListType',
//         CollectionPath: 'Department',
//         Parameters    : [
//             {
//                 $Type            : 'Common.ValueListParameterInOut',
//                 LocalDataProperty: DEPARTMENT_ID,
//                 ValueListProperty: 'ID',
//             },
//             {
//                 $Type            : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty: 'NAME',
//             },
//         ],
//     }
// };

// annotate service.Employees with @(
//     UI.FieldGroup #GeneratedGroup1: {
//         $Type: 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type: 'UI.DataField',
//                 Label: 'Name6',
//                 Value: NAME,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Label: 'Email ID6',
//                 Value: EMAIL_ID,
//             },
//         ],
//     },
//     UI.Facets                     : [{
//         $Type : 'UI.ReferenceFacet',
//         ID    : 'GeneratedFacet1',
//         Label : 'General Information',
//         Target: '@UI.FieldGroup#GeneratedGroup1',
//     }, ]
// );
