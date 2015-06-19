.class Lcom/twidroid/ui/a/ai$4;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai;->a(Landroid/content/Context;Lcom/twidroid/ui/themes/b/c;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/twidroid/ui/a/ai;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/ImageView;)V
    .registers 7

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$4;->b:Lcom/twidroid/ui/a/ai;

    iput-object p6, p0, Lcom/twidroid/ui/a/ai$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ubermedia/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$4;->b:Lcom/twidroid/ui/a/ai;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a/ai$4$1;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/a/ai$4$1;-><init>(Lcom/twidroid/ui/a/ai$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
