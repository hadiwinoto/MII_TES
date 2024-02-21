const dbConfig = require("../config/database");
const Sequelize = require("sequelize");

// Initialize Sequelize with database configuration
const sequelize = new Sequelize(
  dbConfig.DB,
  dbConfig.USER,
  dbConfig.PASSWORD,
  {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: {},
    pool: {
      max: dbConfig.pool.max,
      min: dbConfig.pool.min,
      acquire: dbConfig.pool.acquire,
      idle: dbConfig.pool.idle
    }
  }
);

const db = {};
db.Sequelize = Sequelize; // Store Sequelize library
db.sequelize = sequelize; // Store Sequelize connection object


db.Employee = require("./emloyee.js")(sequelize, Sequelize);
db.EmployeeProfile = require("./employee_profile.js")(sequelize, Sequelize);
db.Education = require("./education.js")(sequelize, Sequelize);
db.EmployeeFamily = require("./employee_family.js")(sequelize, Sequelize);
module.exports = db; 
