## Commands of DCL
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/68660cc5ac783179bf0ed96b35d47119/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/d131b794a0bad705a746fc265072690b/raw/image.png)
### `Grant` : used to give users access privileges
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/e72374d1c40163102e61af5205982a1e/raw/image.png)
- `GRANT SELECT ON TABLE Students To Remma` meaning i will give `Remma` the privilege to view the data only.
- `GRANT ALL ON TABLE Students TO MARY,Remma` meaning i will give all DML privileges to users `mary and remma`.
- `GRANT SELECT ON TABLE Students TO Remma WITH GRANT OPTION` meaning i will access privilege to `Remma` and she can pass this privilege to other users.
__________
### `REVOKE` : used to remove access privileges 
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/91c7020a73e7018b3116465be232e811/raw/image.png)
- `REVOKE UPDATE ON TABLE Students FROM Remma`: meaning remove the `update command` privilege from `Remma`
- `REVOKE ALL ON TABLE Students FROM Remma`: meaning remove all privileges on the table from `Remma`
