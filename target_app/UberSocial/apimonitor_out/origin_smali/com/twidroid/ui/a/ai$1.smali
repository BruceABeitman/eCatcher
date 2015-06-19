.class Lcom/twidroid/ui/a/ai$1;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twidroid/ui/a/ai;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    iput-object p6, p0, Lcom/twidroid/ui/a/ai$1;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ubermedia/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twidroid/ui/a/ai;->g:Z

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a/ai$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ui/a/ai$1$1;-><init>(Lcom/twidroid/ui/a/ai$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a/ai$1$2;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/a/ai$1$2;-><init>(Lcom/twidroid/ui/a/ai$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
