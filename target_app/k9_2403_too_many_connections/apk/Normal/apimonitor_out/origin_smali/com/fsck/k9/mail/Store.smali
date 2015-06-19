.class public abstract Lcom/fsck/k9/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field public static final FETCH_BODY_SANE_SUGGESTED_SIZE:I = 0xc800

.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710

.field protected static final SOCKET_READ_TIMEOUT:I = 0xea60

.field private static mStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-class v1, Lcom/fsck/k9/mail/Store;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Store;

    if-nez v0, :cond_21

    const-string v2, "imap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore;-><init>(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_21

    sget-object v2, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    if-nez v0, :cond_69

    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate an applicable Store for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_3f
    :try_start_3f
    const-string v2, "pop3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/Pop3Store;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_4d
    const-string v2, "local"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore;-><init>(Ljava/lang/String;Landroid/app/Application;)V

    goto :goto_1a

    :cond_5b
    const-string v2, "webdav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/WebDavStore;-><init>(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_3f .. :try_end_68} :catchall_3c

    goto :goto_1a

    :cond_69
    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public abstract checkSettings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCopyCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isExpungeCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMoveCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPushCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSendCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessages([Lcom/fsck/k9/mail/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    return-void
.end method
