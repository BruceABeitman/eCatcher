.class public Lcom/glympse/android/hal/Reflection$_PackageInfo;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dS:Ljava/lang/reflect/Field;

.field private static dT:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dS:Ljava/lang/reflect/Field;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dT:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Load()V
    .registers 2

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->cR:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->cR:Z

    :try_start_7
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "firstInstallTime"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dS:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_1e

    :goto_11
    :try_start_11
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "lastUpdateTime"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dT:Ljava/lang/reflect/Field;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1e
    move-exception v0

    goto :goto_11
.end method

.method public static firstInstallTime(Landroid/content/pm/PackageInfo;)J
    .registers 3

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_PackageInfo;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dS:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_9
    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dS:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_16

    move-result-wide v0

    :goto_15
    return-wide v0

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1b
    const-wide/16 v0, 0x0

    goto :goto_15
.end method

.method public static lastUpdateTime(Landroid/content/pm/PackageInfo;)J
    .registers 3

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_PackageInfo;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dT:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_9
    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageInfo;->dT:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_16

    move-result-wide v0

    :goto_15
    return-wide v0

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1b
    const-wide/16 v0, 0x0

    goto :goto_15
.end method