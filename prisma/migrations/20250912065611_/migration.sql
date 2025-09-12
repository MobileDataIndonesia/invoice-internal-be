/*
  Warnings:

  - A unique constraint covering the columns `[client_email]` on the table `clients` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `client_email` to the `clients` table without a default value. This is not possible if the table is not empty.
  - Added the required column `client_password` to the `clients` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "clients" ADD COLUMN     "client_email" TEXT NOT NULL,
ADD COLUMN     "client_password" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "clients_client_email_key" ON "clients"("client_email");
