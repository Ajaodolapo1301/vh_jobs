import 'package:flutter/material.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

enum AppointmentStatus { unmatched, matched, completed, cancelled }

extension AppointmentStatusEnum on AppointmentStatus {
  Color get color {
    switch (this) {
      case AppointmentStatus.unmatched:
        return AppColors.variant2;
      case AppointmentStatus.matched:
        return AppColors.color1;
      case AppointmentStatus.completed:
        return AppColors.variant3;
      case AppointmentStatus.cancelled:
        return AppColors.error;
    }
  }
}

class Appointment {
  final String name;
  final String slot;
  final String day;
  final String time;
  final String address;
  final String description;
  final List<String> images;
  final AppointmentStatus appointmentStatus;

  Appointment({
    required this.day,
    required this.name,
    required this.slot,
    required this.time,
    required this.images,
    required this.address,
    required this.description,
    required this.appointmentStatus,
  });

  static List<Appointment> dummyAppointments = [
    Appointment(
      name: 'Cleaning Service',
      slot: 'Slot 2',
      day: '07',
      time: '10:30 AM',
      images: [],
      address: 'No 34. War college Estate gwarinpa 3rd avenue, Abuja FCT',
      description: 'Level 1, Two times cleaning and ironing',
      appointmentStatus: AppointmentStatus.unmatched,
    ),
    Appointment(
      name: 'Cleaning Service',
      slot: 'Slot 2',
      day: '07',
      time: '10:30 AM',
      images: [
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      ],
      address: 'No 34. War college Estate gwarinpa 3rd avenue, Abuja FCT',
      description: 'Level 1, Two times cleaning and ironing',
      appointmentStatus: AppointmentStatus.matched,
    ),
    Appointment(
      name: 'Cleaning Service',
      slot: 'Slot 2',
      day: '07',
      time: '10:30 AM',
      images: [
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        'https://s3-alpha-sig.figma.com/img/113c/cdc1/e61c3a4fe63bc9df2c548ee16457badb?Expires=1654473600&Signature=BC5eDZlzrMqsxbOJovdzfJKMJ1h1VzI2gL3qBfUtlVoZPwEMbKR5AIkcHzxMOz8RAHKNmiloUqDi50qJLH7vGv8kjkz9Z-Gep9ADm7FqBy5dV9XTMsRgefP5sCrSIp-5QL02WhG~rtswylDFhHIpWTMI8viJ4KrYb-Hi3wCmuR2NbWasS5k-hRan40-yQp~9bufYZmGbiF~wCOvFSqKg5NR9lbC82V1I~~KTgABDBR2T9NnJrHWy16ZRHJIgAFK~eCNUZ4kASKkMhvspGKNuX-SEGlGd-3DXMnLF3cX9OCwJ0aRVDs~7RPjK1LbmSezdu2hLnJ5XfTEZcBGjo0JXDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      ],
      address: 'No 34. War college Estate gwarinpa 3rd avenue, Abuja FCT',
      description: 'Level 1, Two times cleaning and ironing',
      appointmentStatus: AppointmentStatus.completed,
    ),
  ];
}
