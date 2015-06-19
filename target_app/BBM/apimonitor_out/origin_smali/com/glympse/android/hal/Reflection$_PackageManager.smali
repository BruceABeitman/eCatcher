.class public Lcom/glympse/android/hal/Reflection$_PackageManager;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dU:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->cR:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->dU:Ljava/lang/reflect/Method;

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

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->cR:Z

    if-nez v0, :cond_19

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_PackageManager;->cR:Z

    :try_start_7
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "hasSystemFeature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->dU:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public static hasSystemFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_PackageManager;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->dU:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_PackageManager;->dU:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1b

    move-result v0

    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1f
    move v0, v1

    goto :goto_1a
.end method
