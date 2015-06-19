.class Lcom/facebook/aw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/bk;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/facebook/aw;


# direct methods
.method constructor <init>(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/aw$3;->c:Lcom/facebook/aw;

    iput-object p2, p0, Lcom/facebook/aw$3;->a:Lcom/facebook/bk;

    iput-object p3, p0, Lcom/facebook/aw$3;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/aw$3;->c:Lcom/facebook/aw;

    invoke-static {v0}, Lcom/facebook/aw;->b(Lcom/facebook/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bf;

    new-instance v2, Lcom/facebook/aw$3$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/aw$3$1;-><init>(Lcom/facebook/aw$3;Lcom/facebook/bf;)V

    iget-object v0, p0, Lcom/facebook/aw$3;->c:Lcom/facebook/aw;

    invoke-static {v0}, Lcom/facebook/aw;->c(Lcom/facebook/aw;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/aw;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_25
    return-void
.end method
