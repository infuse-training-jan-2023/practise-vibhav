CREATE TABLE "items"(
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "item" TEXT NOT NULL,
  "status" TEXT NOT NULL,
  "reminder" BOOLEAN
);

CREATE TABLE "user"(
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "DOB" DATE NOT NULL
);