.class final Lcom/google/android/gms/internal/cs$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cs;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/cz;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_14

    monitor-exit v6

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ev;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/cz;->e:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading URL in WebView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V

    :goto_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5b

    goto :goto_13

    :catchall_5b
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_5e
    :try_start_5e
    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs$3;->a:Lcom/google/android/gms/internal/cs;

    invoke-static {v2}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_5b

    goto :goto_59
.end method
