#### Notes from following the tutorial:
1. Sources (Adding sample table as sources)
- created new model folder in /model and a .yml file for the source (can also describe models)
- Source is Sf sample DB (snowflake_sample_data) & we provide all of its details (i.e. schema, tables, database, description) -- *could try adding more tables*
 -- Created model in which we used SQL and jinja to instruct to look for source and table with respective names and create model. It's known-practise to call the last CTE 'final' which will be used to select, to make the model
2. Explored /target to find compiled version of sql that dbt executes
- Main difference is the substitution of jinja template with information we placed in .yml files for sources in /model. *Helpful when debugging sql w/ jinja for mutliple CTEs, complex logic, and etc.
3. Custom schemas and changed required for it:
- By default, it deploys to 'PUBLIC' schema (in DEMO_DB).
- 2 ways to change this:
- - add into {{config...}} in model's sql file 
- - adding to dbt_project.yml in / under models, '+schema: ...' however a prefix is concat. to our provided-name. To fix, we added a file in /macro addressing this
 **getting an error: 
 Runtime Error cannot import name 'SnowflakeOCSPAsn1Crypto' from partially initialized module 'snowflake.connector.ocsp_asn1crypto' (most likely due to a circular import) **
4. Tests:
- dbt ships w/ 4 tests (unique, not_null, accepted values, relationships); we used not_null)
- running 'dbt test' fails test in '...first_dbt_model' due NULL value presence for a column that had not_null stated for test
- - to resolve, either remove test case or change the test to filter out NULL

------------

Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices