# CDE_fufu_model_dbt

### Automate User Access Requests
Currently, a user (joseph) needs access to new tables/models after they are created. He
manually contacts the team for access. How can access be given to this user after each dbt
execution?

#### Answer
To automate access for the user (Joseph) to new tables/models created in dbt, post-hooks will be use in the project.yml model section to grant permission to joseph . This ensures that Joseph receives the necessary permissions automatically after each execution of dbt.

```
+post-hook:
    #     sql: "GRANT SELECT ON {{ this }} TO joseph"
```