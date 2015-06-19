.class public Lcom/pinguo/camera360/push/PushThread;
.super Ljava/lang/Thread;
.source "PushThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/push/PushThread$FileBean;
    }
.end annotation


# static fields
.field private static final DAY_TIME:I = 0x5265c00

.field private static final END_CLOCK:I = 0x4b87f00

.field private static final OLD_DAY_INTERVAL:J = 0x4d3f6400L

.field public static final PUSH_FAIL:I = 0x2

.field public static final PUSH_SUCCESS:I = 0x1

.field private static final START_CLOCK:I = 0x1ee6280

.field private static final ZONE_OFFSET:I


# instance fields
.field private activityPath:Ljava/lang/String;

.field private canNotify:Z

.field private day:Ljava/lang/String;

.field private historyIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private historyPath:Ljava/lang/String;

.field private oldDay:Ljava/lang/String;

.field private pushPath:Ljava/lang/String;

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/pinguo/camera360/push/PushThread$FileBean;",
            ">;"
        }
    .end annotation
.end field

.field private serviceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pinguo/camera360/push/PushService;",
            ">;"
        }
    .end annotation
.end field

.field private timeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sput v0, Lcom/pinguo/camera360/push/PushThread;->ZONE_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/push/PushService;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->serviceRef:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->oldDay:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->historyIdSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/push/PushThread;->canNotify:Z

    const-string/jumbo v0, "push thread"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/PushThread;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->serviceRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread;->getPushPath(Lcom/pinguo/camera360/push/PushService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    const-string/jumbo v0, "newpush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/push/PushThread;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->oldDay:Ljava/lang/String;

    return-object v0
.end method

.method private clearHistory()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_4
    return-void

    :cond_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/pinguo/camera360/push/PushThread$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/push/PushThread$1;-><init>(Lcom/pinguo/camera360/push/PushThread;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method private dealPushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushCenter;)Lcom/pinguo/camera360/push/PushThread$FileBean;
    .registers 10

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_9
    move-object p1, v3

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread;->historyIdSet:Ljava/util/Set;

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$3(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object p1, v3

    goto :goto_a

    :cond_19
    iget-boolean v3, p0, Lcom/pinguo/camera360/push/PushThread;->canNotify:Z

    if-eqz v3, :cond_a

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/push/PushBean;->getFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lcom/pinguo/camera360/push/PushBean;->getTo()Ljava/util/Date;

    move-result-object v2

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3a

    const/4 v3, 0x0

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$4(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    goto :goto_a

    :cond_3a
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_50

    const/4 v3, 0x3

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$4(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    iget-object v3, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$5(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/lang/String;)V

    goto :goto_a

    :cond_50
    invoke-virtual {p2, v1}, Lcom/pinguo/camera360/push/PushCenter;->dealPushMessage(Lcom/pinguo/camera360/push/PushBean;)I

    move-result v3

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$4(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_64

    iget-object v3, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$5(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/lang/String;)V

    goto :goto_a

    :cond_64
    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_a

    iget-object v3, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$5(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$7(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$8(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    goto :goto_a
.end method

.method private getFileBean(Ljava/io/File;)Lcom/pinguo/camera360/push/PushThread$FileBean;
    .registers 14

    const/16 v11, 0xa

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, ".json"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v3, v9

    :goto_14
    return-object v3

    :cond_15
    const/16 v10, 0x5f

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v11, :cond_22

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v3, v9

    goto :goto_14

    :cond_22
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v8, v10, -0x30

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v0, v10, -0x30

    const/4 v10, 0x2

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x5

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/pinguo/camera360/push/PushThread$FileBean;

    invoke-direct {v3, v5, v1, v9}, Lcom/pinguo/camera360/push/PushThread$FileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/push/PushThread$FileBean;)V

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {v3, v0}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$8(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {v3, v8}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$4(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;
    invoke-static {v3, p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$11(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/io/File;)V

    const/4 v7, 0x0

    :try_start_50
    invoke-static {p1}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pinguo/camera360/push/PushBean;->getPushBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/PushBean;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_5f

    move-result-object v7

    :goto_58
    if-nez v7, :cond_68

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v3, v9

    goto :goto_14

    :catch_5f
    move-exception v2

    const-string/jumbo v10, "push"

    invoke-static {v10, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    goto :goto_58

    :cond_68
    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {v3, v7}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$1(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushBean;)V

    goto :goto_14
.end method

.method private getHistoryIsSet()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    if-nez v6, :cond_a

    :cond_9
    return-object v2

    :cond_a
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v7, v0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v7, :cond_9

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x5f

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string/jumbo v8, ".json"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    const/16 v8, 0xa

    if-ne v4, v8, :cond_44

    const/16 v8, 0xb

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_44
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_41
.end method

.method public static getPushPath(Lcom/pinguo/camera360/push/PushService;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/pinguo/camera360/push/utils/PushUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v0, v2

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object v0, v2

    goto :goto_8

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "push"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v0, v2

    goto :goto_8
.end method

.method private readFileQueue()Ljava/util/Queue;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/pinguo/camera360/push/PushThread$FileBean;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    if-nez v4, :cond_a

    :cond_9
    return-object v1

    :cond_a
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v5, :cond_9

    aget-object v3, v2, v4

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/push/PushThread;->getFileBean(Ljava/io/File;)Lcom/pinguo/camera360/push/PushThread$FileBean;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_17
.end method

.method private updatePushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;)V
    .registers 10

    const/16 v7, 0x5f

    const/4 v6, 0x2

    if-eqz p1, :cond_b

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;

    move-result-object v4

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$7(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v4

    if-ge v4, v6, :cond_19

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b9

    :cond_19
    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    if-eqz v4, :cond_84

    new-instance v4, Ljava/lang/StringBuilder;

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$7(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$9(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$3(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$10(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8f

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$10(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_84
    :goto_84
    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread;->historyIdSet:Ljava/util/Set;

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$3(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_8f
    :try_start_8f
    const-string/jumbo v4, "push"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "historyFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushBean;->getJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pinguo/lib/util/FileUtils;->writeFileContent(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b0} :catch_b1

    goto :goto_84

    :catch_b1
    move-exception v0

    const-string/jumbo v4, "push"

    invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_b9
    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v4

    if-eqz v4, :cond_c5

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v4

    if-ne v4, v6, :cond_b

    :cond_c5
    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$7(Lcom/pinguo/camera360/push/PushThread$FileBean;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$9(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$3(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$10(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_132

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$10(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_b

    :cond_132
    :try_start_132
    const-string/jumbo v4, "push"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushBean;->getJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/util/FileUtils;->writeFileContent(Ljava/io/File;Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_153} :catch_155

    goto/16 :goto_b

    :catch_155
    move-exception v0

    const-string/jumbo v4, "push"

    invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method


# virtual methods
.method public addPushBean(Lcom/pinguo/camera360/push/PushBean;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    :cond_10
    new-instance v0, Lcom/pinguo/camera360/push/PushThread$FileBean;

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/PushThread$FileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/push/PushThread$FileBean;)V

    #setter for: Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;
    invoke-static {v0, p1}, Lcom/pinguo/camera360/push/PushThread$FileBean;->access$1(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushBean;)V

    iget-object v1, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    :cond_c
    return-void
.end method

.method public run()V
    .registers 23

    :try_start_0
    const-string/jumbo v18, "newpush"

    const-string/jumbo v19, "push thread start"

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/pinguo/camera360/push/PushCenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->serviceRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/PushCenter;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    move-wide/from16 v18, v0

    sget v20, Lcom/pinguo/camera360/push/PushThread;->ZONE_OFFSET:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    const-wide/32 v18, 0x5265c00

    div-long v10, v14, v18

    const-wide/32 v18, 0x5265c00

    mul-long v12, v10, v18

    const-wide/32 v18, 0x4b87f00

    add-long v6, v12, v18

    const-wide/32 v18, 0x1ee6280

    add-long v8, v12, v18

    cmp-long v18, v14, v8

    if-lez v18, :cond_136

    cmp-long v18, v14, v6

    if-gez v18, :cond_136

    const/16 v18, 0x1

    :goto_4f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/push/PushThread;->canNotify:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    move-wide/from16 v18, v0

    const-string/jumbo v20, "yyyyMMdd"

    invoke-static/range {v18 .. v20}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->day:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/push/PushThread;->timeMillis:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x4d3f6400

    sub-long v18, v18, v20

    const-string/jumbo v20, "yyyyMMdd"

    invoke-static/range {v18 .. v20}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->oldDay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_fc

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c2

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->activityPath:Ljava/lang/String;

    :cond_c2
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->pushPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "history"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_fc

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->historyPath:Ljava/lang/String;

    :cond_fc
    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/push/PushThread;->clearHistory()V

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/push/PushThread;->getHistoryIsSet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/push/PushThread;->historyIdSet:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/push/PushThread;->readFileQueue()Ljava/util/Queue;

    move-result-object v5

    :goto_10e
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/push/PushThread$FileBean;

    if-nez v4, :cond_13a

    :goto_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->queue:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/push/PushThread$FileBean;

    if-nez v4, :cond_152

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/push/PushThread;->serviceRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pinguo/camera360/push/PushService;

    if-eqz v17, :cond_135

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/push/PushService;->stopSelf()V

    :cond_135
    :goto_135
    return-void

    :cond_136
    const/16 v18, 0x0

    goto/16 :goto_4f

    :cond_13a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/pinguo/camera360/push/PushThread;->dealPushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushCenter;)Lcom/pinguo/camera360/push/PushThread$FileBean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pinguo/camera360/push/PushThread;->updatePushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_147} :catch_148

    goto :goto_10e

    :catch_148
    move-exception v3

    const-string/jumbo v18, "newpush"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_135

    :cond_152
    :try_start_152
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/pinguo/camera360/push/PushThread;->dealPushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushCenter;)Lcom/pinguo/camera360/push/PushThread$FileBean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pinguo/camera360/push/PushThread;->updatePushBean(Lcom/pinguo/camera360/push/PushThread$FileBean;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_15f} :catch_148

    goto :goto_116
.end method
