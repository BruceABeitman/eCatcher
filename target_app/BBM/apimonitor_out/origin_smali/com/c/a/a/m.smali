.class final Lcom/c/a/a/m;
.super Ljava/lang/Object;
.source "SystemInformation.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/Boolean;

.field final d:Landroid/util/DisplayMetrics;

.field final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/m;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/c/a/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_c
    iget-object v0, p0, Lcom/c/a/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_19} :catch_74

    :try_start_19
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_1e} :catch_9b

    move-result-object v0

    :goto_1f
    iput-object v1, p0, Lcom/c/a/a/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/a/m;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_27
    const-string v1, "hasSystemFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_34} :catch_80

    move-result-object v0

    move-object v1, v0

    :goto_36
    if-eqz v1, :cond_9e

    const/4 v0, 0x1

    :try_start_39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android.hardware.nfc"

    aput-object v5, v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_46} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_46} :catch_8d

    const/4 v4, 0x1

    :try_start_47
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "android.hardware.telephony"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_47 .. :try_end_54} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_54} :catch_97

    move-object v2, v1

    :goto_55
    iput-object v0, p0, Lcom/c/a/a/m;->b:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/c/a/a/m;->c:Ljava/lang/Boolean;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/m;->d:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/c/a/a/m;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/m;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    :catch_74
    move-exception v0

    move-object v0, v2

    :goto_76
    const-string v1, "MixpanelAPI"

    const-string v4, "System information constructed with a context that apparently doesn\'t exist."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    move-object v0, v2

    goto :goto_1f

    :catch_80
    move-exception v0

    move-object v1, v2

    goto :goto_36

    :catch_83
    move-exception v0

    move-object v0, v2

    :goto_85
    const-string v1, "MixpanelAPI"

    const-string v3, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_8d
    move-exception v0

    move-object v0, v2

    :goto_8f
    const-string v1, "MixpanelAPI"

    const-string v3, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_97
    move-exception v1

    goto :goto_8f

    :catch_99
    move-exception v1

    goto :goto_85

    :catch_9b
    move-exception v0

    move-object v0, v1

    goto :goto_76

    :cond_9e
    move-object v0, v2

    goto :goto_55
.end method
