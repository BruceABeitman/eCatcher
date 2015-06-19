.class public Lcom/fsck/k9/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/MessagingController$29;,
        Lcom/fsck/k9/MessagingController$MemorizingListener;,
        Lcom/fsck/k9/MessagingController$Memory;,
        Lcom/fsck/k9/MessagingController$MemorizingState;,
        Lcom/fsck/k9/MessagingController$Command;,
        Lcom/fsck/k9/MessagingController$SORT_TYPE;
    }
.end annotation


# static fields
.field private static final MAX_SMALL_MESSAGE_SIZE:I = 0xc800

.field private static final PENDING_COMMAND_APPEND:Ljava/lang/String; = "com.fsck.k9.MessagingController.append"

.field private static final PENDING_COMMAND_EMPTY_TRASH:Ljava/lang/String; = "com.fsck.k9.MessagingController.emptyTrash"

.field private static final PENDING_COMMAND_EXPUNGE:Ljava/lang/String; = "com.fsck.k9.MessagingController.expunge"

.field private static final PENDING_COMMAND_MARK_ALL_AS_READ:Ljava/lang/String; = "com.fsck.k9.MessagingController.markAllAsRead"

.field private static final PENDING_COMMAND_MOVE_OR_COPY:Ljava/lang/String; = "com.fsck.k9.MessagingController.moveOrCopy"

.field private static final PENDING_COMMAND_MOVE_OR_COPY_BULK:Ljava/lang/String; = "com.fsck.k9.MessagingController.moveOrCopyBulk"

.field private static final PENDING_COMMAND_SET_FLAG:Ljava/lang/String; = "com.fsck.k9.MessagingController.setFlag"

.field private static final PENDING_COMMAND_SET_FLAG_BULK:Ljava/lang/String; = "com.fsck.k9.MessagingController.setFlagBulk"

.field private static inst:Lcom/fsck/k9/MessagingController;

.field static loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

.field static uidfill:J


# instance fields
.field private checkMailListener:Lcom/fsck/k9/MessagingListener;

.field private deletedUids:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedUid:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mBusy:Z

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fsck/k9/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

.field pushers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Pusher;",
            ">;"
        }
    .end annotation
.end field

.field private sendCount:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private sortAscending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fsck/k9/MessagingController$SORT_TYPE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/MessagingController;->inst:Lcom/fsck/k9/MessagingController;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fsck/k9/MessagingController;->uidfill:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->sortAscending:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    new-instance v0, Lcom/fsck/k9/MessagingController$MemorizingListener;

    invoke-direct {v0, p0}, Lcom/fsck/k9/MessagingController$MemorizingListener;-><init>(Lcom/fsck/k9/MessagingController;)V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->expungedUid:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V

    :cond_60
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/MessagingController;->doRefreshRemote(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/MessagingController;->deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->setLocalUnreadCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/MessagingController;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/MessagingController;->syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fsck/k9/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/MessagingController;->loadMessageForViewRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/fsck/k9/MessagingController;->moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/MessagingController;->queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    return-void
.end method

.method private binMessages([Lcom/fsck/k9/mail/Message;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fsck/k9/mail/Message;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_2a

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_2a
    return-object v2
.end method

.method private createFolderKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v2, ":"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
    .registers 26

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getUidsFromMessages([Lcom/fsck/k9/mail/Message;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p3

    :try_start_e
    array-length v15, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_11
    if-ge v13, v15, :cond_74

    aget-object v20, v10, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->unsuppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    if-eqz p4, :cond_2d

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_35
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_64
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_e .. :try_end_4b} :catch_4c

    goto :goto_35

    :catch_4c
    move-exception v4

    move-object/from16 v19, v4

    :try_start_4f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error deleting message from local store."

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v4

    if-eqz v16, :cond_6a

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_6a
    if-eqz v18, :cond_6f

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_6f
    throw v4

    :cond_70
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_11

    :cond_74
    :try_start_74
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    const-string v4, "-NONE-"

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    :cond_a2
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_ad

    const-string v4, "k9"

    const-string v5, "Deleting messages in trash folder or trash set to -None-, not copying"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x0

    sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    :cond_bf
    :goto_bf
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c7
    :goto_c7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_128

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v4

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    if-eqz v18, :cond_c7

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v5

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    goto :goto_c7

    :cond_f3
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_10c

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    :cond_10c
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_bf

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_11e

    const-string v4, "k9"

    const-string v5, "Deleting messages in normal folder, moving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto :goto_bf

    :cond_128
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_156

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete policy for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_156
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    move-object/from16 v10, p3

    array-length v15, v10

    const/4 v12, 0x0

    :goto_167
    if-ge v12, v15, :cond_192

    aget-object v20, v10, v12

    new-instance v11, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v11}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v4, "com.fsck.k9.MessagingController.append"

    iput-object v4, v11, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, v11, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_167

    :cond_192
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_195
    .catchall {:try_start_74 .. :try_end_195} :catchall_64
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_74 .. :try_end_195} :catch_4c

    :cond_195
    :goto_195
    if-eqz v16, :cond_19a

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_19a
    if-eqz v18, :cond_19f

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_19f
    return-void

    :cond_1a0
    :try_start_1a0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cc

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1cc

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_195

    :cond_1cc
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e5

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/MessagingController;->queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_195

    :cond_1e5
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_204

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_195

    :cond_204
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_195

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prevents delete from server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22a
    .catchall {:try_start_1a0 .. :try_end_22a} :catchall_64
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1a0 .. :try_end_22a} :catch_4c

    goto/16 :goto_195
.end method

.method private doRefreshRemote(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    const-string v0, "doRefreshRemote"

    new-instance v1, Lcom/fsck/k9/MessagingController$2;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/MessagingController$2;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v8, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_21
    :goto_21
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    if-nez v27, :cond_122

    if-nez p5, :cond_21

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_8d

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_8d

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_85

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not downloaded at all"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_8d
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_b3

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is partially or fully downloaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f6
    :goto_f6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_f6

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_f6

    :cond_122
    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_21

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_153

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already locally present"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_169

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    :cond_169
    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_1ae

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_1ae

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_1a5

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not downloaded, even partially; trying again"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a5
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_1ae
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_1b7
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v20, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1d2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ee

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v5

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_1d2

    :cond_1ee
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_214

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unsynced messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_214
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2ee

    invoke-static/range {v35 .. v35}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getVisibleLimit()I

    move-result v37

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v37

    if-le v0, v1, :cond_243

    sub-int v5, v26, v37

    move-object/from16 v0, v35

    move v1, v5

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v35

    :cond_243
    new-instance v22, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v5

    if-eqz v5, :cond_256

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    :cond_256
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_288

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: About to sync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unsynced messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_288
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/fsck/k9/mail/Message;

    new-instance v5, Lcom/fsck/k9/MessagingController$7;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v13}, Lcom/fsck/k9/MessagingController$7;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/fsck/k9/mail/Folder;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2af
    :goto_2af
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/fsck/k9/mail/Message;

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2af

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    goto :goto_2af

    :cond_2d2
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_2ee

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Synced unsynced messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ee
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_330

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " large messages and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " small messages out of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unsynced messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_330
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->clear()V

    new-instance v22, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_35c

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Fetching small messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/fsck/k9/mail/Message;

    new-instance v14, Lcom/fsck/k9/MessagingController$8;

    move-object/from16 v15, p0

    move-object/from16 v16, p3

    move-object/from16 v17, p1

    move-object/from16 v18, v13

    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/MessagingController$8;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_39b

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Done fetching small messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39b
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_3c5

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Fetching large messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3e0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/fsck/k9/mail/Message;

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v5

    if-nez v5, :cond_4cb

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v22

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v5

    const v6, 0xc800

    if-ge v5, v6, :cond_4bf

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    :goto_437
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_46e

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to notify listeners that we got a new large message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46e
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_479
    :goto_479
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v5

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_479

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_479

    :cond_4bf
    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto/16 :goto_437

    :cond_4cb
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4e2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_509

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/fsck/k9/mail/Part;

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v22

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    goto :goto_4e2

    :cond_509
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual/range {v28 .. v28}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto/16 :goto_437

    :cond_52c
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_548

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Done fetching large messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_548
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v5

    if-eqz v5, :cond_641

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_57b

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: About to sync flags for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remote messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57b
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5a1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_641

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/fsck/k9/mail/Message;

    invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z

    move-result v29

    if-eqz v29, :cond_61a

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_5dc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v5

    if-eqz v5, :cond_5fb

    :cond_5dc
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5e4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_5e4

    :cond_5fb
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_603
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_603

    :cond_61a
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_625
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v5

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_625

    :cond_641
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_671

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYNC: Synced remote messages for folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_671
    new-instance v5, Lcom/fsck/k9/MessagingController$9;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController$9;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->purgeToVisibleLimit(Lcom/fsck/k9/mail/MessageRemovalListener;)V

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    return v5
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
    .registers 3

    const-class v0, Lcom/fsck/k9/MessagingController;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/fsck/k9/MessagingController;->inst:Lcom/fsck/k9/MessagingController;

    if-nez v1, :cond_e

    new-instance v1, Lcom/fsck/k9/MessagingController;

    invoke-direct {v1, p0}, Lcom/fsck/k9/MessagingController;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/fsck/k9/MessagingController;->inst:Lcom/fsck/k9/MessagingController;

    :cond_e
    sget-object v1, Lcom/fsck/k9/MessagingController;->inst:Lcom/fsck/k9/MessagingController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    move-object v1, p1

    move-object v0, v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v1, v0

    :cond_9
    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUidsFromMessages([Lcom/fsck/k9/mail/Message;)[Ljava/lang/String;
    .registers 5

    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method private isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
    .registers 14

    const/4 v9, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_9

    :cond_7
    move v7, v9

    :goto_8
    return v7

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/fsck/k9/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto :goto_8

    :cond_17
    iget-object v7, p0, Lcom/fsck/k9/MessagingController;->expungedUid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/MessagingController;->createFolderKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    :try_start_2d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_37

    move-result-wide v4

    cmp-long v7, v4, v0

    if-gtz v7, :cond_38

    move v7, v9

    goto :goto_8

    :catch_37
    move-exception v7

    :cond_38
    move v7, v9

    goto :goto_8
.end method

.method private loadMessageForViewRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 12

    const-string v6, "loadMessageForViewRemote"

    new-instance v0, Lcom/fsck/k9/MessagingController$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController$13;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/fsck/k9/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V
    .registers 28

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v20

    if-nez p5, :cond_29

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v5

    if-nez v5, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/4 v5, 0x1

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_3b

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_3b
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    if-eqz v14, :cond_cf

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_a2

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveOrCopyMessageSynchronous: source folder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", destination folder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCopy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    if-eqz p5, :cond_ff

    new-instance v11, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v11}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v11, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v11, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v11

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    :cond_cf
    :goto_cf
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v19, v10, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/MessagingController;->queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_e5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_e5} :catch_e7

    goto/16 :goto_28

    :catch_e7
    move-exception v5

    move-object/from16 v18, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error moving message"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_ff
    const/4 v5, 0x1

    :try_start_100
    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_114
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_130

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_114

    :cond_130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->unsuppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_100 .. :try_end_13b} :catch_e7

    goto :goto_cf
.end method

.method private processPendingAppend(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/16 v16, 0x0

    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v5, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v19, v20, v21

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_16f

    move-result v20

    if-eqz v20, :cond_2f

    if-eqz v16, :cond_29

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_29
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v12, v5}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_16f

    if-nez v11, :cond_59

    if-eqz v16, :cond_53

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_53
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto :goto_2e

    :cond_59
    :try_start_59
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v20

    if-nez v20, :cond_8b

    sget-object v20, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    :try_end_7d
    .catchall {:try_start_59 .. :try_end_7d} :catchall_16f

    move-result v20

    if-nez v20, :cond_8b

    if-eqz v16, :cond_85

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_85
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto :goto_2e

    :cond_8b
    :try_start_8b
    sget-object v20, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v20

    sget-object v21, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_16f

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_ab

    if-eqz v16, :cond_a5

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_a5
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto :goto_2e

    :cond_ab
    const/16 v17, 0x0

    :try_start_ad
    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    const-string v21, "K9LOCAL:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c5

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v17

    :cond_c5
    if-nez v17, :cond_1fb

    sget-object v20, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v20

    if-eqz v20, :cond_18e

    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Local message with uid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " has flag "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already set, checking for remote message with "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " same message id"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_187

    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Local message has flag "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already set, and there is a remote message with "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", assuming message was already copied and aborting this copy"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_154
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16e
    .catchall {:try_start_ad .. :try_end_16e} :catchall_16f

    goto :goto_154

    :catchall_16f
    move-exception v20

    if-eqz v16, :cond_175

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_175
    if-eqz v10, :cond_17a

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_17a
    throw v20

    :cond_17b
    if-eqz v16, :cond_180

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_180
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto/16 :goto_2e

    :cond_187
    :try_start_187
    const-string v20, "k9"

    const-string v21, "No remote message with message-id found, proceeding with append"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    new-instance v6, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v6}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v20, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x0

    move-object v0, v10

    move-object/from16 v1, v20

    move-object v2, v6

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/16 v21, 0x1

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1e0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_23a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e0

    :cond_1fb
    new-instance v6, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v6}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v20, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object v2, v6

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v20

    if-lez v20, :cond_246

    sget-object v20, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/16 v21, 0x1

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_23a
    .catchall {:try_start_187 .. :try_end_23a} :catchall_16f

    :cond_23a
    :goto_23a
    if-eqz v16, :cond_23f

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_23f
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto/16 :goto_2e

    :cond_246
    :try_start_246
    invoke-virtual {v6}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    new-instance v6, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v6}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v20, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x0

    move-object v0, v10

    move-object/from16 v1, v20

    move-object v2, v6

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/16 v21, 0x1

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_29b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2b6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29b

    :cond_2b6
    sget-object v20, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const-string v20, "EXPUNGE_IMMEDIATELY"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23a

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_2d2
    .catchall {:try_start_246 .. :try_end_2d2} :catchall_16f

    goto/16 :goto_23a
.end method

.method private processPendingCommands(Lcom/fsck/k9/Account;)V
    .registers 5

    const-string v0, "processPendingCommands"

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/MessagingController$10;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/MessagingController$10;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore;->getPendingCommands()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_44

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_24

    :cond_44
    const/4 v14, 0x0

    :try_start_45
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_49
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_290

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    move-object v14, v5

    sget-boolean v17, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v17, :cond_7b

    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Processing pending command \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\\."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aget-object v6, v8, v17

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_98
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_fa

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_45 .. :try_end_ab} :catchall_de
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_45 .. :try_end_ab} :catch_ac

    goto :goto_98

    :catch_ac
    move-exception v17

    move-object/from16 v13, v17

    :try_start_af
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not process command \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v13
    :try_end_de
    .catchall {:try_start_af .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v17

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2ab

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_e7

    :cond_fa
    :try_start_fa
    const-string v17, "com.fsck.k9.MessagingController.append"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_162

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingAppend(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    :cond_10f
    :goto_10f
    invoke-virtual {v12, v5}, Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    sget-boolean v17, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v17, :cond_137

    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Done processing pending command \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_fa .. :try_end_137} :catchall_1ef
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_fa .. :try_end_137} :catch_178

    :cond_137
    add-int/lit8 v15, v15, 0x1

    :try_start_139
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_141
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_49

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_161
    .catchall {:try_start_139 .. :try_end_161} :catchall_de
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_139 .. :try_end_161} :catch_ac

    goto :goto_141

    :cond_162
    :try_start_162
    const-string v17, "com.fsck.k9.MessagingController.setFlagBulk"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingSetFlag(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    :try_end_177
    .catchall {:try_start_162 .. :try_end_177} :catchall_1ef
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_162 .. :try_end_177} :catch_178

    goto :goto_10f

    :catch_178
    move-exception v17

    move-object/from16 v13, v17

    :try_start_17b
    invoke-virtual {v13}, Lcom/fsck/k9/mail/MessagingException;->isPermanentFailure()Z

    move-result v17

    if-eqz v17, :cond_28e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure of command \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' was permanent, removing command from queue"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    :try_end_1ad
    .catchall {:try_start_17b .. :try_end_1ad} :catchall_1ef

    add-int/lit8 v15, v15, 0x1

    :try_start_1af
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_49

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_1d7
    .catchall {:try_start_1af .. :try_end_1d7} :catchall_de
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1af .. :try_end_1d7} :catch_ac

    goto :goto_1b7

    :cond_1d8
    :try_start_1d8
    const-string v17, "com.fsck.k9.MessagingController.setFlag"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21b

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingSetFlagOld(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    :try_end_1ed
    .catchall {:try_start_1d8 .. :try_end_1ed} :catchall_1ef
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1d8 .. :try_end_1ed} :catch_178

    goto/16 :goto_10f

    :catchall_1ef
    move-exception v17

    add-int/lit8 v15, v15, 0x1

    :try_start_1f2
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1fa
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_28f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_21a
    .catchall {:try_start_1f2 .. :try_end_21a} :catchall_de
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1f2 .. :try_end_21a} :catch_ac

    goto :goto_1fa

    :cond_21b
    :try_start_21b
    const-string v17, "com.fsck.k9.MessagingController.markAllAsRead"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_232

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingMarkAllAsRead(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_10f

    :cond_232
    const-string v17, "com.fsck.k9.MessagingController.moveOrCopyBulk"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_249

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingMoveOrCopy(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_10f

    :cond_249
    const-string v17, "com.fsck.k9.MessagingController.moveOrCopy"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_260

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingMoveOrCopyOld(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_10f

    :cond_260
    const-string v17, "com.fsck.k9.MessagingController.emptyTrash"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_277

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingEmptyTrash(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_10f

    :cond_277
    const-string v17, "com.fsck.k9.MessagingController.expunge"

    move-object v0, v5

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10f

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->processPendingExpunge(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    :try_end_28c
    .catchall {:try_start_21b .. :try_end_28c} :catchall_1ef
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_21b .. :try_end_28c} :catch_178

    goto/16 :goto_10f

    :cond_28e
    :try_start_28e
    throw v13
    :try_end_28f
    .catchall {:try_start_28e .. :try_end_28f} :catchall_1ef

    :cond_28f
    :try_start_28f
    throw v17
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_de
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_28f .. :try_end_290} :catch_ac

    :cond_290
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_298
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_298

    :cond_2ab
    throw v17
.end method

.method private processPendingEmptyTrash(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    :try_start_12
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x0

    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    const-string v2, "EXPUNGE_IMMEDIATELY"

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_3e

    :cond_38
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_3d
    return-void

    :catchall_3e
    move-exception v2

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_44
    throw v2
.end method

.method private processPendingExpunge(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v5, "k9"

    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_2e

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPendingExpunge: folder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    :try_start_3c
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_80

    move-result v3

    if-nez v3, :cond_48

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_11

    :cond_48
    :try_start_48
    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_80

    if-eq v3, v4, :cond_5b

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_11

    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->expunge()V

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_7a

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPendingExpunge: complete for folder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_5b .. :try_end_7a} :catchall_80

    :cond_7a
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_11

    :catchall_80
    move-exception v3

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_86
    throw v3
.end method

.method private processPendingMarkAllAsRead(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v5, v17, v18

    const/4 v14, 0x0

    const/4 v10, 0x0

    :try_start_c
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object v10, v0

    sget-object v17, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v13

    move-object v4, v13

    array-length v9, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_3b
    if-ge v7, v9, :cond_92

    aget-object v12, v4, v7

    sget-object v17, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v17

    if-nez v17, :cond_8e

    sget-object v17, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/MessagingListener;

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_72} :catch_73

    goto :goto_5e

    :catch_73
    move-exception v17

    move-object/from16 v16, v17

    :try_start_76
    const-string v17, "k9"

    const-string v18, "Could not mark all server-side as read because store doesn\'t support operation"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_ba

    if-eqz v10, :cond_88

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_88
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_8d
    :goto_8d
    return-void

    :cond_8e
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3b

    :cond_92
    const/16 v17, 0x0

    :try_start_94
    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/MessagingListener;

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_b9
    .catchall {:try_start_94 .. :try_end_b9} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_94 .. :try_end_b9} :catch_73

    goto :goto_a2

    :catchall_ba
    move-exception v17

    if-eqz v10, :cond_c0

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_c0
    if-eqz v14, :cond_c5

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_c5
    throw v17

    :cond_c6
    :try_start_c6
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c6 .. :try_end_d0} :catch_73

    move-result v17

    if-eqz v17, :cond_de

    if-eqz v10, :cond_d8

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_d8
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_8d

    :cond_de
    :try_start_de
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_f3
    .catchall {:try_start_de .. :try_end_f3} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_de .. :try_end_f3} :catch_73

    move-result v17

    if-nez v17, :cond_101

    if-eqz v10, :cond_fb

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_fb
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_8d

    :cond_101
    :try_start_101
    sget-object v17, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v17

    sget-object v18, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_10f
    .catchall {:try_start_101 .. :try_end_10f} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_101 .. :try_end_10f} :catch_73

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_121

    if-eqz v10, :cond_11a

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_11a
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_8d

    :cond_121
    const/16 v17, 0x1

    :try_start_123
    move/from16 v0, v17

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v14

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_13c
    .catchall {:try_start_123 .. :try_end_13c} :catchall_ba
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_123 .. :try_end_13c} :catch_73

    if-eqz v10, :cond_141

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_141
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_8d
.end method

.method private processPendingMoveOrCopy(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v11, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v9, v11, v12

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_82

    move-result v11

    if-eqz v11, :cond_1c

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_16
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    iget-object v11, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v0, v11, v12

    iget-object v11, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v4, v11, v12

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v11, v12}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    :goto_3a
    iget-object v11, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v11, v11

    if-ge v2, v11, :cond_55

    iget-object v11, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v10, v11, v2

    const-string v11, "K9LOCAL:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_52

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_55
    const/4 v3, 0x0

    if-eqz v4, :cond_5c

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_5c
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v11

    if-nez v11, :cond_8e

    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processingPendingMoveOrCopy: remoteFolder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v11
    :try_end_82
    .catchall {:try_start_1c .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v11

    if-eqz v7, :cond_88

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_88
    if-eqz v6, :cond_8d

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_8d
    throw v11

    :cond_8e
    :try_start_8e
    sget-object v11, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v7, v11}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v11

    sget-object v12, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    if-eq v11, v12, :cond_bb

    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processingPendingMoveOrCopy: could not open remoteSrcFolder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " read/write"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v11

    :cond_bb
    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v11, :cond_f9

    const-string v11, "k9"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processingPendingMoveOrCopy: source folder = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " messages, destination folder = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isCopy = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    if-nez v3, :cond_16d

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16d

    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v11, :cond_110

    const-string v11, "k9"

    const-string v12, "processingPendingMoveOrCopy doing special case for deleting message"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    move-object v1, v0

    const-string v11, "-NONE-"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11a

    const/4 v1, 0x0

    :cond_11a
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, p0, v1}, Lcom/fsck/k9/mail/Folder;->delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V

    :goto_126
    if-nez v3, :cond_161

    const-string v11, "EXPUNGE_IMMEDIATELY"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_161

    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v11, :cond_15e

    const-string v11, "k9"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processingPendingMoveOrCopy expunging folder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_161
    .catchall {:try_start_8e .. :try_end_161} :catchall_82

    :cond_161
    if-eqz v7, :cond_166

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_166
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_1b

    :cond_16d
    :try_start_16d
    invoke-virtual {v8, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v6

    if-eqz v3, :cond_180

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, p0, v6}, Lcom/fsck/k9/mail/Folder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto :goto_126

    :cond_180
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, p0, v6}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    :try_end_18c
    .catchall {:try_start_16d .. :try_end_18c} :catchall_82

    goto :goto_126
.end method

.method private processPendingMoveOrCopyOld(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v9, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v7, v9, v10

    iget-object v9, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v8, v9, v10

    iget-object v9, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v0, v9, v10

    iget-object v9, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v2, v9, v10

    const/4 v1, 0x0

    if-eqz v2, :cond_1b

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1b
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    :goto_25
    return-void

    :cond_26
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v9

    if-nez v9, :cond_5e

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processPendingMoveOrCopyOld: remoteFolder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v9

    :cond_5e
    sget-object v9, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v5, v9}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v9

    sget-object v10, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    if-eq v9, v10, :cond_8b

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processPendingMoveOrCopyOld: could not open remoteSrcFolder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " read/write"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v9

    :cond_8b
    const/4 v4, 0x0

    const-string v9, "K9LOCAL:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_98

    invoke-virtual {v5, v8}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v4

    :cond_98
    if-nez v4, :cond_ba

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processPendingMoveOrCopyOld: remoteMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v9

    :cond_ba
    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_f4

    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processPendingMoveOrCopyOld: source folder = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", destination folder = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isCopy = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    if-nez v1, :cond_117

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_10b

    const-string v9, "k9"

    const-string v10, "processPendingMoveOrCopyOld doing special case for deleting message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/Message;->delete(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_25

    :cond_117
    sget-object v9, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v9}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v9

    sget-object v10, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    if-eq v9, v10, :cond_144

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processPendingMoveOrCopyOld: could not open remoteDestFolder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " read/write"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v9

    :cond_144
    if-eqz v1, :cond_157

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/fsck/k9/mail/Message;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v5, v9, v3}, Lcom/fsck/k9/mail/Folder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    :goto_14f
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_25

    :cond_157
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/fsck/k9/mail/Message;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v5, v9, v3}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto :goto_14f
.end method

.method private processPendingSetFlag(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v8, v9

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v8, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v8, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    :try_start_30
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_95

    move-result v8

    if-nez v8, :cond_3c

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_10

    :cond_3c
    :try_start_3c
    sget-object v8, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v5, v8}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v8

    sget-object v9, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_95

    if-eq v8, v9, :cond_4f

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_10

    :cond_4f
    :try_start_4f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    :goto_55
    iget-object v8, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_70

    iget-object v8, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v7, v8, v2

    const-string v8, "K9LOCAL:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6d

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_70
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_73
    .catchall {:try_start_4f .. :try_end_73} :catchall_95

    move-result v8

    if-nez v8, :cond_7c

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_10

    :cond_7c
    const/4 v8, 0x0

    :try_start_7d
    new-array v8, v8, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/fsck/k9/mail/Flag;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v5, p0, v8, v4}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_95

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_10

    :catchall_95
    move-exception v8

    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_9b
    throw v8
.end method

.method private processPendingSetFlagOld(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v7, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v1, v7, v8

    iget-object v7, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v6, v7, v8

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_3b

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPendingSetFlagOld: folder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v7, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v7, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_4e
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_9a

    move-result v7

    if-nez v7, :cond_68

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_14

    :cond_68
    :try_start_68
    sget-object v7, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_9a

    if-eq v7, v8, :cond_7b

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_14

    :cond_7b
    const/4 v4, 0x0

    :try_start_7c
    const-string v7, "K9LOCAL:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_9a

    move-result-object v4

    :cond_88
    if-nez v4, :cond_90

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_14

    :cond_90
    :try_start_90
    invoke-virtual {v4, v0, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_9a

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_14

    :catchall_9a
    move-exception v7

    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_a0
    throw v7
.end method

.method private put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    .registers 10

    iget-object v1, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    .registers 10

    iget-object v1, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fsck/k9/MessagingController$Command;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/MessagingListener;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    const/16 v3, 0xa

    const/4 v1, 0x0

    move v4, v3

    :goto_4
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_23

    :try_start_8
    new-instance v0, Lcom/fsck/k9/MessagingController$Command;

    invoke-direct {v0, p0}, Lcom/fsck/k9/MessagingController$Command;-><init>(Lcom/fsck/k9/MessagingController;)V

    iput-object p3, v0, Lcom/fsck/k9/MessagingController$Command;->listener:Lcom/fsck/k9/MessagingListener;

    iput-object p4, v0, Lcom/fsck/k9/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    iput-object p2, v0, Lcom/fsck/k9/MessagingController$Command;->description:Ljava/lang/String;

    iput-boolean p5, v0, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v5

    move-object v2, v5

    const-wide/16 v5, 0xc8

    :try_start_1d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_29

    :goto_20
    move-object v1, v2

    move v4, v3

    goto :goto_4

    :cond_23
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_29
    move-exception v5

    goto :goto_20
.end method

.method private queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueExpunge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/MessagingController$12;

    invoke-direct {v2, p0, p2, p1}, Lcom/fsck/k9/MessagingController$12;-><init>(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v3, "com.fsck.k9.MessagingController.moveOrCopyBulk"

    iput-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    array-length v3, p5

    add-int/lit8 v2, v3, 0x3

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object p3, v3, v4

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v1, 0x0

    :goto_2f
    array-length v3, p5

    if-ge v1, v3, :cond_3d

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v5, p5, v1

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3d
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    goto :goto_a
.end method

.method private queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/store/LocalStore;->addPendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v2

    move-object v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to enqueue pending command"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueSetFlag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v0, Lcom/fsck/k9/MessagingController$11;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/MessagingController$11;-><init>(Lcom/fsck/k9/MessagingController;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v7, v8, v0}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setLocalUnreadCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    move v1, v0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessageCount()I

    move-result v1

    goto :goto_b
.end method

.method private suppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 7

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_d
    move v5, v6

    :goto_e
    return v5

    :cond_f
    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5, v7}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const/4 v4, 0x1

    :cond_1d
    const/4 v5, 0x3

    new-array v0, v5, [Lcom/fsck/k9/mail/Flag;

    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v5, v0, v6

    sget-object v5, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    aput-object v5, v0, v7

    const/4 v5, 0x2

    sget-object v6, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    aput-object v6, v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v3, :cond_48

    aget-object v1, v0, v2

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-eq v5, v6, :cond_45

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {p1, v1, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const/4 v4, 0x1

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_48
    move v5, v4

    goto :goto_e
.end method

.method private unsuppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/MessagingController;->unsuppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private unsuppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method


# virtual methods
.method public addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v9, 0x1

    const/4 v11, 0x0

    sget-boolean v8, Lcom/fsck/k9/K9;->ENABLE_ERROR_FOLDER:Z

    if-nez v8, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v8, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v11, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz p3, :cond_17

    :try_start_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_7b

    move-result v8

    if-ge v8, v9, :cond_1d

    :cond_17
    sget-object v8, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v8, 0x1

    new-array v4, v8, [Lcom/fsck/k9/mail/Message;

    new-instance v3, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v3}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    new-instance v8, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-direct {v8, p3}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    sget-object v8, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v3, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V

    new-instance v8, Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v9

    const-string v10, "K9mail internal"

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    const/4 v8, 0x0

    aput-object v3, v4, v8

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    const-wide/32 v8, 0xdbba0

    sub-long v8, v6, v8

    invoke-virtual {v1, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteMessagesOlderThan(J)V
    :try_end_75
    .catchall {:try_start_1d .. :try_end_75} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_75} :catch_7b

    sget-object v8, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :catch_7b
    move-exception v8

    move-object v0, v8

    :try_start_7d
    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save error message to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_a0

    sget-object v8, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_6

    :catchall_a0
    move-exception v8

    sget-object v9, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v8
.end method

.method public addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    .registers 23

    sget-boolean v17, Lcom/fsck/k9/K9;->ENABLE_ERROR_FOLDER:Z

    if-nez v17, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v17, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v17

    if-eqz v17, :cond_4

    if-nez p2, :cond_1b

    sget-object v17, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object v11, v0

    new-instance v10, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v10}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v15, Ljava/io/PrintStream;

    invoke-direct {v15, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v15}, Ljava/io/PrintStream;->close()V

    new-instance v17, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    sget-object v17, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/16 v18, 0x1

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v12}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    invoke-virtual {v10, v12}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V

    new-instance v17, Lcom/fsck/k9/mail/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v18

    const-string v19, "K9mail internal"

    invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    const/16 v17, 0x0

    aput-object v10, v11, v17

    invoke-virtual {v8, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    const-wide/32 v17, 0xdbba0

    sub-long v17, v13, v17

    move-object v0, v8

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteMessagesOlderThan(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v18

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_fe
    .catchall {:try_start_1b .. :try_end_fe} :catchall_135
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_fe} :catch_ff

    goto :goto_e0

    :catch_ff
    move-exception v17

    move-object/from16 v6, v17

    :try_start_102
    const-string v17, "k9"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not save error message to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_102 .. :try_end_123} :catchall_135

    sget-object v17, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_4

    :cond_12c
    sget-object v17, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_4

    :catchall_135
    move-exception v17

    sget-object v18, Lcom/fsck/k9/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v17
.end method

.method public addListener(Lcom/fsck/k9/MessagingListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/fsck/k9/MessagingController;->refreshListener(Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method public checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/MessagingListener;)V
    .registers 21

    const/4 v14, 0x0

    if-eqz p4, :cond_1f

    const-string v4, "power"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "K9"

    invoke-virtual {v13, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v14, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1f
    move-object v10, v14

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_28
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/MessagingListener;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_28

    :cond_3d
    const-string v11, "checkMail"

    new-instance v4, Lcom/fsck/k9/MessagingController$25;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/MessagingController$25;-><init>(Lcom/fsck/k9/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;Landroid/os/PowerManager$WakeLock;)V

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p5

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/MessagingController$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/MessagingController$27;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllPending(Lcom/fsck/k9/Account;)V
    .registers 7

    const-string v4, "k9"

    :try_start_2
    const-string v2, "k9"

    const-string v3, "Clearing pending commands!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommands()V
    :try_end_18
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v2

    move-object v1, v2

    const-string v2, "k9"

    const-string v2, "Unable to clear pending command"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/MessagingController$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/MessagingController$26;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z
    .registers 15

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K9LOCAL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v7, "copyMessage"

    const/4 v8, 0x0

    new-instance v0, Lcom/fsck/k9/MessagingController$20;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/MessagingController$20;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v7, v8, v0}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public copyMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)I
    .registers 16

    const/4 v9, 0x0

    move-object v6, p3

    array-length v8, v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_18

    aget-object v3, v6, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    move-result v0

    if-eqz v0, :cond_15

    add-int/lit8 v9, v9, 0x1

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_18
    return v9
.end method

.method public deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
    .registers 15

    move-object v6, p3

    array-length v8, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_d

    aget-object v9, v6, v7

    invoke-direct {p0, p1, p2, v9}, Lcom/fsck/k9/MessagingController;->suppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    const-string v6, "deleteMessages"

    const/4 v7, 0x0

    new-instance v0, Lcom/fsck/k9/MessagingController$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController$22;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v6, v7, v0}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    const-string v0, "emptyTrash"

    new-instance v1, Lcom/fsck/k9/MessagingController$23;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/MessagingController$23;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public expunge(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 7

    const-string v0, "expunge"

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/MessagingController$21;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/MessagingController$21;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAccountUnreadCount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 7

    new-instance v0, Lcom/fsck/k9/MessagingController$17;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/fsck/k9/MessagingController$17;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;Lcom/fsck/k9/MessagingListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountUnreadCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCheckMailListener()Lcom/fsck/k9/MessagingListener;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    return-object v0
.end method

.method public getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 7

    new-instance v0, Lcom/fsck/k9/MessagingController$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController$18;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderUnread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getListeners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/MessagingListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getPushers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fsck/k9/mail/Pusher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSortType()Lcom/fsck/k9/MessagingController$SORT_TYPE;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    return-object v0
.end method

.method public isBusy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/MessagingController;->mBusy:Z

    return v0
.end method

.method public isCopyCapable(Lcom/fsck/k9/Account;)Z
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z
    :try_end_1e
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1e} :catch_25

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_22
    return v3

    :cond_23
    move v3, v5

    goto :goto_22

    :catch_25
    move-exception v3

    move-object v1, v3

    const-string v3, "k9"

    const-string v4, "Exception while ascertaining copy capability"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    goto :goto_22
.end method

.method public isCopyCapable(Lcom/fsck/k9/mail/Message;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method public isMoveCapable(Lcom/fsck/k9/Account;)Z
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z
    :try_end_1e
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1e} :catch_25

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_22
    return v3

    :cond_23
    move v3, v5

    goto :goto_22

    :catch_25
    move-exception v3

    move-object v1, v3

    const-string v3, "k9"

    const-string v4, "Exception while ascertaining move capability"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    goto :goto_22
.end method

.method public isMoveCapable(Lcom/fsck/k9/mail/Message;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K9LOCAL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z
    .registers 4

    iget-object v1, p0, Lcom/fsck/k9/MessagingController;->sortAscending:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/fsck/k9/MessagingController$SORT_TYPE;->isDefaultAscending()Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_e
.end method

.method public listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/MessagingController$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/fsck/k9/MessagingController$1;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public listLocalMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/MessagingController$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController$3;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public listLocalMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 12

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v2, p1, p2}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    if-eqz p3, :cond_27

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    invoke-virtual {p3, p1, p2}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_27
    const/4 v3, 0x0

    new-instance v5, Lcom/fsck/k9/MessagingController$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController$4;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    :try_start_2d
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    sget-object v6, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/fsck/k9/mail/Folder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "k9"

    const-string v7, "Got ack that callbackRunner finished"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v2, p1, p2}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_2d .. :try_end_66} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_66} :catch_67

    goto :goto_57

    :catch_67
    move-exception v6

    move-object v0, v6

    :try_start_69
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, p2, v6}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_85

    goto :goto_71

    :catchall_85
    move-exception v6

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_8b
    throw v6

    :cond_8c
    if-eqz p3, :cond_9b

    :try_start_8e
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    invoke-virtual {p3, p1, p2}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9b} :catch_67

    :cond_9b
    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_a0
    :goto_a0
    return-void

    :cond_a1
    if-eqz p3, :cond_b4

    :try_start_a3
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, p1, p2, v6}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_b7
    .catchall {:try_start_a3 .. :try_end_b7} :catchall_85

    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_a0
.end method

.method public loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Lcom/fsck/k9/MessagingListener;)V
    .registers 16

    const/4 v7, 0x0

    :try_start_1
    invoke-interface {p3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/MessagingListener;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingListener;->loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V
    :try_end_23
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_f

    :catch_24
    move-exception v1

    :cond_25
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/MessagingListener;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingListener;->loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V

    goto :goto_2d

    :cond_42
    if-eqz p5, :cond_4d

    const/4 v6, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_4a
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/MessagingListener;->loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V

    :cond_4d
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_55
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V

    goto :goto_55

    :cond_65
    if-eqz p5, :cond_6a

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V
    :try_end_6a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4a .. :try_end_6a} :catch_24

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    if-eqz p5, :cond_76

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/MessagingListener;->loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V

    :cond_76
    const-string v9, "loadAttachment"

    new-instance v1, Lcom/fsck/k9/MessagingController$15;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/MessagingController$15;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v9, p5, v1}, Lcom/fsck/k9/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_6a
.end method

.method public loadMessageForView(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 14

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v7, p1, p2, p3}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewStarted(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    if-eqz p4, :cond_27

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p4, p1, p2, p3}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewStarted(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iget-object v8, p0, Lcom/fsck/k9/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/MessagingController$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController$14;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadMoreMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getVisibleLimit()I

    move-result v3

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setVisibleLimit(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    :try_end_1f
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v3

    move-object v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set visible limit on folder"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public markAllMessagesRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 8

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marking all messages in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v2, "com.fsck.k9.MessagingController.markAllAsRead"

    iput-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    invoke-direct {p0, p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method public messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    const-string v2, ", folder "

    const-string v10, "k9"

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_32

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got new pushed email messages for account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push messageArrived of account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v0, Lcom/fsck/k9/MessagingController$28;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/MessagingController$28;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v8, v9, v0}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    :try_start_6b
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_7a

    :goto_6e
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_79

    const-string v0, "k9"

    const-string v0, "MessagingController.messagesArrivedLatch released"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-void

    :catch_7a
    move-exception v7

    const-string v0, "k9"

    const-string v0, "Interrupted while awaiting latch release"

    invoke-static {v10, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e
.end method

.method public messagesPendingSend(Lcom/fsck/k9/Account;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_3a

    move-result v4

    if-nez v4, :cond_21

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_1f
    move v4, v6

    :cond_20
    :goto_20
    return v4

    :cond_21
    :try_start_21
    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_3a

    move-result v2

    if-lez v2, :cond_33

    const/4 v4, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_20

    :cond_33
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_38
    :goto_38
    move v4, v6

    goto :goto_20

    :catch_3a
    move-exception v4

    move-object v0, v4

    :try_start_3c
    const-string v4, "k9"

    const-string v5, "Exception while checking for unsent messages"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_49

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_38

    :catchall_49
    move-exception v4

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_4f
    throw v4
.end method

.method public modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z
    .registers 4

    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq p1, v0, :cond_20

    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_20

    :cond_c
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_18

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_20

    :cond_18
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_22

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z
    .registers 15

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K9LOCAL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController;->suppressMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    const-string v7, "moveMessage"

    const/4 v8, 0x0

    new-instance v0, Lcom/fsck/k9/MessagingController$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/MessagingController$19;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v7, v8, v0}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public moveMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)I
    .registers 16

    const/4 v9, 0x0

    move-object v6, p3

    array-length v8, v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_18

    aget-object v3, v6, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    move-result v0

    if-eqz v0, :cond_15

    add-int/lit8 v9, v9, 0x1

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_18
    return v9
.end method

.method public notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;I)V
    .registers 24

    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/Account;->getUnreadMessageCount(Landroid/content/Context;Landroid/app/Application;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_134

    move-result v15

    :goto_11
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_3f

    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "notifyAccount Account "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", newMailCount = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v8

    if-eqz v8, :cond_118

    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    if-lez p3, :cond_14a

    if-lez v15, :cond_14a

    const v16, 0x7f080069

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/app/Notification;

    const v16, 0x7f02005d

    const v17, 0x7f080067

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v11

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput v15, v11, Landroid/app/Notification;->number:I

    invoke-static/range {p1 .. p2}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v6

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    const v16, 0x7f080067

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getRingtone()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d2

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->isRing()Z

    move-result v16

    if-nez v16, :cond_145

    :cond_d2
    const/16 v16, 0x0

    :goto_d4
    move-object/from16 v0, v16

    move-object v1, v11

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->isVibrate()Z

    move-result v16

    if-eqz v16, :cond_eb

    move-object v0, v11

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_eb
    move-object v0, v11

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->flags:I

    const v16, -0xff01

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    const/16 v16, 0x1f4

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v16

    move-object v0, v12

    move/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_118
    :goto_118
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_120
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_157

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/MessagingListener;

    move-object v0, v9

    move-object/from16 v1, p2

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->accountStatusChanged(Lcom/fsck/k9/Account;I)V

    goto :goto_120

    :catch_134
    move-exception v16

    move-object/from16 v5, v16

    const-string v16, "k9"

    const-string v17, "Unable to get unread message count"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    :cond_145
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_d4

    :cond_14a
    if-nez v15, :cond_118

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_118

    :cond_157
    return-void
.end method

.method public refreshListener(Lcom/fsck/k9/MessagingListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->memorizingListener:Lcom/fsck/k9/MessagingController$MemorizingListener;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->refreshOther(Lcom/fsck/k9/MessagingListener;)V

    :cond_b
    return-void
.end method

.method public removeListener(Lcom/fsck/k9/MessagingListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetVisibleLimits([Lcom/fsck/k9/Account;)V
    .registers 10

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_2a

    aget-object v0, v1, v3

    :try_start_7
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore;->resetVisibleLimits(I)V
    :try_end_1a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_1a} :catch_1d

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1d
    move-exception v6

    move-object v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v6, "k9"

    const-string v7, "Unable to reset visible limits"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method public run()V
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "Foreground"

    const-string v11, "Background"

    const-string v10, "k9"

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iget-object v5, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/MessagingController$Command;

    if-eqz v0, :cond_cd

    iget-object v1, v0, Lcom/fsck/k9/MessagingController$Command;->description:Ljava/lang/String;

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_55

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-eqz v7, :cond_d1

    const-string v7, "Foreground"

    move-object v7, v12

    :goto_32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " command \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/fsck/k9/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/fsck/k9/MessagingController$Command;->sequence:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/fsck/k9/MessagingController;->mBusy:Z

    iget-object v5, v0, Lcom/fsck/k9/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_8c

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, v0, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-eqz v7, :cond_d6

    const-string v7, "Foreground"

    move-object v7, v12

    :goto_6f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Command \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/fsck/k9/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' completed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/MessagingListener;

    iget-object v5, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    if-lez v5, :cond_da

    move v5, v9

    :goto_a9
    invoke-virtual {v4, v5}, Lcom/fsck/k9/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ac} :catch_ad

    goto :goto_94

    :catch_ad
    move-exception v5

    move-object v2, v5

    const-string v5, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error running command \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cd
    :goto_cd
    iput-boolean v8, p0, Lcom/fsck/k9/MessagingController;->mBusy:Z

    goto/16 :goto_d

    :cond_d1
    :try_start_d1
    const-string v7, "Background"

    move-object v7, v11

    goto/16 :goto_32

    :cond_d6
    const-string v7, "Background"

    move-object v7, v11

    goto :goto_6f

    :cond_da
    move v5, v8

    goto :goto_a9

    :cond_dc
    iget-object v5, v0, Lcom/fsck/k9/MessagingController$Command;->listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v5, :cond_cd

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lcom/fsck/k9/MessagingController$Command;->listener:Lcom/fsck/k9/MessagingListener;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cd

    iget-object v5, v0, Lcom/fsck/k9/MessagingController$Command;->listener:Lcom/fsck/k9/MessagingListener;

    iget-object v6, p0, Lcom/fsck/k9/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-lez v6, :cond_fb

    move v6, v9

    :goto_f7
    invoke-virtual {v5, v6}, Lcom/fsck/k9/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_fa} :catch_ad

    goto :goto_cd

    :cond_fb
    move v6, v8

    goto :goto_f7
.end method

.method public saveDraft(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V
    .registers 11

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v5, "com.fsck.k9.MessagingController.append"

    iput-object v5, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    invoke-direct {p0, p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_52
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_52} :catch_53

    :goto_52
    return-void

    :catch_53
    move-exception v5

    move-object v1, v5

    const-string v5, "k9"

    const-string v6, "Unable to save message as draft."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto :goto_52
.end method

.method public searchLocalMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 6

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/MessagingController$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/fsck/k9/MessagingController$5;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/MessagingListener;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public sendAlternate(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V
    .registers 8

    const-string v3, ":"

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_48

    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to load message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for sendAlternate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/MessagingController$24;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/MessagingController$24;-><init>(Lcom/fsck/k9/MessagingController;Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/fsck/k9/MessagingController;->loadMessageForView(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method public sendMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
    .registers 11

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/fsck/k9/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v5

    move-object v0, v5

    invoke-virtual {p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/MessagingListener;

    goto :goto_42

    :cond_4f
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/fsck/k9/MessagingController$16;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/MessagingController$16;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V
    .registers 39

    const/16 v16, 0x0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_51

    move-result v30

    if-nez v30, :cond_36

    if-eqz v16, :cond_27

    :try_start_24
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v9

    const-string v30, "k9"

    const-string v31, "Exception while closing folder"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_36
    :try_start_36
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_76

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_50} :catch_51

    goto :goto_3e

    :catch_51
    move-exception v30

    move-object/from16 v9, v30

    :try_start_54
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_559

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_6f

    goto :goto_5c

    :catchall_6f
    move-exception v30

    if-eqz v16, :cond_75

    :try_start_72
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_577

    :cond_75
    :goto_75
    throw v30

    :cond_76
    :try_start_76
    sget-object v30, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v17

    const/4 v5, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_99
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v30

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_99

    :cond_b6
    new-instance v10, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v10}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v30, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v30, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_113

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Scanning folder \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\' ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v16

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") for messages to send"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/mail/Transport;->getInstance(Ljava/lang/String;)Lcom/fsck/k9/mail/Transport;

    move-result-object v29

    move-object/from16 v6, v17

    array-length v15, v6

    const/4 v12, 0x0

    move v13, v12

    :goto_120
    if-ge v13, v15, :cond_41a

    aget-object v21, v6, v13

    sget-object v30, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v30

    if-eqz v30, :cond_141

    sget-object v30, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    :cond_13d
    :goto_13d
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_120

    :cond_141
    sget-object v30, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v30

    if-eqz v30, :cond_16e

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_13d

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Skipping sending FLAGGED message "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catchall {:try_start_76 .. :try_end_16d} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_16d} :catch_51

    goto :goto_13d

    :cond_16e
    :try_start_16e
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v30, 0x0

    move-object v0, v8

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v25, :cond_191

    move-object/from16 v8, v25

    :cond_191
    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_1bf

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Send count for message "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bf
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v30

    sget v31, Lcom/fsck/k9/K9;->MAX_SEND_ATTEMPTS:I

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1fd

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Send count for message "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " has exceeded maximum attempt threshold, flagging"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v30, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const/4 v5, 0x1

    goto/16 :goto_13d

    :cond_1fd
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v21, v30, v31

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object v2, v10

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    :try_end_215
    .catchall {:try_start_16e .. :try_end_215} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_215} :catch_31a

    :try_start_215
    sget-object v30, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_242

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Sending message with UID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_242
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Transport;->sendMessage(Lcom/fsck/k9/mail/Message;)V

    sget-object v30, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    sget-object v30, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_26d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_353

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v30

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_289
    .catchall {:try_start_215 .. :try_end_289} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_289} :catch_28a

    goto :goto_26d

    :catch_28a
    move-exception v30

    move-object/from16 v9, v30

    :try_start_28d
    move-object v0, v9

    instance-of v0, v0, Lcom/fsck/k9/mail/MessagingException;

    move/from16 v30, v0

    if-eqz v30, :cond_2d7

    move-object v0, v9

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/MessagingException;->isPermanentFailure()Z

    move-result v30

    if-nez v30, :cond_2d7

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v22

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_2d7

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Decremented send count for message "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "; no possible send"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d7
    sget-object v30, Lcom/fsck/k9/mail/Flag;->X_SEND_FAILED:Lcom/fsck/k9/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    const-string v30, "k9"

    const-string v31, "Failed to send message"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2f8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_406

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_319
    .catchall {:try_start_28d .. :try_end_319} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_319} :catch_31a

    goto :goto_2f8

    :catch_31a
    move-exception v30

    move-object/from16 v9, v30

    :try_start_31d
    const-string v30, "k9"

    const-string v31, "Failed to fetch message for sending"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_331
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_410

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_352
    .catchall {:try_start_31d .. :try_end_352} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_352} :catch_51

    goto :goto_331

    :cond_353
    :try_start_353
    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_387

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Moving sent message to folder \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\' ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_387
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v21, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_3d0

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Moved sent message to folder \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\' ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d0
    new-instance v7, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v7}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v30, "com.fsck.k9.MessagingController.append"

    move-object/from16 v0, v30

    move-object v1, v7

    iput-object v0, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    move-object v1, v7

    iput-object v0, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_404
    .catchall {:try_start_353 .. :try_end_404} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_353 .. :try_end_404} :catch_28a

    goto/16 :goto_13d

    :cond_406
    :try_start_406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_40e
    .catchall {:try_start_406 .. :try_end_40e} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_406 .. :try_end_40e} :catch_31a

    goto/16 :goto_13d

    :cond_410
    :try_start_410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto/16 :goto_13d

    :cond_41a
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I

    move-result v30

    if-nez v30, :cond_429

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->delete(Z)V

    :cond_429
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_431
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_444

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/MessagingListener;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    goto :goto_431

    :cond_444
    if-eqz v5, :cond_543

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v30, v0

    const v31, 0x7f08007b

    invoke-virtual/range {v30 .. v31}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v31, v0

    const v32, 0x7f08007d

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sget-object v35, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;

    aput-object v35, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v30, v0

    const-string v31, "notification"

    invoke-virtual/range {v30 .. v31}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/NotificationManager;

    new-instance v23, Landroid/app/Notification;

    const v30, 0x7f02005d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v31, v0

    const v32, 0x7f08007b

    invoke-virtual/range {v31 .. v32}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v11

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v31, v0

    const v32, 0x7f08007b

    invoke-virtual/range {v31 .. v32}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v32, v0

    const v33, 0x7f08007c

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    sget-object v36, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;

    aput-object v36, v34, v35

    invoke-virtual/range {v32 .. v34}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v30, v0

    or-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I

    const/high16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    const/16 v30, 0x64

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    const/16 v30, 0x64

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    const/16 v30, -0x3e8

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_543
    .catchall {:try_start_410 .. :try_end_543} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_410 .. :try_end_543} :catch_51

    :cond_543
    if-eqz v16, :cond_27

    :try_start_545
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_548
    .catch Ljava/lang/Exception; {:try_start_545 .. :try_end_548} :catch_54a

    goto/16 :goto_27

    :catch_54a
    move-exception v9

    const-string v30, "k9"

    const-string v31, "Exception while closing folder"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    :cond_559
    :try_start_559
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_561
    .catchall {:try_start_559 .. :try_end_561} :catchall_6f

    if-eqz v16, :cond_27

    :try_start_563
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_566
    .catch Ljava/lang/Exception; {:try_start_563 .. :try_end_566} :catch_568

    goto/16 :goto_27

    :catch_568
    move-exception v9

    const-string v30, "k9"

    const-string v31, "Exception while closing folder"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    :catch_577
    move-exception v9

    const-string v31, "k9"

    const-string v32, "Exception while closing folder"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_75
.end method

.method public setCheckMailListener(Lcom/fsck/k9/MessagingListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/MessagingController;->removeListener(Lcom/fsck/k9/MessagingListener;)V

    :cond_9
    iput-object p1, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->checkMailListener:Lcom/fsck/k9/MessagingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V

    :cond_14
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Flag;Z)V
    .registers 13

    array-length v0, p3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_4
    array-length v0, p3

    if-ge v6, v0, :cond_12

    aget-object v0, p3, v6

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_12
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V
    .registers 24

    const/4 v13, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v13

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v13, v4}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v16, v0

    const/4 v10, 0x0

    :goto_24
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    if-ge v10, v4, :cond_5b

    aget-object v17, p3, v10

    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p4

    move-object v1, v4

    if-ne v0, v1, :cond_4f

    if-nez p5, :cond_4f

    if-eqz v17, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v4

    aput-object v4, v16, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_5b
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_72
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v4

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_9c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_8b} :catch_8c

    goto :goto_72

    :catch_8c
    move-exception v4

    move-object v15, v4

    :try_start_8e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v4

    if-eqz v13, :cond_a2

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_a2
    throw v4

    :cond_a3
    :try_start_a3
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_9c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_a3 .. :try_end_ad} :catch_8c

    move-result v4

    if-eqz v4, :cond_b6

    if-eqz v13, :cond_b5

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_b5
    :goto_b5
    return-void

    :cond_b6
    :try_start_b6
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_9c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_b6 .. :try_end_cc} :catch_8c

    if-eqz v13, :cond_b5

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Folder;->close()V

    goto :goto_b5
.end method

.method public setSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;Z)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/MessagingController;->sortAscending:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSortType(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/MessagingController;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    return-void
.end method

.method public setupPushing(Lcom/fsck/k9/Account;)Z
    .registers 27

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/Pusher;

    if-eqz v18, :cond_15

    invoke-interface/range {v18 .. v18}, Lcom/fsck/k9/mail/Pusher;->stop()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;

    move-result-object v6

    array-length v12, v6

    const/4 v11, 0x0

    :goto_40
    if-ge v11, v12, :cond_132

    aget-object v10, v6, v11

    sget-object v22, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->refresh(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v8

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v22

    if-eqz v22, :cond_a1

    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_9e

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not pushing folder "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " which is in display class "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " while account is in display mode "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    :cond_a1
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v22

    if-eqz v22, :cond_f8

    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_9e

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not pushing folder "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " which is in push mode "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " while account is in push mode "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e5} :catch_e6

    goto :goto_9e

    :catch_e6
    move-exception v22

    move-object/from16 v7, v22

    const-string v22, "k9"

    const-string v23, "Got exception while setting up pushing"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v22, 0x0

    :goto_f7
    return v22

    :cond_f8
    :try_start_f8
    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_126

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Starting pusher for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_126
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9e

    :cond_132
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_221

    new-instance v20, Lcom/fsck/k9/MessagingControllerPushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingControllerPushReceiver;-><init>(Landroid/app/Application;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingController;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getMaxPushFolders()I

    move-result v14

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    move v1, v14

    if-le v0, v1, :cond_1a3

    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_199

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Count of folders to push for account "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", greater than limit of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", truncating"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_199
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    move v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_1a2} :catch_e6

    move-result-object v15

    :cond_1a3
    :try_start_1a3
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z

    move-result v22

    if-nez v22, :cond_1e1

    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_1dd

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Account "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not push capable, skipping"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1dd
    const/16 v22, 0x0

    goto/16 :goto_f7

    :cond_1e1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;

    move-result-object v19

    const/16 v16, 0x0

    if-eqz v19, :cond_1ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/mail/Pusher;

    :cond_1ff
    if-eqz v16, :cond_207

    move-object/from16 v19, v16

    :goto_203
    const/16 v22, 0x1

    goto/16 :goto_f7

    :cond_207
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Pusher;->start(Ljava/util/List;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_20d} :catch_20e

    goto :goto_203

    :catch_20e
    move-exception v22

    move-object/from16 v7, v22

    :try_start_211
    const-string v22, "k9"

    const-string v23, "Could not get remote store"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v22, 0x0

    goto/16 :goto_f7

    :cond_221
    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_241

    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No folders are configured for pushing in account "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_241} :catch_e6

    :cond_241
    const/16 v22, 0x0

    goto/16 :goto_f7
.end method

.method public stopAllPushing()V
    .registers 5

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "k9"

    const-string v3, "Stopping all pushers"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/fsck/k9/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Pusher;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1}, Lcom/fsck/k9/mail/Pusher;->stop()V

    goto :goto_15

    :cond_28
    return-void
.end method

.method public synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 6

    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/fsck/k9/MessagingController$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fsck/k9/MessagingController$6;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 40

    const/4 v7, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_4b

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Synchronizing folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_53
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_53

    :cond_69
    if-eqz p3, :cond_81

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_81
    const/4 v12, 0x0

    :try_start_82
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_a2

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SYNC: About to process pending commands for account "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_82 .. :try_end_a2} :catchall_208
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a2} :catch_1c5

    :cond_a2
    :try_start_a2
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_208
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_109

    :goto_a5
    :try_start_a5
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_c4

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SYNC: About to get local folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v20

    check-cast v20, Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v32

    move-object/from16 v8, v32

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v19

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v19

    move-object v0, v11

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_f3
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_11b

    aget-object v23, v11, v14

    invoke-virtual/range {v23 .. v23}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_f3

    :catch_109
    move-exception v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v5, "k9"

    const-string v6, "Failure processing command, but allow message sync attempt"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v13

    goto :goto_a5

    :cond_11b
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_13a

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYNC: About to get remote store for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v29

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_166

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYNC: About to get remote folder "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_166
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_195

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_195

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25b

    :cond_195
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_25b

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v7, v5}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v5

    if-nez v5, :cond_25b

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1ab
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_214

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_1c4
    .catchall {:try_start_a5 .. :try_end_1c4} :catchall_208
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_1c4} :catch_1c5

    goto :goto_1ab

    :catch_1c5
    move-exception v5

    move-object v13, v5

    :try_start_1c7
    const-string v5, "k9"

    const-string v6, "synchronizeMailbox"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_1d4
    .catchall {:try_start_1c7 .. :try_end_1d4} :catchall_208

    move-result-object v31

    if-eqz v32, :cond_1e8

    :try_start_1d7
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v32

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastChecked(J)V
    :try_end_1e8
    .catchall {:try_start_1d7 .. :try_end_1e8} :catchall_208
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1d7 .. :try_end_1e8} :catch_5c9

    :cond_1e8
    :goto_1e8
    :try_start_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1f0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_207
    .catchall {:try_start_1e8 .. :try_end_207} :catchall_208

    goto :goto_1f0

    :catchall_208
    move-exception v5

    if-eqz v7, :cond_20e

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_20e
    if-eqz v32, :cond_213

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_213
    throw v5

    :cond_214
    if-eqz p3, :cond_230

    :try_start_216
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_230

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    :cond_230
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_24f

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Done synchronizing folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catchall {:try_start_216 .. :try_end_24f} :catchall_208
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_24f} :catch_1c5

    :cond_24f
    if-eqz v7, :cond_254

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_254
    if-eqz v32, :cond_1d

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto/16 :goto_1d

    :cond_25b
    :try_start_25b
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_27a

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYNC: About to open remote folder "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27a
    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v7, v5}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const-string v5, "EXPUNGE_ON_POLL"

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2bb

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_2b8

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYNC: Expunging folder "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b8
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->expunge()V

    :cond_2bb
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I

    move-result v27

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getVisibleLimit()I

    move-result v35

    const/4 v5, 0x0

    move v0, v5

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v26, v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_2ff

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SYNC: Remote message count for folder "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " is "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ff
    if-lez v27, :cond_3f3

    const/4 v5, 0x0

    sub-int v6, v27, v35

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v28, v5, 0x1

    move/from16 v25, v27

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_345

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SYNC: About to get messages "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " through "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " for folder "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_345
    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v25

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v26

    move-object/from16 v11, v26

    move-object v0, v11

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_357
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_373

    aget-object v33, v11, v14

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_357

    :cond_373
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_3a0

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SYNC: Got "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " messages for folder "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a0
    const/16 v26, 0x0

    :cond_3a2
    move-object/from16 v11, v19

    move-object v0, v11

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_3aa
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_43d

    aget-object v18, v11, v15

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_438

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_438

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3db
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_3db

    :cond_3f3
    if-gez v27, :cond_3a2

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message count "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_41e
    if-eqz p3, :cond_438

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_438

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_438
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_3aa

    :cond_43d
    const/16 v19, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I

    move-result v24

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->setLocalUnreadCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_45a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_472

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    goto :goto_45a

    :cond_472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastChecked(J)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_4cc

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Done synchronizing folder "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " @ "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " with "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " new messages"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4cc
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4d4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4ee

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_4d4

    :cond_4ee
    if-eqz p3, :cond_50a

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50a

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    :cond_50a
    if-eqz v12, :cond_590

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v31

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Root cause failure in "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " was \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_55e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_576

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55e

    :cond_576
    if-eqz p3, :cond_590

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_590

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_590
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_5bd

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Done synchronizing folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5bd
    .catchall {:try_start_25b .. :try_end_5bd} :catchall_208
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_5bd} :catch_1c5

    :cond_5bd
    if-eqz v7, :cond_5c2

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_5c2
    if-eqz v32, :cond_1d

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto/16 :goto_1d

    :catch_5c9
    move-exception v5

    move-object/from16 v22, v5

    :try_start_5cc
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not set last checked on folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e8

    :cond_5f8
    if-eqz p3, :cond_612

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_612

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_612
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed synchronizing folder "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " @ "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_652
    .catchall {:try_start_5cc .. :try_end_652} :catchall_208

    if-eqz v7, :cond_657

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_657
    if-eqz v32, :cond_1d

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto/16 :goto_1d
.end method
