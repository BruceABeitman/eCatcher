.class final Landroid/support/v4/app/bg;
.super Landroid/support/v4/app/be;
.source "NotificationCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/be;-><init>()V
return-void
.end method
.method public final a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
.registers 12
iget-object v0, p1, Landroid/support/v4/app/ba;->a:Landroid/content/Context;
iget-object v1, p1, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iget-object v2, p1, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;
iget-object v4, p1, Landroid/support/v4/app/ba;->h:Ljava/lang/CharSequence;
iget-object v5, p1, Landroid/support/v4/app/ba;->f:Landroid/widget/RemoteViews;
iget v6, p1, Landroid/support/v4/app/ba;->i:I
iget-object v7, p1, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;
iget-object v8, p1, Landroid/support/v4/app/ba;->e:Landroid/app/PendingIntent;
iget-object v9, p1, Landroid/support/v4/app/ba;->g:Landroid/graphics/Bitmap;
invoke-static/range {v0 .. v9}, Landroid/support/v4/app/br;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
move-result-object v0
return-object v0
.end method