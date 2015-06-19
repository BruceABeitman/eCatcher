.class final Landroid/support/v4/app/al;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/ai;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ag;)Landroid/app/Notification;
    .registers 15

    iget-object v0, p1, Landroid/support/v4/app/ag;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ag;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/ag;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/ag;->i:I

    iget-object v7, p1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/ag;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/ag;->g:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v11, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v10, v1, Landroid/app/Notification;->icon:I

    iget v11, v1, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v10, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v10, v1, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v5, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v5, v1, Landroid/app/Notification;->ledARGB:I

    iget v10, v1, Landroid/app/Notification;->ledOnMS:I

    iget v11, v1, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v0, v5, v10, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v0, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a0

    const/4 v0, 0x1

    :goto_52
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v0, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a2

    const/4 v0, 0x1

    :goto_5d
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v0, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    :goto_68
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v5, v1, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v0, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a6

    const/4 v0, 0x1

    :goto_8f
    invoke-virtual {v2, v8, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_a0
    const/4 v0, 0x0

    goto :goto_52

    :cond_a2
    const/4 v0, 0x0

    goto :goto_5d

    :cond_a4
    const/4 v0, 0x0

    goto :goto_68

    :cond_a6
    const/4 v0, 0x0

    goto :goto_8f
.end method
