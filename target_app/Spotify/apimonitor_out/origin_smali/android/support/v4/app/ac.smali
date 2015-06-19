.class public final Landroid/support/v4/app/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/app/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0}, Landroid/support/v4/app/af;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/app/ae;

    invoke-direct {v0}, Landroid/support/v4/app/ae;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    goto :goto_d
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 2

    sget-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ad;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 5

    invoke-static {p0, p1}, Landroid/support/v4/app/ac;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/support/v4/app/ac;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {v1}, Landroid/support/v4/content/f;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_7

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 3

    sget-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ad;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ac;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/app/ad;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    sget-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ad;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ad;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method
