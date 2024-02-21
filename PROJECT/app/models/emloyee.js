module.exports = (sequelize, Sequelize) => {
  const Employee = sequelize.define("Employee", { // Capitalized model name
      id: {
          type: Sequelize.INTEGER,
          primaryKey: true,
          autoIncrement: true
      },
      nik: {
          type: Sequelize.STRING,
          allowNull: true
      },
      name: {
          type: Sequelize.STRING,
          allowNull: true
      },
      is_active: {
          type: Sequelize.BOOLEAN
      },
      start_date: {
          type: Sequelize.DATE,
          allowNull: false
      },
      end_date: {
          type: Sequelize.DATE,
          allowNull: false
      },
      created_by: {
          type: Sequelize.STRING,
          allowNull: true
      },
      updated_by: {
          type: Sequelize.STRING,
          allowNull: true
      },
      created_at: {
          type: Sequelize.DATE,
          allowNull: false
      },
      updated_at: {
          type: Sequelize.DATE,
          allowNull: false
      }
  }, {
      tableName: 'employee', // Pluralized table name
      timestamps: false
  });

  return Employee;
};
