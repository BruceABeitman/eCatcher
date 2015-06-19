.class final Landroid/support/v4/app/ci;
.super Ljava/lang/Object;
.source "NotificationManagerCompatEclair.java"


# direct methods
.method static a(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
