.class public Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/Pusher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapPusher"
.end annotation


# instance fields
.field folderPushers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Lcom/fsck/k9/mail/PushReceiver;

.field final mStore:Lcom/fsck/k9/mail/store/ImapStore;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mStore:Lcom/fsck/k9/mail/store/ImapStore;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mReceiver:Lcom/fsck/k9/mail/PushReceiver;

    return-void
.end method


# virtual methods
.method public getRefreshInterval()I
    .registers 2

    const v0, 0x124f80

    return v0
.end method

.method public refresh()V
    .registers 8

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3b

    :try_start_19
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->refresh()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception while refreshing for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catchall_3b
    move-exception v4

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_3b

    throw v4

    :cond_3e
    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    return-void
.end method

.method public start(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->stop()V

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    if-nez v2, :cond_a

    new-instance v2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mStore:Lcom/fsck/k9/mail/store/ImapStore;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mReceiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->start()V

    goto :goto_a

    :catchall_34
    move-exception v4

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v4

    :cond_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    return-void
.end method

.method public stop()V
    .registers 8

    const-string v4, "k9"

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "k9"

    const-string v3, "Requested stop of IMAP pusher"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_10
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_69

    :try_start_26
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_46

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting stop of IMAP folderPusher "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop()V
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_49} :catch_4a

    goto :goto_1a

    :catch_4a
    move-exception v4

    move-object v0, v4

    :try_start_4c
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception while stopping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catchall_69
    move-exception v4

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_69

    throw v4

    :cond_6c
    :try_start_6c
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_69

    return-void
.end method
