## AUTHENTICATION_DATA_EXTENSION

**Description:** n/a

**Folder:** Data Extensions/Deloitte/

**Fields in table:** 7

**Sendable:** No

**Testable:** No

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| session | Text | 50 | + | - |  |
| appName | Text | 100 | - | + |  |
| createdDate | Date |  | - | + | GetDate() |
| token | Text | 520 | - | + |  |
| tokenExpire | Date |  | - | + |  |
| userName | Text | 100 | - | + |  |
| userEmail | EmailAddress | 254 | - | + |  |
