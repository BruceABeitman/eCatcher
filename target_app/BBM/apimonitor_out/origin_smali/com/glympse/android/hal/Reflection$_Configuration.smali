.class public Lcom/glympse/android/hal/Reflection$_Configuration;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dn:Ljava/lang/reflect/Field;

.field private static do:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Configuration;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Configuration;->dn:Ljava/lang/reflect/Field;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Configuration;->do:Ljava/lang/reflect/Method;

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

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Configuration;->cR:Z

    if-nez v0, :cond_23

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Configuration;->cR:Z

    :try_start_7
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "screenLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->dn:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_26

    :goto_11
    :try_start_11
    const-class v0, Landroid/view/View;

    const-string v1, "setLocale"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->do:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23

    :catch_26
    move-exception v0

    goto :goto_11
.end method

.method public static screenLayout(Landroid/content/res/Configuration;)I
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Configuration;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->dn:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->dn:Ljava/lang/reflect/Field;

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

.method public static setLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Configuration;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->do:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Configuration;->do:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_15

    :cond_1b
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_15
.end method
