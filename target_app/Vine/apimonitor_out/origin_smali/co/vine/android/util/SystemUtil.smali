.class public Lco/vine/android/util/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/SystemUtil$PrefBooleanState;
    }
.end annotation


# static fields
.field private static MEMORY_RATIO:D = 0.0

.field private static final TARGET_KEY_SINGLE_PLAYER:I = 0x1

.field private static final TARGET_KEY_VIEW_SERVER:I = 0x0

.field private static final TARGET_PROCESS_DEFAULT:Ljava/lang/String; = null

.field private static final TARGET_PROCESS_RECORD:Ljava/lang/String; = ":record"

.field private static final TARGET_SINGLE_PLAYER:Ljava/lang/String; = ":record"

.field private static final TARGET_VIEW_SERVER:Ljava/lang/String;

.field private static mProcessName:Ljava/lang/String;

.field private static mSubProcessName:Ljava/lang/String;

.field private static final mTargetProcessInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x4010

    sput-wide v0, Lco/vine/android/util/SystemUtil;->MEMORY_RATIO:D

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lco/vine/android/util/SystemUtil;->mTargetProcessInfo:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/util/SystemUtil;->TARGET_PROCESS_DEFAULT:Ljava/lang/String;

    sget-object v0, Lco/vine/android/util/SystemUtil;->TARGET_PROCESS_DEFAULT:Ljava/lang/String;

    sput-object v0, Lco/vine/android/util/SystemUtil;->TARGET_VIEW_SERVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToClip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_12

    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    invoke-virtual {v1, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    return-void

    :cond_12
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_11
.end method

.method public static getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .registers 5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_10

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object v1, v0

    :goto_f
    return-object v1

    :cond_10
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    move-object v1, v0

    goto :goto_f
.end method

.method public static getMemoryBudgetForLargeMemoryClass(Landroid/content/Context;)I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public static getMemoryRatio(Landroid/content/Context;Z)D
    .registers 7

    sget-wide v1, Lco/vine/android/util/SystemUtil;->MEMORY_RATIO:D

    const-wide/high16 v3, -0x4010

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    :try_start_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1e

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->getMemoryBudgetForLargeMemoryClass(Landroid/content/Context;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_30

    move-result v0

    :goto_15
    if-nez v0, :cond_2b

    const-wide/high16 v1, 0x3ff0

    :goto_19
    sput-wide v1, Lco/vine/android/util/SystemUtil;->MEMORY_RATIO:D

    :cond_1b
    sget-wide v1, Lco/vine/android/util/SystemUtil;->MEMORY_RATIO:D

    return-wide v1

    :cond_1e
    :try_start_1e
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_30

    move-result v0

    goto :goto_15

    :cond_2b
    int-to-double v1, v0

    const-wide/high16 v3, 0x4060

    div-double/2addr v1, v3

    goto :goto_19

    :catch_30
    move-exception v1

    goto :goto_15
.end method

.method public static getPathFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathFromResourceRaw(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initProcessName(Landroid/content/Context;)V
    .registers 9

    const-class v6, Lco/vine/android/util/SystemUtil;

    monitor-enter v6

    :try_start_3
    sget-object v5, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;

    if-nez v5, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;

    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v7, :cond_1f

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v5, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_38

    goto :goto_1f

    :catchall_38
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3b
    :try_start_3b
    sget-object v5, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_50

    sget-object v5, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lco/vine/android/util/SystemUtil;->mSubProcessName:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_38

    :cond_4e
    :goto_4e
    monitor-exit v6

    return-void

    :cond_50
    :try_start_50
    const-string v5, ""

    sput-object v5, Lco/vine/android/util/SystemUtil;->mSubProcessName:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_38

    goto :goto_4e
.end method

.method public static isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;
    .registers 4

    const-string v1, "normalVideoTestPlayable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "normalVideoTestPlayable"

    sget-object v2, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    invoke-virtual {v2}, Lco/vine/android/util/SystemUtil$PrefBooleanState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/SystemUtil$PrefBooleanState;->valueOf(Ljava/lang/String;)Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-result-object v1

    return-object v1
.end method

.method public static isOnMainThread()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isSinglePlayerEnabled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sIsAmazon:Z

    if-nez v1, :cond_d

    const-string v1, ":record"

    invoke-static {p0, v0, v1}, Lco/vine/android/util/SystemUtil;->isTargetProcess(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isTargetProcess(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 6

    sget-object v1, Lco/vine/android/util/SystemUtil;->mTargetProcessInfo:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_2c

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->initProcessName(Landroid/content/Context;)V

    if-nez p2, :cond_31

    invoke-static {}, Lcom/edisonwang/android/slog/SLog;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lco/vine/android/util/SystemUtil;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1e
    sget-object v1, Lco/vine/android/util/SystemUtil;->mTargetProcessInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "Is target process for {} a {}: {}."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_31
    sget-object v1, Lco/vine/android/util/SystemUtil;->mSubProcessName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e
.end method

.method public static isViewServerEnabled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v1, :cond_e

    sget-object v1, Lco/vine/android/util/SystemUtil;->TARGET_VIEW_SERVER:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lco/vine/android/util/SystemUtil;->isTargetProcess(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static quietlyEnsureParentExists(Ljava/io/File;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Lco/vine/android/VineLoggingException;

    const-string v3, "Invalid folder, but we caught it."

    invoke-direct {v2, v3}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    new-instance v2, Lco/vine/android/VineLoggingException;

    const-string v3, "Failed to make parent folder."

    invoke-direct {v2, v3}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public static setNormalVideoPlayable(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "normalVideoTestPlayable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "normalVideoTestPlayable"

    if-eqz p1, :cond_1d

    sget-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->TRUE:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    :goto_11
    invoke-virtual {v0}, Lco/vine/android/util/SystemUtil$PrefBooleanState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1d
    sget-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->FALSE:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    goto :goto_11
.end method
