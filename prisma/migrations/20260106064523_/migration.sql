/*
  Warnings:

  - You are about to drop the column `invoice_id` on the `notifications` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "notifications" DROP CONSTRAINT "notifications_invoice_id_fkey";

-- AlterTable
ALTER TABLE "notifications" DROP COLUMN "invoice_id";
