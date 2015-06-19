.class public Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dV:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->cR:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->dV:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Load()V
    .registers 2

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->cR:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->cR:Z

    :try_start_7
    const-class v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v1, "importanceReasonCode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->dV:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static importanceReasonCode(Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->dV:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->dV:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_17

    move-result v0

    :goto_16
    return v0

    :catch_17
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1b
    move v0, v1

    goto :goto_16
.end method
