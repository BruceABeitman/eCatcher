.class public Lcom/glympse/android/hal/Reflection$_ActivityManager;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static de:Ljava/lang/reflect/Method;

.field private static df:Ljava/lang/reflect/Method;

.field private static dg:Ljava/lang/reflect/Method;

.field private static dh:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActivityManager;->de:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActivityManager;->df:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dg:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dh:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Load()V
    .registers 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->cR:Z

    if-nez v0, :cond_41

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_ActivityManager;->cR:Z

    :try_start_7
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getProcessMemoryInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->de:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_48

    :goto_19
    :try_start_19
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getMemoryClass"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->df:Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_24} :catch_46

    :goto_24
    :try_start_24
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getLargeMemoryClass"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dg:Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2f} :catch_44

    :goto_2f
    :try_start_2f
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getMyMemoryState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dh:Ljava/lang/reflect/Method;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v0

    goto :goto_41

    :catch_44
    move-exception v0

    goto :goto_2f

    :catch_46
    move-exception v0

    goto :goto_24

    :catch_48
    move-exception v0

    goto :goto_19
.end method

.method public static getLargeMemoryClass(Landroid/app/ActivityManager;)I
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dg:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dg:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_16

    move-result v0

    :goto_15
    return v0

    :catch_16
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1a
    move v0, v1

    goto :goto_15
.end method

.method public static getMemoryClass(Landroid/app/ActivityManager;)I
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->df:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->df:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_16

    move-result v0

    :goto_15
    return v0

    :catch_16
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1a
    move v0, v1

    goto :goto_15
.end method

.method public static getMyMemoryState(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dh:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_9
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    sget-object v2, Lcom/glympse/android/hal/Reflection$_ActivityManager;->dh:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2f

    goto :goto_1a

    :cond_40
    move-object v0, v1

    goto :goto_1a
.end method

.method public static getProcessMemoryInfo(Landroid/app/ActivityManager;[I)[Landroid/os/Debug$MemoryInfo;
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->de:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActivityManager;->de:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Debug$MemoryInfo;

    check-cast v0, [Landroid/os/Debug$MemoryInfo;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method
