.class public Lcom/glympse/android/hal/Reflection$_Activity;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static db:Ljava/lang/reflect/Method;

.field private static dc:Ljava/lang/reflect/Method;

.field private static dd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Activity;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Activity;->db:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Activity;->dc:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Activity;->dd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActionBarIsShowing(Landroid/app/Activity;)Z
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_ActionBar;->isShowing(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ActionBarSetCustomView(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setCustomView(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static ActionBarSetDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setDisplayHomeAsUpEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ActionBarSetDisplayShowCustomEnabled(Landroid/app/Activity;Z)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setDisplayShowCustomEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ActionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setDisplayShowHomeEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ActionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setDisplayShowTitleEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ActionBarSetHomeButtonEnabled(Landroid/app/Activity;Z)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setHomeButtonEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ActionBarSetLogo(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Activity;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Reflection$_ActionBar;->setLogo(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static Load()V
    .registers 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Activity;->cR:Z

    if-nez v0, :cond_34

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Activity;->cR:Z

    :try_start_7
    const-class v0, Landroid/app/Activity;

    const-string v1, "overridePendingTransition"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->db:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_39

    :goto_1e
    :try_start_1e
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActionBar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->dc:Ljava/lang/reflect/Method;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    const-class v0, Landroid/app/Activity;

    const-string v1, "invalidateOptionsMenu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->dd:Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34

    :catch_37
    move-exception v0

    goto :goto_29

    :catch_39
    move-exception v0

    goto :goto_1e
.end method

.method public static getActionBar(Landroid/app/Activity;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Activity;->Load()V

    sget-object v1, Lcom/glympse/android/hal/Reflection$_Activity;->dc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_11

    :try_start_a
    sget-object v1, Lcom/glympse/android/hal/Reflection$_Activity;->dc:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_12

    move-result-object v0

    :cond_11
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_11
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 3

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Activity;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->dd:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    :try_start_9
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->dd:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_f
.end method

.method public static overridePendingTransition(Landroid/app/Activity;II)V
    .registers 8

    const/4 v4, 0x0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Activity;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->db:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    :try_start_a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Activity;->db:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_20
.end method
