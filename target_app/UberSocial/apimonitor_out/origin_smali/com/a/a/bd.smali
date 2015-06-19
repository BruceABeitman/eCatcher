.class final Lcom/a/a/bd;
.super Lcom/a/a/a/bb;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:F

.field private synthetic c:Ljava/util/concurrent/CountDownLatch;

.field private synthetic d:Lcom/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/e;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    iput-object p1, p0, Lcom/a/a/bd;->d:Lcom/a/a/e;

    iput-object p2, p0, Lcom/a/a/bd;->a:Landroid/content/Context;

    iput p3, p0, Lcom/a/a/bd;->b:F

    iput-object p4, p0, Lcom/a/a/bd;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/a/a/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/a/a/bd;->d:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/bd;->a:Landroid/content/Context;

    iget v2, p0, Lcom/a/a/bd;->b:F

    invoke-static {v0, v1, v2}, Lcom/a/a/e;->a(Lcom/a/a/e;Landroid/content/Context;F)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/a/a/bd;->d:Lcom/a/a/e;

    invoke-static {v0}, Lcom/a/a/e;->a(Lcom/a/a/e;)Lcom/a/a/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/bf;->e()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1b

    :cond_15
    iget-object v0, p0, Lcom/a/a/bd;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_31

    iget-object v0, p0, Lcom/a/a/bd;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1a

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/a/a/bd;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
