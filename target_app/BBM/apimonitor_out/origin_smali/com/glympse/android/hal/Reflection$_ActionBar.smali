.class public Lcom/glympse/android/hal/Reflection$_ActionBar;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static cS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static cT:Ljava/lang/reflect/Method;

.field private static cU:Ljava/lang/reflect/Method;

.field private static cV:Ljava/lang/reflect/Method;

.field private static cW:Ljava/lang/reflect/Method;

.field private static cX:Ljava/lang/reflect/Method;

.field private static cY:Ljava/lang/reflect/Method;

.field private static cZ:Ljava/lang/reflect/Method;

.field private static da:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cT:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cU:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cV:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cW:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cX:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cY:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cZ:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->da:Ljava/lang/reflect/Method;

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

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cR:Z

    if-nez v0, :cond_9c

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_ActionBar;->cR:Z

    :try_start_7
    const-string v0, "android.app.ActionBar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_ae

    :goto_f
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    if-eqz v0, :cond_9c

    :try_start_13
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "isShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cT:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1e} :catch_ab

    :goto_1e
    :try_start_1e
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setDisplayHomeAsUpEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cU:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_30} :catch_a9

    :goto_30
    :try_start_30
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setDisplayShowTitleEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cX:Ljava/lang/reflect/Method;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_42} :catch_a7

    :goto_42
    :try_start_42
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setDisplayShowHomeEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cV:Ljava/lang/reflect/Method;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_54} :catch_a5

    :goto_54
    :try_start_54
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setDisplayShowCustomEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cW:Ljava/lang/reflect/Method;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_66} :catch_a3

    :goto_66
    :try_start_66
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setCustomView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cY:Ljava/lang/reflect/Method;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_78} :catch_a1

    :goto_78
    :try_start_78
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setHomeButtonEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cZ:Ljava/lang/reflect/Method;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_8a} :catch_9f

    :goto_8a
    :try_start_8a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cS:Ljava/lang/Class;

    const-string v1, "setLogo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->da:Ljava/lang/reflect/Method;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_9c} :catch_9d

    :cond_9c
    :goto_9c
    return-void

    :catch_9d
    move-exception v0

    goto :goto_9c

    :catch_9f
    move-exception v0

    goto :goto_8a

    :catch_a1
    move-exception v0

    goto :goto_78

    :catch_a3
    move-exception v0

    goto :goto_66

    :catch_a5
    move-exception v0

    goto :goto_54

    :catch_a7
    move-exception v0

    goto :goto_42

    :catch_a9
    move-exception v0

    goto :goto_30

    :catch_ab
    move-exception v0

    goto/16 :goto_1e

    :catch_ae
    move-exception v0

    goto/16 :goto_f
.end method

.method public static isShowing(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cT:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cT:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_18

    move-result v0

    :goto_17
    return v0

    :catch_18
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1c
    move v0, v1

    goto :goto_17
.end method

.method public static setCustomView(Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cY:Ljava/lang/reflect/Method;

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
.end method

.method public static setDisplayHomeAsUpEnabled(Ljava/lang/Object;Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cU:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cU:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public static setDisplayShowCustomEnabled(Ljava/lang/Object;Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cW:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cW:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public static setDisplayShowHomeEnabled(Ljava/lang/Object;Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cV:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cV:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public static setDisplayShowTitleEnabled(Ljava/lang/Object;Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cX:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public static setHomeButtonEnabled(Ljava/lang/Object;Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cZ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->cZ:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public static setLogo(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_ActionBar;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->da:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_ActionBar;->da:Ljava/lang/reflect/Method;

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
.end method
