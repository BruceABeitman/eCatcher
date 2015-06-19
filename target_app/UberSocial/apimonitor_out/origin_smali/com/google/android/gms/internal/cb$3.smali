.class Lcom/google/android/gms/internal/cb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cb;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cb;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/cf;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_14

    monitor-exit v6

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->d(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/eh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/cf;->e:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading URL in WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v1}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->d(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v1}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ec;->loadUrl(Ljava/lang/String;)V

    :goto_5d
    monitor-exit v6

    goto :goto_13

    :catchall_5f
    move-exception v0

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_5f

    throw v0

    :cond_62
    :try_start_62
    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->d(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v1}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cb$3;->a:Lcom/google/android/gms/internal/cb;

    invoke-static {v2}, Lcom/google/android/gms/internal/cb;->c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ec;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_62 .. :try_end_89} :catchall_5f

    goto :goto_5d
.end method
