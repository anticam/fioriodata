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
