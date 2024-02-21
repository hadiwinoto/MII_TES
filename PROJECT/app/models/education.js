module.exports = (sequelize, Sequelize) => {
    const Education = sequelize.define("Education", { // Capitalized model name
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
        level: {
            type: Sequelize.ENUM('TK','SD','SMP','SMA','Strata 1','Strata 2','Doktor','Profesor'),
        },
        description: {
            type: Sequelize.STRING,
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
        tableName: 'education',
        timestamps: false
    });
  
    return Education;
  };
  