.class public Lcom/twidroid/service/FavoriteService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "tweet_id"

.field public static final b:Ljava/lang/String; = "account_id"

.field private static final c:Ljava/lang/String; = "FavoriteService"

.field private static final d:I = -0x3039


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "FavoriteService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/service/FavoriteService;->e:Landroid/os/Handler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/twidroid/d/q;->a:Lcom/twidroid/d/q;

    const-string v1, "notification_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;ILandroid/content/Context;)V

    :cond_14
    const-string v0, "tweet_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "account_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5f

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/activity/AccountDialogActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action_for_dialog"

    sget-object v4, Lcom/twidroid/activity/a;->c:Lcom/twidroid/activity/a;

    invoke-virtual {v4}, Lcom/twidroid/activity/a;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_TWEET"

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/FavoriteService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_5e

    const/4 v0, 0x0

    :try_start_66
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/twidroid/b/a/b;->k(J)V

    if-eqz v0, :cond_7a

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_7a
    iget-object v0, p0, Lcom/twidroid/service/FavoriteService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/service/FavoriteService$1;

    invoke-direct {v1, p0}, Lcom/twidroid/service/FavoriteService$1;-><init>(Lcom/twidroid/service/FavoriteService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_84
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_66 .. :try_end_84} :catch_85
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_84} :catch_98

    goto :goto_5e

    :catch_85
    move-exception v0

    const-string v1, "FavoriteService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twidroid/service/FavoriteService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/service/FavoriteService$2;

    invoke-direct {v1, p0}, Lcom/twidroid/service/FavoriteService$2;-><init>(Lcom/twidroid/service/FavoriteService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e

    :catch_98
    move-exception v0

    const-string v1, "FavoriteService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twidroid/service/FavoriteService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/service/FavoriteService$3;

    invoke-direct {v1, p0}, Lcom/twidroid/service/FavoriteService$3;-><init>(Lcom/twidroid/service/FavoriteService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e
.end method
