# ACID Explanation

## Atomicity
In the transaction scenario, all operations are completed together. If any query fails, the transaction is rolled back completely.

## Consistency
The database remains valid before and after the transaction. Invalid records are not committed into the database.

## Isolation
Multiple transactions can execute safely without affecting each other’s intermediate data.

## Durability
After COMMIT, the updated data is permanently stored in the database even if the system crashes.

### Example Used
A transaction was used to insert submission details and update test result status together using COMMIT and ROLLBACK.
