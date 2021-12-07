#### Notes from following the tutorial:
1. Sources (Adding sample table as sources)
- created new model folder in /model and a .yml file for the source (can also describe models)
- Source is Sf sample DB (snowflake_sample_data) & we provide all of its details (i.e. schema, tables, database, description) -- *could try adding more tables*
 -- Created model in which we used SQL and jinja to instruct to look for source and table with respective names and create model. It's known-practise to call the last CTE 'final' which will be used to select, to make the model

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