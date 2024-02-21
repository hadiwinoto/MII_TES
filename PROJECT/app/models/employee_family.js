module.exports = (sequelize, Sequelize) => {
    const EmployeeFamily = sequelize.define("EmployeeFamily", { // Capitalized model name
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        employee_id: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        name: {
            type: Sequelize.STRING,
            allowNull: true
        },
        identifier: {
            type: Sequelize.STRING,
            allowNull: false
        },
        job: {
            type: Sequelize.STRING,
            allowNull: false
        },
        place_of_birth: {
            type: Sequelize.STRING,
            allowNull: true
        },
        date_of_birth: {
            type: Sequelize.DATE,
            allowNull: false
        },
        religion: {
            type: Sequelize.ENUM('Islam','Katolik','Buda','Protestan','Khonghucu'),
            allowNull: false
        },
        id_life:{
            type: Sequelize.BOOLEAN,
            allowNull: false
        },
        id_divorced:{
            type: Sequelize.BOOLEAN,
            allowNull: false
        },
        relation_status:{
            type: Sequelize.ENUM('Suami','Istri','Anak','Anak Sambung'),
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
        tableName: 'employee_family',// Pluralized table name
        timestamps: false
    });
  
    return EmployeeFamily;
  };
  