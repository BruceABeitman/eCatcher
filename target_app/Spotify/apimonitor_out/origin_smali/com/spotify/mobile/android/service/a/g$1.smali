.class final Lcom/spotify/mobile/android/service/a/g$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/a/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/a/g;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->b:Z

    return-void
.end method

.method private varargs a()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->a(Lcom/spotify/mobile/android/service/a/g;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->b(Lcom/spotify/mobile/android/service/a/g;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->c(Lcom/spotify/mobile/android/service/a/g;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1b

    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/a/g$1;->b:Z

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/a/g$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v1

    goto :goto_1a

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->d(Lcom/spotify/mobile/android/service/a/g;)Lcom/google/android/gms/a/a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "775475490056"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/a/a;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_34} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_34} :catch_49

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/a/g$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3d

    if-nez v0, :cond_51

    :cond_3d
    move-object v0, v1

    goto :goto_1a

    :catch_3f
    move-exception v0

    const-string v2, "Failed to get GCM registration id"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1a

    :catch_49
    move-exception v0

    const-string v2, "Failed to get GCM registration id"

    invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1a

    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v3}, Lcom/spotify/mobile/android/service/a/g;->e(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cl;->h()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/a/g;->a(Lcom/spotify/mobile/android/service/a/g;Landroid/util/Pair;)V

    goto :goto_1a
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/a/g$1;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->g(Lcom/spotify/mobile/android/service/a/g;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_48

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->f(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/service/a/h;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/a/g$1;->b:Z

    invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/service/a/h;->a(Ljava/lang/String;Z)V

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->c()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->c()J

    move-result-wide v0

    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/a/g;->e(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(J)V

    :goto_35
    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->g(Lcom/spotify/mobile/android/service/a/g;)Landroid/os/AsyncTask;

    return-void

    :cond_3b
    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->d()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2c

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->d()J

    move-result-wide v0

    goto :goto_2c

    :cond_48
    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$1;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->e(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    goto :goto_35
.end method
