.class  Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
.registers 7
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;
iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I
if-lez v1, :cond_17
iget v1, v0, Landroid/app/Notification;->flags:I
or-int/lit16 v1, v1, 0x80
iput v1, v0, Landroid/app/Notification;->flags:I
:cond_17
return-object v0
.end method
.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getActionCount(Landroid/app/Notification;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getLocalOnly(Landroid/app/Notification;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public isGroupSummary(Landroid/app/Notification;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method