.class Lcom/millennialmedia/android/br;
.super Lcom/millennialmedia/android/az;
.source "SourceFile"


# instance fields
.field f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/bp;)V
    .registers 4

    invoke-direct {p0}, Lcom/millennialmedia/android/az;-><init>()V

    if-eqz p1, :cond_10

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/br;->f:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Lcom/millennialmedia/android/bp;->k:J

    iput-wide v0, p0, Lcom/millennialmedia/android/br;->e:J

    :cond_10
    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/millennialmedia/android/az;->b(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1b
    iget-object v0, p0, Lcom/millennialmedia/android/br;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->d(Lcom/millennialmedia/android/bp;)V

    :cond_28
    return-void
.end method

.method public c(Landroid/net/Uri;)Z
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/br;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/br;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/as;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
