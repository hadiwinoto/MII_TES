module.exports = (sequelize, Sequelize) => {
    const EmployeeProfile = sequelize.define("EmployeeProfile", { // Capitalized model name
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        employee_id: {
            type: Sequelize.INTEGER,
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
        gender: {
            type: Sequelize.ENUM('Laki-laki', 'Perempuan'),
            allowNull: false
        },
        is_married: {
            type: Sequelize.BOOLEAN,
            allowNull: false
        },
        prof_pict: {
            type: Sequelize.STRING,
            allowNull: true
        },
        created_by: {
            type: Sequelize.STRING,
            allowNull: true
        },
        updated_by: {
            type: Sequelize.STRING,
            allowNull: false
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
        tableName: 'employee_profile',// Pluralized table name
        timestamps: false
    });
  
    return EmployeeProfile;
  };
  