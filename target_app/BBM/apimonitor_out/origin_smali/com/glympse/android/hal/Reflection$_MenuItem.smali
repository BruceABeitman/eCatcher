.class public Lcom/glympse/android/hal/Reflection$_MenuItem;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dv:Ljava/lang/reflect/Method;

.field private static dw:Ljava/lang/reflect/Method;

.field private static dx:I

.field private static dy:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_MenuItem;->dv:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_MenuItem;->dw:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    sput v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dx:I

    const/4 v0, 0x4

    sput v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dy:I

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

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->cR:Z

    if-nez v0, :cond_46

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_MenuItem;->cR:Z

    :try_start_7
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "setShowAsAction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dv:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_4d

    :goto_19
    :try_start_19
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "getActionView"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dw:Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_24} :catch_4b

    :goto_24
    sget-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dv:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_46

    :try_start_28
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "SHOW_AS_ACTION_IF_ROOM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dx:I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_49

    :goto_37
    :try_start_37
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "SHOW_AS_ACTION_WITH_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dy:I
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception v0

    goto :goto_46

    :catch_49
    move-exception v0

    goto :goto_37

    :catch_4b
    move-exception v0

    goto :goto_24

    :catch_4d
    move-exception v0

    goto :goto_19
.end method

.method public static SHOW_AS_ACTION_IF_ROOM()I
    .registers 1

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_MenuItem;->Load()V

    sget v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dx:I

    return v0
.end method

.method public static SHOW_AS_ACTION_WITH_TEXT()I
    .registers 1

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_MenuItem;->Load()V

    sget v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dy:I

    return v0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_MenuItem;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dw:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dw:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_17
    move-object v0, v1

    goto :goto_11
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_MenuItem;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dv:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_MenuItem;->dv:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_17
.end method
