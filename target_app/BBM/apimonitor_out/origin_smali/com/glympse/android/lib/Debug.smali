.class public Lcom/glympse/android/lib/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final CRITICAL:I = 0x6

.field public static final DUMP:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final FILE_ONLY:I = 0x10000

.field public static final INFO:I = 0x1

.field public static final LEVEL_MASK:I = 0xffff

.field public static final NONE:I = 0x7

.field public static final NOTICE:I = 0x3

.field public static final RELEASE:Z = true

.field public static final WARNING:I = 0x4

.field public static final _levelCodes:[C

.field private static iC:Lcom/glympse/android/hal/GContextHolder;

.field private static jC:Z

.field private static jD:I

.field private static jE:I

.field private static jF:Ljava/lang/String;

.field private static jG:Z

.field private static jH:Ljava/lang/String;

.field private static jI:Ljava/lang/String;

.field private static jJ:Z

.field private static jK:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GGlympsePrivate;",
            ">;"
        }
    .end annotation
.end field

.field private static jL:Lcom/glympse/android/hal/GMutex;

.field private static jM:Ljava/lang/String;

.field private static jN:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jC:Z

    sput v1, Lcom/glympse/android/lib/Debug;->jD:I

    sput v1, Lcom/glympse/android/lib/Debug;->jE:I

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createMutex()Lcom/glympse/android/hal/GMutex;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jN:Z

    new-array v0, v1, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/glympse/android/lib/Debug;->_levelCodes:[C

    return-void

    nop

    :array_1a
    .array-data 0x2
        0x41t 0x0t
        0x49t 0x0t
        0x44t 0x0t
        0x4et 0x0t
        0x57t 0x0t
        0x45t 0x0t
        0x43t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IZZLjava/lang/String;Z)V
    .registers 15

    const/4 v2, 0x0

    sget-boolean v0, Lcom/glympse/android/lib/Debug;->jG:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jG:Z

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    :try_start_e
    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v3

    const-string v0, "\n"

    invoke-static {p3, v0}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v6

    move v1, v2

    :goto_1d
    if-ge v1, v6, :cond_69

    invoke-virtual {v5, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_64

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/hal/Platform;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/glympse/android/lib/Debug;->_levelCodes:[C

    aget-char v8, v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_5f

    sget-object v7, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    if-eqz v7, :cond_5f

    invoke-static {v3, v4, v0}, Lcom/glympse/android/lib/Debug;->logToFile(JLjava/lang/String;)V

    :cond_5f
    if-eqz p1, :cond_64

    invoke-static {p4, v0}, Lcom/glympse/android/hal/DebugBase;->writeConsole(ZLjava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_64} :catch_68

    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :catch_68
    move-exception v0

    :cond_69
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    sput-boolean v2, Lcom/glympse/android/lib/Debug;->jG:Z

    goto :goto_5
.end method

.method private static a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)Z
    .registers 6

    invoke-interface {p0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/DebugBase;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    invoke-interface {p0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->isOnWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static aE()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    if-ge v2, v3, :cond_39

    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->save()V

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_38

    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :catch_38
    move-exception v0

    :cond_39
    return-void
.end method

.method public static areSignalHandlersEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/glympse/android/lib/Debug;->jN:Z

    return v0
.end method

.method public static buildFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->appendPathToFile(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xf7

    invoke-static {p0, v2, v1}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {p1, v2, v1}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpLocation(Lcom/glympse/android/core/GLocation;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    sget v0, Lcom/glympse/android/lib/Debug;->jD:I

    if-lt v4, v0, :cond_11

    move v0, v1

    :goto_8
    sget v3, Lcom/glympse/android/lib/Debug;->jE:I

    if-lt v4, v3, :cond_13

    :goto_c
    if-nez v0, :cond_15

    if-nez v1, :cond_15

    :goto_10
    return-void

    :cond_11
    move v0, v2

    goto :goto_8

    :cond_13
    move v1, v2

    goto :goto_c

    :cond_15
    invoke-static {p0}, Lcom/glympse/android/lib/Debug;->formatLocation(Lcom/glympse/android/core/GLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v1, v3, v2}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    goto :goto_10
.end method

.method public static dumpPackets(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget v0, Lcom/glympse/android/lib/Debug;->jD:I

    if-lt v6, v0, :cond_4d

    move v0, v1

    :goto_b
    sget v3, Lcom/glympse/android/lib/Debug;->jE:I

    if-lt v6, v3, :cond_4f

    :goto_f
    if-nez v0, :cond_13

    if-eqz v1, :cond_5

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vvvvvvvv Packet (Size: "

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v1, v3, v2}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    invoke-static {v6, v0, v1, p0, v2}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    const-string v3, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v1, v3, v2}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    goto :goto_5

    :cond_4d
    move v0, v2

    goto :goto_b

    :cond_4f
    move v1, v2

    goto :goto_f
.end method

.method private static e(J)V
    .registers 4

    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/glympse/android/lib/hx;->a(Lcom/glympse/android/hal/GContextHolder;JZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jH:Ljava/lang/String;

    const-string v1, "log"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->buildFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    return-void
.end method

.method public static enableSignalHandlers(Z)V
    .registers 2

    sget-boolean v0, Lcom/glympse/android/lib/Debug;->jN:Z

    if-eq v0, p0, :cond_a

    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    if-nez v0, :cond_a

    sput-boolean p0, Lcom/glympse/android/lib/Debug;->jN:Z

    :cond_a
    return-void
.end method

.method public static ex(Ljava/lang/String;Z)V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x1

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget v0, Lcom/glympse/android/lib/Debug;->jD:I

    if-lt v4, v0, :cond_2a

    move v0, v1

    :goto_b
    sget v3, Lcom/glympse/android/lib/Debug;->jE:I

    if-lt v4, v3, :cond_10

    move v2, v1

    :cond_10
    if-nez v0, :cond_14

    if-eqz v2, :cond_5

    :cond_14
    const-string v3, "#######################################################################"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v2, v3, v1}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    invoke-static {v4, v0, v2, p0, v1}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    const-string v3, "#######################################################################"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v2, v3, v1}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    goto :goto_5

    :cond_2a
    move v0, v2

    goto :goto_b
.end method

.method public static ex(Ljava/lang/Throwable;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/glympse/android/hal/DebugBase;->extractExceptionString(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1f

    if-eqz v0, :cond_1f

    const-string v1, "err"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/Debug;->reportError(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1f
    return-void
.end method

.method public static ex(Z)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static formatLocation(Lcom/glympse/android/core/GLocation;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n[Location] ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " hd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " alt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getAltitude()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " hac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDebugLoggingLevel()I
    .registers 1

    sget v0, Lcom/glympse/android/lib/Debug;->jD:I

    return v0
.end method

.method public static getFileLoggingLevel()I
    .registers 1

    sget v0, Lcom/glympse/android/lib/Debug;->jE:I

    return v0
.end method

.method public static getLevel()I
    .registers 2

    sget v0, Lcom/glympse/android/lib/Debug;->jE:I

    sget v1, Lcom/glympse/android/lib/Debug;->jD:I

    if-ge v0, v1, :cond_9

    sget v0, Lcom/glympse/android/lib/Debug;->jE:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/glympse/android/lib/Debug;->jD:I

    goto :goto_8
.end method

.method public static getLogFile(J)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    :try_start_5
    sget-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    if-nez v0, :cond_33

    invoke-static {p0, p1}, Lcom/glympse/android/lib/Debug;->e(J)V

    sget-object v0, Lcom/glympse/android/lib/Debug;->jH:Ljava/lang/String;

    sget-object v1, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/glympse/android/lib/hx;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/glympse/android/hal/DebugBase;->writeTextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    const-string v2, "\n\n-----------------------------------------------------------------------\n"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/hal/DebugBase;->writeTextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_33
    invoke-static {}, Lcom/glympse/android/hal/DebugBase;->flushAllLogs()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_3e

    :goto_36
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    sget-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    return-object v0

    :catch_3e
    move-exception v0

    goto :goto_36
.end method

.method public static init(Lcom/glympse/android/hal/GContextHolder;)V
    .registers 4

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    :try_start_5
    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    if-nez v0, :cond_3b

    sput-object p0, Lcom/glympse/android/lib/hx;->iC:Lcom/glympse/android/hal/GContextHolder;

    sput-object p0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jJ:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    const/4 v0, 0x7

    sput v0, Lcom/glympse/android/lib/Debug;->jD:I

    const/4 v0, 0x7

    sput v0, Lcom/glympse/android/lib/Debug;->jE:I

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->LOG_URL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jF:Ljava/lang/String;

    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/HalFactory;->createDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_41

    :cond_3b
    :goto_3b
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    return-void

    :catch_41
    move-exception v0

    goto :goto_3b
.end method

.method public static log(ILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_8
    const v3, 0xffff

    and-int v4, p0, v3

    const/4 v3, 0x7

    if-lt v4, v3, :cond_13

    :cond_10
    :goto_10
    return-void

    :cond_11
    move v0, v2

    goto :goto_8

    :cond_13
    sget v3, Lcom/glympse/android/lib/Debug;->jD:I

    if-lt v4, v3, :cond_28

    move v3, v1

    :goto_18
    if-nez v0, :cond_2a

    move v0, v1

    :goto_1b
    and-int/2addr v0, v3

    sget v3, Lcom/glympse/android/lib/Debug;->jE:I

    if-lt v4, v3, :cond_2c

    :goto_20
    if-nez v0, :cond_24

    if-eqz v1, :cond_10

    :cond_24
    invoke-static {v4, v0, v1, p1, v2}, Lcom/glympse/android/lib/Debug;->a(IZZLjava/lang/String;Z)V

    goto :goto_10

    :cond_28
    move v3, v2

    goto :goto_18

    :cond_2a
    move v0, v2

    goto :goto_1b

    :cond_2c
    move v1, v2

    goto :goto_20
.end method

.method public static logToFile(JLjava/lang/String;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0, p1}, Lcom/glympse/android/lib/Debug;->getLogFile(J)Ljava/lang/String;

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/glympse/android/hal/Platform;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/glympse/android/hal/DebugBase;->writeTextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    goto :goto_37
.end method

.method public static overrideDebugLoggingLevel(I)V
    .registers 2

    sput p0, Lcom/glympse/android/lib/Debug;->jD:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jC:Z

    return-void
.end method

.method public static overrideFileLoggingLevel(I)V
    .registers 2

    sput p0, Lcom/glympse/android/lib/Debug;->jE:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jC:Z

    return-void
.end method

.method public static overrideLoggingLevels(II)V
    .registers 3

    sput p0, Lcom/glympse/android/lib/Debug;->jE:I

    sput p1, Lcom/glympse/android/lib/Debug;->jD:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jC:Z

    return-void
.end method

.method public static report(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "???"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\nException type:    AssertCondition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nException name:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1a

    move-object p0, v0

    :cond_1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nReason:            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3c

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/glympse/android/hal/DebugBase;->appendCurrentStack(Ljava/lang/StringBuilder;)V

    invoke-static {v1}, Lcom/glympse/android/hal/DebugBase;->appendBinaryImages(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "err"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/Debug;->reportError(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3c
    move-object v0, p1

    goto :goto_24
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-static {v2, v0, v1, v4}, Lcom/glympse/android/lib/hx;->a(Lcom/glympse/android/hal/GContextHolder;JZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_15

    sget-object v3, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    invoke-static {v3, v4}, Lcom/glympse/android/lib/hx;->a(Lcom/glympse/android/hal/GVector;Z)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    :cond_15
    invoke-static {p0}, Lcom/glympse/android/hal/DebugBase;->originInGlympseCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    sget-object v3, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/glympse/android/lib/hx;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, p1}, Lcom/glympse/android/lib/Debug;->buildFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/glympse/android/hal/DebugBase;->writeTextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1b

    invoke-static {}, Lcom/glympse/android/lib/Debug;->aE()V

    invoke-static {}, Lcom/glympse/android/lib/Debug;->uploadCrashReports()V

    goto :goto_1b
.end method

.method public static start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v1}, Lcom/glympse/android/hal/GMutex;->block()V

    :try_start_6
    sget-object v1, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    if-nez v1, :cond_12

    const/4 v0, 0x1

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V

    sput-object v1, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    :cond_12
    sget-object v1, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, p0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    if-eqz v0, :cond_49

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    sget-boolean v1, Lcom/glympse/android/lib/Debug;->jC:Z

    if-nez v1, :cond_31

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getDebugLevel()J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/glympse/android/lib/Debug;->jD:I

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getFileLevel()J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/glympse/android/lib/Debug;->jE:I

    :cond_31
    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getLogUrl()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/glympse/android/lib/Debug;->jF:Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/hx;->gO:Ljava/lang/String;

    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/hx;->a(Lcom/glympse/android/hal/GVector;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    invoke-static {}, Lcom/glympse/android/lib/Debug;->uploadLogsOnBackgroundThread()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_4f

    :cond_49
    :goto_49
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    return-void

    :catch_4f
    move-exception v0

    goto :goto_49
.end method

.method public static stop(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 2

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    :try_start_5
    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p0}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10

    :goto_a
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    return-void

    :catch_10
    move-exception v0

    goto :goto_a
.end method

.method public static updateLevels(IILjava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/glympse/android/lib/Debug;->jC:Z

    if-nez v0, :cond_26

    if-eqz p0, :cond_22

    sget v0, Lcom/glympse/android/lib/Debug;->jE:I

    if-eq v0, p0, :cond_22

    sput p0, Lcom/glympse/android/lib/Debug;->jE:I

    sget-object v0, Lcom/glympse/android/lib/Debug;->jK:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/hx;->a(Lcom/glympse/android/hal/GVector;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jM:Ljava/lang/String;

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    const/4 v0, 0x0

    :try_start_1b
    sput-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1d} :catch_2f

    :goto_1d
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    :cond_22
    if-eqz p1, :cond_26

    sput p1, Lcom/glympse/android/lib/Debug;->jD:I

    :cond_26
    invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    sput-object p2, Lcom/glympse/android/lib/Debug;->jF:Ljava/lang/String;

    :cond_2e
    return-void

    :catch_2f
    move-exception v0

    goto :goto_1d
.end method

.method public static uploadCrashReports()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    invoke-static {}, Lcom/glympse/android/lib/Debug;->uploadLogsOnCurrentThread()V

    return-void
.end method

.method public static uploadLogsOnBackgroundThread()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/au;-><init>(Lcom/glympse/android/lib/Debug$1;)V

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static uploadLogsOnCurrentThread()V
    .registers 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    :try_start_2
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    sget-boolean v0, Lcom/glympse/android/lib/Debug;->jJ:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    :goto_10
    return-void

    :cond_11
    sget-object v0, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v5

    if-nez v5, :cond_36

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_10

    :catch_25
    move-exception v0

    invoke-static {v0, v10}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_29
    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    sput-boolean v3, Lcom/glympse/android/lib/Debug;->jJ:Z

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    goto :goto_10

    :cond_36
    const/4 v0, 0x1

    :try_start_37
    sput-boolean v0, Lcom/glympse/android/lib/Debug;->jJ:Z

    sget-object v0, Lcom/glympse/android/lib/Debug;->jL:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    invoke-interface {v5}, Lcom/glympse/android/hal/GDirectory;->getContents()Lcom/glympse/android/hal/GVector;

    move-result-object v6

    move v4, v3

    :goto_43
    const/4 v0, 0x2

    if-ge v4, v0, :cond_29

    invoke-virtual {v6}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v7

    move v2, v3

    :goto_4b
    if-ge v2, v7, :cond_133

    invoke-virtual {v6, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v4, :cond_5d

    const-string v1, ".err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    :cond_5d
    if-ne v10, v4, :cond_77

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    sget-object v1, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    sget-object v1, Lcom/glympse/android/lib/Debug;->jI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f7

    :cond_77
    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f7

    const/4 v1, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LogUpload - Starting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/glympse/android/lib/Debug;->jF:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?type="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/glympse/android/lib/StaticConfig;->BUILD_NAME:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_fc

    const-string v1, "error"

    :goto_bd
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&name="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/glympse/android/lib/Debug;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v0}, Lcom/glympse/android/hal/DebugBase;->httpUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v8, 0xc8

    if-ne v8, v1, :cond_113

    invoke-interface {v5, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff

    const/4 v1, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LogUpload - Finished "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_f7
    :goto_f7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4b

    :cond_fc
    const-string v1, "log"

    goto :goto_bd

    :cond_ff
    const/4 v1, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LogUpload - Failed to delete "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_f7

    :cond_113
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x400

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "LogUpload - Failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] to upload "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_132} :catch_25

    goto :goto_f7

    :cond_133
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_43
.end method
