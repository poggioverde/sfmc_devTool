## ERROR_DATA_EXTENSION

**Description:** n/a

**Folder:** Data Extensions/Deloitte/

**Fields in table:** 5

**Sendable:** No

**Testable:** No

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| id | Text | 50 | + | - |  |
| appName | Text | 100 | - | + |  |
| errorMessage | Text | 2000 | - | + |  |
| errorDescription | Text | 2000 | - | + |  |
| errorDate | Date |  | - | + | GetDate() |
