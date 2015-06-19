.class Lcom/twidroid/activity/t;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/twidroid/activity/SendTweet;

.field private d:Lcom/twidroid/model/twitter/c;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/SendTweet;Z)V
    .registers 5

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-boolean v1, p0, Lcom/twidroid/activity/t;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/t;->e:Z

    iput-boolean v1, p0, Lcom/twidroid/activity/t;->b:Z

    iput-boolean v1, p0, Lcom/twidroid/activity/t;->f:Z

    iput-boolean p2, p0, Lcom/twidroid/activity/t;->e:Z

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/t;->b([Ljava/lang/Object;)Lcom/twidroid/activity/s;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twidroid/activity/s;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->c(Lcom/twidroid/activity/SendTweet;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iput-boolean v2, v0, Lcom/twidroid/activity/SendTweet;->aq:Z

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/twidroid/activity/t;->f:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/twidroid/activity/t;->e:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2f
    invoke-virtual {p1}, Lcom/twidroid/activity/s;->b()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/SendTweet;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-boolean v0, p0, Lcom/twidroid/activity/t;->e:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0, v2, v2, v2}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    const-string v1, ""

    invoke-static {p1}, Lcom/twidroid/activity/s;->a(Lcom/twidroid/activity/s;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/b/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p1}, Lcom/twidroid/activity/s;->a()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/16 v1, 0x177

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_5d
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/activity/s;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/t;->a(Lcom/twidroid/activity/s;)V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/twidroid/activity/t;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs b([Ljava/lang/Object;)Lcom/twidroid/activity/s;
    .registers 16

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lcom/twidroid/model/twitter/c;

    iput-object v1, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    const/4 v1, 0x2

    :goto_8
    if-lez v1, :cond_317

    add-int/lit8 v11, v1, -0x1

    :try_start_c
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16
    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_302

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/twidroid/activity/r;

    move-object v10, v0

    invoke-static {v10}, Lcom/twidroid/activity/r;->c(Lcom/twidroid/activity/r;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/twidroid/activity/SendTweet;->aq:Z

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->b()Z

    move-result v1

    if-eqz v1, :cond_be

    const-string v1, "com.twidroid.SendTweet"

    const-string v2, "Video found"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v2, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v3}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v3, v4}, Lcom/twidroid/d/v;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twidroid/net/a/d/e;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)Lcom/twidroid/net/a/d/e;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twidroid/activity/t;->b:Z

    :goto_59
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    instance-of v1, v1, Lcom/twidroid/net/a/b/a;

    if-eqz v1, :cond_133

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->ck()I

    move-result v2

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;Ljava/lang/String;)Ljava/lang/String;

    :goto_79
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v2, Lcom/twidroid/activity/t$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/t$1;-><init>(Lcom/twidroid/activity/t;)V

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/MyEditText;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    instance-of v1, v1, Lcom/twidroid/net/a/b/a;

    if-eqz v1, :cond_187

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twidroid/activity/t;->f:Z
    :try_end_90
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_c .. :try_end_90} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_90} :catch_104
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_90} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_90} :catch_198

    goto :goto_16

    :catch_91
    move-exception v1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    const-string v1, "com.twidroid.SendTweet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_30e

    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    :goto_bd
    return-object v1

    :cond_be
    :try_start_be
    const-string v1, "com.twidroid.SendTweet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v3}, Lcom/twidroid/activity/SendTweet;->n(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v3, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->n(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->c()I

    move-result v1

    if-nez v1, :cond_131

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    iget-object v5, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v1, v5}, Lcom/twidroid/d/v;->g(Landroid/content/Context;)I

    move-result v1

    :goto_fc
    invoke-static {v3, v4, v1}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;I)Lcom/twidroid/net/a/b/b;

    move-result-object v1

    iput-object v1, v2, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
    :try_end_102
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_be .. :try_end_102} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_be .. :try_end_102} :catch_104
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_102} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_be .. :try_end_102} :catch_198

    goto/16 :goto_59

    :catch_104
    move-exception v1

    move-object v2, v1

    const-string v1, "com.twidroid.SendTweet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    if-nez v11, :cond_311

    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto :goto_bd

    :cond_131
    const/4 v1, 0x0

    goto :goto_fc

    :cond_133
    :try_start_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    invoke-virtual {v2}, Lcom/twidroid/net/a/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xxxxxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;Ljava/lang/String;)Ljava/lang/String;
    :try_end_157
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_133 .. :try_end_157} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_133 .. :try_end_157} :catch_104
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_157} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_133 .. :try_end_157} :catch_198

    goto/16 :goto_79

    :catch_159
    move-exception v1

    move-object v2, v1

    const-string v1, "com.twidroid.SendTweet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-nez v11, :cond_314

    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto/16 :goto_bd

    :cond_187
    :try_start_187
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->t(Lcom/twidroid/activity/SendTweet;)Z

    move-result v1

    if-nez v1, :cond_1b7

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    invoke-virtual {v1}, Lcom/twidroid/net/a/b/c;->a()V
    :try_end_196
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_187 .. :try_end_196} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_187 .. :try_end_196} :catch_104
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_196} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_187 .. :try_end_196} :catch_198

    goto/16 :goto_16

    :catch_198
    move-exception v1

    move-object v2, v1

    const-string v1, "com.twidroid.SendTweet"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v3, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    new-instance v4, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto/16 :goto_bd

    :cond_1b7
    :try_start_1b7
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/b/c;->a(Z)V

    const-string v1, "attach"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "service"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v4, v4, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    invoke-virtual {v4}, Lcom/twidroid/net/a/b/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    const-string v1, "com.twidroid.SendTweet"

    const-string v2, "Loading photo from MediaUploader"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->b()Z

    move-result v1

    if-eqz v1, :cond_291

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1f5
    invoke-virtual {v10}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_299

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_299

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_299

    const/4 v1, 0x1

    :goto_21f
    invoke-virtual {v10}, Lcom/twidroid/activity/r;->b()Z

    move-result v2

    if-nez v2, :cond_29b

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->k()Z

    move-result v2

    if-nez v2, :cond_29b

    if-nez v1, :cond_29b

    const/4 v1, 0x1

    :goto_22e
    if-eqz v1, :cond_235

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1, v3}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)V

    :cond_235
    iget-object v1, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->b()Z

    move-result v1

    if-eqz v1, :cond_29d

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;

    move-result-object v8

    iget-object v13, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    iget-object v2, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    iget-object v4, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v5, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v5, v5, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    iget-object v6, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v6, v6, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;

    iget-object v7, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v7, v7, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v7}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v9, v9, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    invoke-virtual/range {v1 .. v9}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    :goto_279
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    if-nez v1, :cond_2c7

    invoke-virtual {v10}, Lcom/twidroid/activity/r;->b()Z

    move-result v1

    if-nez v1, :cond_2c7

    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto/16 :goto_bd

    :cond_291
    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1, v10}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1f5

    :cond_299
    const/4 v1, 0x0

    goto :goto_21f

    :cond_29b
    const/4 v1, 0x0

    goto :goto_22e

    :cond_29d
    iget-object v13, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    iget-object v2, p0, Lcom/twidroid/activity/t;->d:Lcom/twidroid/model/twitter/c;

    iget-object v4, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v5, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v5, v5, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    iget-object v6, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v6, v6, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;

    iget-object v7, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v7, v7, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v7}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v9, v9, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    invoke-virtual/range {v1 .. v9}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    goto :goto_279

    :cond_2c7
    invoke-virtual {v10}, Lcom/twidroid/activity/r;->b()Z

    move-result v1

    if-eqz v1, :cond_2d9

    :goto_2cd
    iget-boolean v1, p0, Lcom/twidroid/activity/t;->b:Z
    :try_end_2cf
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1b7 .. :try_end_2cf} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b7 .. :try_end_2cf} :catch_104
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_2cf} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b7 .. :try_end_2cf} :catch_198

    if-eqz v1, :cond_2d9

    const-wide/16 v1, 0x1f4

    :try_start_2d3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2d6} :catch_2d7
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2d3 .. :try_end_2d6} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d3 .. :try_end_2d6} :catch_104
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d3 .. :try_end_2d6} :catch_198

    goto :goto_2cd

    :catch_2d7
    move-exception v1

    goto :goto_2cd

    :cond_2d9
    :try_start_2d9
    iget-boolean v1, p0, Lcom/twidroid/activity/t;->a:Z

    if-eqz v1, :cond_2f6

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/twidroid/activity/r;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v2, Lcom/twidroid/activity/t$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/t$2;-><init>(Lcom/twidroid/activity/t;)V

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/MyEditText;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_16

    :cond_2f6
    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto/16 :goto_bd

    :cond_302
    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V
    :try_end_30c
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2d9 .. :try_end_30c} :catch_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d9 .. :try_end_30c} :catch_104
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_30c} :catch_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d9 .. :try_end_30c} :catch_198

    goto/16 :goto_bd

    :cond_30e
    move v1, v11

    goto/16 :goto_8

    :cond_311
    move v1, v11

    goto/16 :goto_8

    :cond_314
    move v1, v11

    goto/16 :goto_8

    :cond_317
    new-instance v1, Lcom/twidroid/activity/s;

    iget-object v2, p0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twidroid/activity/s;-><init>(Lcom/twidroid/activity/SendTweet;Ljava/lang/Exception;ZZ)V

    goto/16 :goto_bd
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/t;->b:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/t;->b(Z)Z

    return-void
.end method
