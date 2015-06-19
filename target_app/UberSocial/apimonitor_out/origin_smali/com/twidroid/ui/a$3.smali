.class final Lcom/twidroid/ui/a$3;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/view/View;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 7

    iput-object p4, p0, Lcom/twidroid/ui/a$3;->a:Landroid/view/View;

    iput-object p5, p0, Lcom/twidroid/ui/a$3;->b:Landroid/os/Handler;

    iput-object p6, p0, Lcom/twidroid/ui/a$3;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a$3;->a:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/ui/a$3;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a$3$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ui/a$3$1;-><init>(Lcom/twidroid/ui/a$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
