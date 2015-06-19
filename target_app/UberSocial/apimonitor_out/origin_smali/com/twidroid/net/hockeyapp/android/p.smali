.class public Lcom/twidroid/net/hockeyapp/android/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/twidroid/net/hockeyapp/android/a;

.field private static b:Lcom/twidroid/net/hockeyapp/android/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/p;->b:Lcom/twidroid/net/hockeyapp/android/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_11

    const-class v0, Landroid/app/Fragment;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    move v0, v1

    goto :goto_c

    :catch_13
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    :cond_16
    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/twidroid/net/hockeyapp/android/p;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V
    .registers 4

    const-string v0, "https://rink.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lcom/twidroid/net/hockeyapp/android/p;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V
    .registers 5

    sput-object p3, Lcom/twidroid/net/hockeyapp/android/p;->b:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/p;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/twidroid/net/hockeyapp/android/p;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {p0, p3}, Lcom/twidroid/net/hockeyapp/android/p;->a(Landroid/app/Activity;Lcom/twidroid/net/hockeyapp/android/q;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/p;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V

    goto :goto_12
.end method

.method private static a(Landroid/app/Activity;Lcom/twidroid/net/hockeyapp/android/q;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/q;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_23

    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/q;->f()Z

    move-result v0

    :cond_1b
    :goto_1b
    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/twidroid/net/hockeyapp/android/p;->b(Landroid/app/Activity;)V

    :cond_22
    return v1

    :cond_23
    move v1, v0

    goto :goto_15

    :cond_25
    move v1, v0

    goto :goto_1b
.end method

.method public static b()Lcom/twidroid/net/hockeyapp/android/q;
    .registers 1

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/p;->b:Lcom/twidroid/net/hockeyapp/android/q;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V
    .registers 6

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/a;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-ne v0, v1, :cond_1e

    :cond_e
    new-instance v0, Lcom/twidroid/net/hockeyapp/android/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/hockeyapp/android/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    :goto_1d
    return-void

    :cond_1e
    sget-object v0, Lcom/twidroid/net/hockeyapp/android/p;->a:Lcom/twidroid/net/hockeyapp/android/a;

    invoke-virtual {v0, p0}, Lcom/twidroid/net/hockeyapp/android/a;->a(Landroid/app/Activity;)V

    goto :goto_1d
.end method

.method private static c(Landroid/app/Activity;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "hockey_update_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
