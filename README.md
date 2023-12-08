
# InEx

InEx is a web application that enables customers to create an income and expenditure statement. It calculates their disposable income and provides an I&E rating.

## Built With

- Ruby on Rails 7

- Mysql

- Bootstrap


## Versions

important version 

```bash
  ruby "3.2.2"
  rails "7.1.2"
  node "18.18.1"

```


## Running the app

```bash
    cd your-folder
    git clone git@github.com:arvindmehra/inex.git
    cd path_to_inex_repo
    bundle
    rails db:setup
    bin/dev
```
## Running Tests

To run tests, run the following command

```bash
  rspec spec --format documentation

```


## Scope of Improvement

- Validations on the form to not take -ve values and doesn't allow empty form submission

- More readable and refactored code

- More test coverage

- Form submission by Turbo

- Built using scaffolds for the interest of time. Refactoring needed for unused files.


## Approach

InEx is built as an MVP, in the current scope user can sign up and create their income expenditure statements. Based on their inputs every statement gives a rating which can be used for the loan repayment plan.

Modelling: 

Every user can submit multiple income expenditure statements

Every Income Expenditure Statement can record multiple incomes and expenditures in separate income and expenditure tables respectively.

