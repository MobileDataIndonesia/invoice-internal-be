/*
  Warnings:

  - You are about to drop the column `client_email` on the `clients` table. All the data in the column will be lost.
  - You are about to drop the column `client_password` on the `clients` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "clients_client_email_key";

-- AlterTable
ALTER TABLE "clients" DROP COLUMN "client_email",
DROP COLUMN "client_password";
