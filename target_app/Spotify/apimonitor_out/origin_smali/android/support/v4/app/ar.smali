.class final Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/an;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/al;)Landroid/app/Notification;
    .registers 19

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v4/app/al;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/al;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/al;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/al;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/al;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/support/v4/app/al;->i:I

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/al;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/al;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/al;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/support/v4/app/al;->n:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/al;->o:I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Landroid/support/v4/app/al;->p:Z

    new-instance v14, Landroid/app/Notification$Builder;

    invoke-direct {v14, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v15, v2, Landroid/app/Notification;->when:J

    invoke-virtual/range {v14 .. v16}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v14, v2, Landroid/app/Notification;->icon:I

    iget v15, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v1, v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v14, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v14, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v14, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v14, v2, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v1, v6, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->ledARGB:I

    iget v14, v2, Landroid/app/Notification;->ledOnMS:I

    iget v15, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v1, v6, v14, v15}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c4

    const/4 v1, 0x1

    :goto_72
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c6

    const/4 v1, 0x1

    :goto_7d
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c8

    const/4 v1, 0x1

    :goto_88
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_ca

    const/4 v1, 0x1

    :goto_af
    invoke-virtual {v3, v9, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11, v12, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :cond_c4
    const/4 v1, 0x0

    goto :goto_72

    :cond_c6
    const/4 v1, 0x0

    goto :goto_7d

    :cond_c8
    const/4 v1, 0x0

    goto :goto_88

    :cond_ca
    const/4 v1, 0x0

    goto :goto_af
.end method
