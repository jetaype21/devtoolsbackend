import { Client } from "pg";

export const pool = new Client({
  user: process.env.USER,
  password: process.env.PASSWORD,
  host: "horton.db.elephantsql.com",
  database: "gnfbsgfc",
});

pool.connect((err) => {
  if (err) {
    console.error("connection error", err.stack);
  } else {
    console.log("connected");
  }
});

// export const pool = new Client({
//   connectionString:
//     "postgres://gnfbsgfc:NvD-ekjDuEMAkrH1W6g_n7Eg-H9IG7sh@horton.db.elephantsql.com/gnfbsgfc",
// });
