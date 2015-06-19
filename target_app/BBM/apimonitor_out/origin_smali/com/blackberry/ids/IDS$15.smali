.class final Lcom/blackberry/ids/IDS$15;
.super Ljava/lang/Object;
.source "IDS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/RequestId;

.field final synthetic b:Lcom/blackberry/ids/IChallengeCallback;

.field final synthetic c:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic d:Lcom/blackberry/ids/IFailureCallback;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IChallengeCallback;Ljava/util/concurrent/ArrayBlockingQueue;Lcom/blackberry/ids/IFailureCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/blackberry/ids/IDS$15;->a:Lcom/blackberry/ids/RequestId;

    iput-object p2, p0, Lcom/blackberry/ids/IDS$15;->b:Lcom/blackberry/ids/IChallengeCallback;

    iput-object p3, p0, Lcom/blackberry/ids/IDS$15;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p4, p0, Lcom/blackberry/ids/IDS$15;->d:Lcom/blackberry/ids/IFailureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v0, "enter uiThread.do_challenge request_id=%s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$15;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_d
    invoke-static {}, Lcom/blackberry/ids/IDS;->i()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/blackberry/ids/IDS$15$1;

    invoke-direct {v1, p0}, Lcom/blackberry/ids/IDS$15$1;-><init>(Lcom/blackberry/ids/IDS$15;)V

    new-instance v2, Lcom/blackberry/ids/IDS$15$2;

    invoke-direct {v2, p0}, Lcom/blackberry/ids/IDS$15$2;-><init>(Lcom/blackberry/ids/IDS$15;)V

    invoke-static {v0, v1, v2}, Lcom/blackberry/ids/ChallengeListener;->start(Landroid/content/Context;Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/blackberry/ids/IDS;->n()I

    move-result v1

    iget-object v2, p0, Lcom/blackberry/ids/IDS$15;->a:Lcom/blackberry/ids/RequestId;

    invoke-static {}, Lcom/blackberry/ids/IDS;->j()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v4

    iget-object v4, v4, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blackberry/ids/BBIDStorage;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/blackberry/ids/IDS;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/blackberry/ids/IDS;->l()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/blackberry/ids/LoginActivity;->startChallenge(Landroid/content/Context;ILcom/blackberry/ids/RequestId;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_61

    const-string v0, "exit uiThread.do_challenge request_id=%s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$15;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :catchall_61
    move-exception v0

    const-string v1, "exit uiThread.do_challenge request_id=%s"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/IDS$15;->a:Lcom/blackberry/ids/RequestId;

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0
.end method
