.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.field public actionIntent:Landroid/app/PendingIntent;
.field public icon:I
.field public title:Ljava/lang/CharSequence;
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I
iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;
iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;
return-void
.end method