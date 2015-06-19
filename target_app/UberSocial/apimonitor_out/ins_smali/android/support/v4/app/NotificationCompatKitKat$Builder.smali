.class public Landroid/support/v4/app/NotificationCompatKitKat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/NotificationBuilderWithActions;
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.field private b:Landroid/app/Notification$Builder;
.field private mActionExtrasList:Ljava/util/List;
.field private mExtras:Landroid/os/Bundle;
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
.registers 29
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;
new-instance v3, Landroid/app/Notification$Builder;
invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
iget-wide v4, p2, Landroid/app/Notification;->when:J
invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
move-result-object v3
iget v4, p2, Landroid/app/Notification;->icon:I
iget v5, p2, Landroid/app/Notification;->iconLevel:I
invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
move-result-object v3
iget-object v4, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v3
iget-object v4, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
invoke-virtual {v3, v4, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v3
iget-object v4, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;
iget v5, p2, Landroid/app/Notification;->audioStreamType:I
invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
move-result-object v3
iget-object v4, p2, Landroid/app/Notification;->vibrate:[J
invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
move-result-object v3
iget v4, p2, Landroid/app/Notification;->ledARGB:I
iget v5, p2, Landroid/app/Notification;->ledOnMS:I
iget v6, p2, Landroid/app/Notification;->ledOffMS:I
invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
move-result-object v4
iget v3, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v3, v3, 0x2
if-eqz v3, :cond_ee
const/4 v3, 0x1
:goto_48
invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
move-result-object v4
iget v3, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v3, v3, 0x8
if-eqz v3, :cond_f1
const/4 v3, 0x1
:goto_53
invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
move-result-object v4
iget v3, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v3, v3, 0x10
if-eqz v3, :cond_f4
const/4 v3, 0x1
:goto_5e
invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
move-result-object v3
iget v4, p2, Landroid/app/Notification;->defaults:I
invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
move-result-object v3
invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v3
invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v3
move-object/from16 v0, p16
invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v3
invoke-virtual {v3, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v3
invoke-virtual {v3, p8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v3
iget-object v4, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v4
iget v3, p2, Landroid/app/Notification;->flags:I
and-int/lit16 v3, v3, 0x80
if-eqz v3, :cond_f7
const/4 v3, 0x1
:goto_8b
move-object/from16 v0, p9
invoke-virtual {v4, v0, v3}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
move-result-object v3
move-object/from16 v0, p10
invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
move-result-object v3
invoke-virtual {v3, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
move-result-object v3
move/from16 v0, p14
invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
move-result-object v3
move/from16 v0, p15
invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
move-result-object v3
move/from16 v0, p11
move/from16 v1, p12
move/from16 v2, p13
invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
move-result-object v3
iput-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
iput-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
if-eqz p18, :cond_c3
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
move-object/from16 v0, p18
invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:cond_c3
if-eqz p17, :cond_cd
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v4, "android.support.localOnly"
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_cd
if-eqz p19, :cond_e2
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v4, "android.support.groupKey"
move-object/from16 v0, p19
invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p20, :cond_f9
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v4, "android.support.isGroupSummary"
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:goto_e2
:cond_e2
if-eqz p21, :cond_ed
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v4, "android.support.sortKey"
move-object/from16 v0, p21
invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_ed
return-void
:cond_ee
const/4 v3, 0x0
goto/16 :goto_48
:cond_f1
const/4 v3, 0x0
goto/16 :goto_53
:cond_f4
const/4 v3, 0x0
goto/16 :goto_5e
:cond_f7
const/4 v3, 0x0
goto :goto_8b
:cond_f9
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v4, "android.support.useSideChannel"
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_e2
.end method
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;
iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;
invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public build()Landroid/app/Notification;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;
invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
move-result-object v0
if-eqz v0, :cond_f
iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
const-string v2, "android.support.actionExtras"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_f
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;
iget-object v1, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;
invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method public getBuilder()Landroid/app/Notification$Builder;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;
return-object v0
.end method