.class public Lco/vine/android/service/GCMNotificationService$NotificationEvent;
.super Ljava/lang/Object;
.source "GCMNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/GCMNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationEvent"
.end annotation


# instance fields
.field public avatarKey:Lco/vine/android/util/image/ImageKey;

.field public bm:Landroid/graphics/Bitmap;

.field public builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field public final notificationId:I

.field public notificationObjectId:J

.field public notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;"
        }
    .end annotation
.end field

.field public final thumbnailKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final videoKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    iput p1, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v2, :cond_c

    const-string v2, "Builder is not ready, this event has been reset by notification merge."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move v2, v3

    :goto_b
    return v2

    :cond_c
    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v2, :cond_17

    const-string v2, "Notification not ready because avatar is pending."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move v2, v3

    goto :goto_b

    :cond_17
    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/ImageKey;

    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "Notification not ready because thumbnails are pending."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move v2, v3

    goto :goto_b

    :cond_42
    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/video/VideoKey;

    iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "Notification not ready because videos are pending."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move v2, v3

    goto :goto_b

    :cond_6d
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public reset()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object v1, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notifications:Ljava/util/ArrayList;

    iput-object v1, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;

    return-void
.end method
