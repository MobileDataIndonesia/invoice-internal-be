// Middleware for file upload (multipart/form-data)
import { type Request } from 'express';
import { type FileFilterCallback } from 'multer';
import multer from 'multer';

// Use memory storage instead of disk storage for base64 conversion
const storage_payment = multer.memoryStorage();

const fileFilter = (req: Express.Request, file: Express.Multer.File, cb: FileFilterCallback) => {
  const allowedTypes = ['image/jpeg', 'image/png', 'image/jpg', 'application/pdf'];

  if (allowedTypes.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error('Invalid file type. Only JPEG, PNG, JPG, and PDF are allowed.'));
  }
};

export const upload_payment = multer({
  storage: storage_payment,
  fileFilter: fileFilter,
  limits: {
    fileSize: 5 * 1024 * 1024, // Max 5 MB
  },
});
