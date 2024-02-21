module.exports = {
  HOST: "localhost",
  USER: "postgres",
  PORT: 5432,
  PASSWORD: "kjpprhr",
  DB: "data_kepegawaian",
  dialect: "postgres",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
