.class public Lcom/facebook/katana/binding/ServiceNotificationManager;
.super Ljava/lang/Object;
.source "ServiceNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_TYPE_UPLOAD_PROGRESS_BASE:I = 0x64

.field public static final TYPE_EVENT_INVITES:I = 0x3

.field public static final TYPE_FRIEND_REQUESTS:I = 0x2

.field public static final TYPE_MESSAGES:I = 0x1

.field private static mProgressNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static beginProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.upload.notification.pending."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_photo_is_scaled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_2f

    const-string v1, "extra_album_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2f
    const/high16 p2, 0x1400

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/app/Notification;

    const p2, 0x7f0200db

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget p2, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f08001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, p0, p2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v7, 0x0

    sget-object p2, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    #getter for: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mCount:I
    invoke-static {p2}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$0(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v7

    :cond_77
    add-int/lit8 v7, v7, 0x1

    sget-object p2, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    add-int/lit8 v1, p1, 0x64

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;-><init>(ILandroid/app/Notification;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {p2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_9f

    return-void

    :cond_9f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    invoke-virtual {p2, p0, v7}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->updateCount(Landroid/content/Context;I)V

    goto :goto_98
.end method

.method protected static cancelUploadNotification(Landroid/content/Context;I)V
    .registers 5

    sget-object v1, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    if-eqz v0, :cond_1d

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    #getter for: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
    invoke-static {v0}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$1(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1d
    return-void
.end method

.method protected static endProgressNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "android.intent.extra.SUBJECT"

    sget-object v4, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    if-eqz v3, :cond_d0

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    #getter for: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
    invoke-static {v3}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$1(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    if-ne p2, v8, :cond_b4

    const v4, 0x7f0200d8

    iput v4, v2, Landroid/app/Notification;->icon:I

    :goto_2f
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.facebook.katana.clear_notification."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "type"

    const/16 v5, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_album_id"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne p2, v8, :cond_bb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.facebook.katana.upload.notification.ok."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_photo_id"

    invoke-virtual {v0, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_7f
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "extra_photo_is_scaled"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x1400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #calls: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getCaption()Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$2(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a6

    const-string v4, "android.intent.extra.TITLE"

    #calls: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getCaption()Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$2(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a6
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-ne p2, v8, :cond_ce

    const/4 v4, 0x2

    :goto_af
    invoke-virtual {v3, p0, v2, v4}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->updateNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    move v4, v7

    :goto_b3
    return v4

    :cond_b4
    const v4, 0x1080078

    iput v4, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_2f

    :cond_bb
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.facebook.katana.upload.notification.error."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7f

    :cond_ce
    move v4, v7

    goto :goto_af

    :cond_d0
    move v4, v6

    goto :goto_b3
.end method

.method protected static handleClearNotifications(Landroid/content/Context;)V
    .registers 5

    sget-object v2, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    #calls: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getType()I
    invoke-static {v1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$3(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    #calls: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->getType()I
    invoke-static {v1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$3(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    :cond_25
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    #getter for: Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->mId:I
    invoke-static {v1}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->access$1(Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a
.end method

.method private static realShowNotification(Landroid/content/Context;ILjava/lang/CharSequence;IILandroid/content/Intent;Z)V
    .registers 14

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, p1, p2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput p3, v0, Landroid/app/Notification;->number:I

    const-string v4, "use_led"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v4, 0x1f4

    iput v4, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v4, 0x7d0

    iput v4, v0, Landroid/app/Notification;->ledOffMS:I

    const v4, -0xffff01

    iput v4, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/app/Notification;->flags:I

    :cond_2b
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-static {p0, v6, p5, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, p0, v4, p2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-nez p6, :cond_7b

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_6d

    const-string v4, "ringtone"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6d

    const/4 v4, 0x2

    iput v4, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_6d
    const-string v4, "vibrate"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget v4, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/app/Notification;->defaults:I

    :cond_7b
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected static release(Landroid/content/Context;)V
    .registers 3

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    sget-object v1, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected static showNotification(Landroid/content/Context;JLcom/facebook/katana/service/api/FacebookNotifications;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    const-string p1, " "

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v9, 0x0

    const-string p2, "notif"

    const/16 p4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getUnreadMessages()I

    move-result p2

    if-lez p2, :cond_69

    const-string p2, "notif_messages"

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getUnreadMessages()I

    move-result p2

    const/16 p4, 0x1

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_1bf

    const p2, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_45
    new-instance v8, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "facebook:/inbox"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v4, 0x7f0200dc

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getUnreadMessages()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/facebook/katana/binding/ServiceNotificationManager;->realShowNotification(Landroid/content/Context;ILjava/lang/CharSequence;IILandroid/content/Intent;Z)V

    const/4 v9, 0x1

    :cond_69
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getFriendRequests()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_103

    const-string p2, "notif_friend_requests"

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_103

    new-instance p2, Ljava/lang/StringBuilder;

    const p4, 0x7f0801a3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " "

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getFriendRequests()Ljava/util/List;

    move-result-object p4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result p4

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " "

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getFriendRequests()Ljava/util/List;

    move-result-object p4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result p4

    const/16 p5, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1e2

    const p4, 0x7f0800b1

    :goto_ce
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v8, Landroid/content/Intent;

    const-class p4, Lcom/facebook/katana/RequestsActivity;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v11, 0x7f0200da

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getFriendRequests()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    move-object/from16 v10, p0

    move-object v15, v8

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/facebook/katana/binding/ServiceNotificationManager;->realShowNotification(Landroid/content/Context;ILjava/lang/CharSequence;IILandroid/content/Intent;Z)V

    const/4 v9, 0x1

    :cond_103
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_17

    const-string p2, "notif_event_invites"

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    const p2, 0x7f0801a3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct/range {p1 .. p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 p4, 0x1

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_1e7

    const p2, 0x7f0800af

    :goto_158
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 p4, 0x1

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_1ec

    new-instance v8, Landroid/content/Intent;

    const-class p2, Lcom/facebook/katana/EventDetailsActivity;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p4, Lcom/facebook/katana/provider/EventsProvider;->EVENT_EID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p2

    const/16 p5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1a4
    const v11, 0x7f0200d9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getEventInvites()Ljava/util/List;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x3

    move-object/from16 v10, p0

    move-object v15, v8

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/facebook/katana/binding/ServiceNotificationManager;->realShowNotification(Landroid/content/Context;ILjava/lang/CharSequence;IILandroid/content/Intent;Z)V

    const/4 v9, 0x1

    goto/16 :goto_17

    :cond_1bf
    const p2, 0x7f0801a5

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    const/16 p5, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookNotifications;->getUnreadMessages()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_45

    :cond_1e2
    const p4, 0x7f0800b2

    goto/16 :goto_ce

    :cond_1e7
    const p2, 0x7f0800b0

    goto/16 :goto_158

    :cond_1ec
    new-instance v8, Landroid/content/Intent;

    const-class p2, Lcom/facebook/katana/EventsActivity;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1a4
.end method

.method protected static updateProgressNotification(Landroid/content/Context;II)Z
    .registers 6

    sget-object v1, Lcom/facebook/katana/binding/ServiceNotificationManager;->mProgressNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p0, p2}, Lcom/facebook/katana/binding/ServiceNotificationManager$MyNotification;->updateProgress(Landroid/content/Context;I)V

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method
