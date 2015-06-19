.class public final Lcom/userzoom/u;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/Queue;

.field private b:Z

.field private synthetic c:Lcom/userzoom/n;


# direct methods
.method public constructor <init>(Lcom/userzoom/n;)V
    .registers 3

    iput-object p1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/userzoom/u;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/userzoom/u;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/userzoom/u;->b:Z

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 3

    iget-object v0, p0, Lcom/userzoom/u;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final run()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/userzoom/u;->b:Z

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/userzoom/u;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v0, 0x32

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_4

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/userzoom/u;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0}, Lcom/userzoom/n;->a(Lcom/userzoom/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0}, Lcom/userzoom/n;->a(Lcom/userzoom/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v1, v5}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0}, Lcom/userzoom/n;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0}, Lcom/userzoom/n;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HASHCODE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v2}, Lcom/userzoom/n;->b(Lcom/userzoom/n;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v2}, Lcom/userzoom/n;->b(Lcom/userzoom/n;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0, v1}, Lcom/userzoom/n;->a([BLjava/lang/String;)V

    :cond_73
    iget-object v0, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0, v1}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Ljava/lang/String;)V

    :goto_78
    iget-object v0, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0}, Lcom/userzoom/n;->c(Lcom/userzoom/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v1}, Lcom/userzoom/n;->d(Lcom/userzoom/n;)I

    move-result v1

    iget-object v2, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v2}, Lcom/userzoom/n;->e(Lcom/userzoom/n;)I

    move-result v2

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v1}, Lcom/userzoom/n;->c(Lcom/userzoom/n;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v1}, Lcom/userzoom/n;->c(Lcom/userzoom/n;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v1}, Lcom/userzoom/n;->g(Lcom/userzoom/n;)Lcom/userzoom/v;

    move-result-object v1

    iget-object v2, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v2}, Lcom/userzoom/n;->f(Lcom/userzoom/n;)Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/userzoom/v;->a(Ljava/util/List;Z)V

    goto/16 :goto_4

    :cond_b6
    iget-object v0, p0, Lcom/userzoom/u;->c:Lcom/userzoom/n;

    invoke-static {v0, v5}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Ljava/lang/String;)V

    goto :goto_78

    :cond_bc
    return-void
.end method
