.class public Lcom/glympse/android/hal/Reflection$_MotionEvent;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dz:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->cR:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->dz:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Load()V
    .registers 3

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->cR:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->cR:Z

    :try_start_7
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getActionMasked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->dz:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .registers 3

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_MotionEvent;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->dz:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_7
    sget-object v0, Lcom/glympse/android/hal/Reflection$_MotionEvent;->dz:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1a
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    goto :goto_14
.end method
