.class public Lcom/twidroid/service/RetweetService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "tweet_id"

.field public static final b:Ljava/lang/String; = "account_id"

.field private static final c:Ljava/lang/String; = "RetweetService"


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "RetweetService"

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

    iput-object v0, p0, Lcom/twidroid/service/RetweetService;->d:Landroid/os/Handler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/twidroid/d/q;->d:Lcom/twidroid/d/q;

    const-string v1, "notification_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;ILandroid/content/Context;)V

    :cond_15
    const-string v0, "tweet_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_5f

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/activity/AccountDialogActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action_for_dialog"

    sget-object v4, Lcom/twidroid/activity/a;->b:Lcom/twidroid/activity/a;

    invoke-virtual {v4}, Lcom/twidroid/activity/a;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_TWEET"

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/RetweetService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5e

    :try_start_6b
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;J)Lcom/twidroid/model/twitter/Tweet;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v2

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/twidroid/b/a/b;->a(JLcom/twidroid/model/twitter/User;)V

    iget-object v0, p0, Lcom/twidroid/service/RetweetService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/service/RetweetService$1;

    invoke-direct {v1, p0}, Lcom/twidroid/service/RetweetService$1;-><init>(Lcom/twidroid/service/RetweetService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a7
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_6b .. :try_end_a7} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a7} :catch_d6

    goto :goto_5e

    :catch_a8
    move-exception v0

    const-string v1, "RetweetService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c6

    const v0, 0x7f0c003b

    :goto_bb
    iget-object v1, p0, Lcom/twidroid/service/RetweetService;->d:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/service/RetweetService$2;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/service/RetweetService$2;-><init>(Lcom/twidroid/service/RetweetService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e

    :cond_c6
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d2

    const v0, 0x7f0c00d7

    goto :goto_bb

    :cond_d2
    const v0, 0x7f0c0027

    goto :goto_bb

    :catch_d6
    move-exception v0

    const-string v1, "RetweetService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twidroid/service/RetweetService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/service/RetweetService$3;

    invoke-direct {v1, p0}, Lcom/twidroid/service/RetweetService$3;-><init>(Lcom/twidroid/service/RetweetService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5e
.end method
