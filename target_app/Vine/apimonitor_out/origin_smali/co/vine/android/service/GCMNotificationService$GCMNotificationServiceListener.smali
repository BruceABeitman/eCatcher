.class Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;
.super Lco/vine/android/client/AppSessionListener;
.source "GCMNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/GCMNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GCMNotificationServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/GCMNotificationService;


# direct methods
.method private constructor <init>(Lco/vine/android/service/GCMNotificationService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;-><init>(Lco/vine/android/service/GCMNotificationService;)V

    return-void
.end method


# virtual methods
.method public onMergeNotificationComplete(Lco/vine/android/api/VineSingleNotification;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/api/VineSingleNotification;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6b

    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->getNotificationId(Lco/vine/android/api/VineSingleNotification;)I
    invoke-static {v4, p1}, Lco/vine/android/service/GCMNotificationService;->access$800(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;)I

    move-result v3

    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    invoke-virtual {v4, v3}, Lco/vine/android/service/GCMNotificationService;->getNotificationEvent(I)Lco/vine/android/service/GCMNotificationService$NotificationEvent;

    move-result-object v1

    iget-wide v4, v1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationObjectId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    iget-wide v4, p1, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    iget-wide v6, v1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationObjectId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2b

    invoke-virtual {v1}, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->reset()V

    iget-wide v4, p1, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    iput-wide v4, v1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationObjectId:J

    :cond_2b
    iput-object p2, v1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lco/vine/android/api/VineSingleNotification;->isMessaging()Z

    move-result v4

    if-eqz v4, :cond_76

    :try_start_33
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x65

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
    invoke-static {v4}, Lco/vine/android/service/GCMNotificationService;->access$000(Lco/vine/android/service/GCMNotificationService;)Landroid/os/Messenger;

    move-result-object v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
    invoke-static {v4}, Lco/vine/android/service/GCMNotificationService;->access$000(Lco/vine/android/service/GCMNotificationService;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4d} :catch_6c

    :cond_4d
    :goto_4d
    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mNotificationsToFire:Ljava/util/HashMap;
    invoke-static {v4}, Lco/vine/android/service/GCMNotificationService;->access$200(Lco/vine/android/service/GCMNotificationService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_54
    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mNotificationsToFire:Ljava/util/HashMap;
    invoke-static {v4}, Lco/vine/android/service/GCMNotificationService;->access$200(Lco/vine/android/service/GCMNotificationService;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, p1, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lco/vine/android/service/GCMNotificationService$BuildableNotification;

    iget-object v8, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    invoke-direct {v7, v8, p1, v1}, Lco/vine/android/service/GCMNotificationService$BuildableNotification;-><init>(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_73

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    const-string v4, "Failed to send request to camera service."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto :goto_4d

    :catchall_73
    move-exception v4

    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v4

    :cond_76
    iget-object v4, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->buildNotification(Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
    invoke-static {v4, p1, v1}, Lco/vine/android/service/GCMNotificationService;->access$900(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V

    goto :goto_6b
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .registers 11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/util/SparseArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_3a

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Lco/vine/android/util/image/ImageKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v6, 0x0

    iput-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    :cond_3a
    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v4}, Lco/vine/android/util/image/ImageKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_61
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
    invoke-static {v6, v0}, Lco/vine/android/service/GCMNotificationService;->access$700(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_71
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lco/vine/android/util/SparseArray;->removeAll(Ljava/util/Collection;)V

    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8b

    iget-object v7, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v7}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Lco/vine/android/util/SparseArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v7}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;

    iget-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v7, :cond_54

    iget-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    iget-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v7

    if-eqz v7, :cond_51

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;

    :cond_51
    const/4 v7, 0x0

    iput-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;

    :cond_54
    iget-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_7b
    iget-object v7, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
    invoke-static {v7, v0}, Lco/vine/android/service/GCMNotificationService;->access$700(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_8b
    iget-object v7, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v7}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Lco/vine/android/util/SparseArray;->removeAll(Ljava/util/Collection;)V

    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .registers 11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/util/SparseArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/util/video/VideoKey;

    invoke-virtual {p1, v5}, Lco/vine/android/util/video/VideoKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_52
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
    invoke-static {v6, v0}, Lco/vine/android/service/GCMNotificationService;->access$700(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_62
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lco/vine/android/util/SparseArray;->removeAll(Ljava/util/Collection;)V

    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    const-string v6, "Video path obtained."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/util/SparseArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/util/video/VideoKey;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_57
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #calls: Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
    invoke-static {v6, v0}, Lco/vine/android/service/GCMNotificationService;->access$700(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_67
    iget-object v6, p0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;->this$0:Lco/vine/android/service/GCMNotificationService;

    #getter for: Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
    invoke-static {v6}, Lco/vine/android/service/GCMNotificationService;->access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lco/vine/android/util/SparseArray;->removeAll(Ljava/util/Collection;)V

    return-void
.end method
