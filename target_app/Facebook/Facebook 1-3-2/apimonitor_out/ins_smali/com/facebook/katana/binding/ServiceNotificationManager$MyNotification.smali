.class  Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;
.super Ljava/lang/Object;
.source "ServiceNotificationManager.java"
.field public static final TYPE_ERROR:I = 0x1
.field public static final TYPE_PROGRESS:I = 0x0
.field public static final TYPE_SUCCESS:I = 0x2
.field private final mCaption:Ljava/lang/String;
.field private mCount:I
.field public final mFilename:Ljava/lang/String;
.field private final mId:I
.field public mNotif:Landroid/app/Notification;
.field private final mPosition:I
.field public mProgress:I
.field private mType:I
.method public constructor <init>(ILandroid/app/Notification;ILjava/lang/String;Ljava/lang/String;III)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
iput p3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mType:I
iput-object p4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iput-object p5, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mFilename:Ljava/lang/String;
iput p6, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mProgress:I
iput p7, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mPosition:I
iput p8, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I
.registers 2
iget v0, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
return v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I
.registers 2
iget v0, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
return v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getCaption()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getType()I
move-result v0
return v0
.end method
.method private getCaption()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
return-object v0
.end method
.method private getType()I
.registers 2
iget v0, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mType:I
return v0
.end method
.method private update(Landroid/content/Context;)V
.registers 10
const v4, 0x7f0b0097
const v7, 0x7f080182
const/4 v3, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
iget v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mType:I
packed-switch v1, :pswitch_data_122
:goto_e
const-string v1, "notification"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/app/NotificationManager;
iget v2, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
iget-object v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
:pswitch_1e
new-instance v0, Landroid/widget/RemoteViews;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f03003b
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
const v1, 0x7f0b0095
const v2, 0x7f0200db
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
if-eqz v1, :cond_71
const v1, 0x7f080183
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
aput-object v3, v2, v5
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:goto_47
const v1, 0x7f0b0096
new-instance v2, Ljava/lang/StringBuilder;
iget v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mProgress:I
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "%"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
const v1, 0x7f0b0099
const/16 v2, 0x64
iget v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mProgress:I
invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
goto :goto_e
:cond_71
const v1, 0x7f080184
new-array v2, v3, [Ljava/lang/Object;
iget v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mPosition:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
iget v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto :goto_47
:pswitch_8e
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
if-eqz v1, :cond_ba
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
const v2, 0x7f080180
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
:goto_a3
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
iget-object v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
goto/16 :goto_e
:cond_ba
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
const v2, 0x7f080181
new-array v3, v3, [Ljava/lang/Object;
iget v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mPosition:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
iget v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
goto :goto_a3
:pswitch_d8
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
if-eqz v1, :cond_104
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
const v2, 0x7f08017e
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCaption:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
:goto_ed
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
iget-object v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
goto/16 :goto_e
:cond_104
iget-object v1, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
const v2, 0x7f08017f
new-array v3, v3, [Ljava/lang/Object;
iget v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mPosition:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
iget v4, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
goto :goto_ed
:pswitch_data_122
.packed-switch 0x0
:pswitch_1e
:pswitch_d8
:pswitch_8e
.end packed-switch
.end method
.method public updateCount(Landroid/content/Context;I)V
.registers 3
iput p2, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
invoke-direct {p0, p1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->update(Landroid/content/Context;)V
return-void
.end method
.method public updateNotification(Landroid/content/Context;Landroid/app/Notification;I)V
.registers 4
iput-object p2, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mNotif:Landroid/app/Notification;
iput p3, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mType:I
invoke-direct {p0, p1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->update(Landroid/content/Context;)V
return-void
.end method
.method public updateProgress(Landroid/content/Context;I)V
.registers 3
iput p2, p0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mProgress:I
invoke-direct {p0, p1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->update(Landroid/content/Context;)V
return-void
.end method