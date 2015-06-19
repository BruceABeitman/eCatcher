.class Lcom/twidroid/ui/widgets/CachedImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/widgets/CachedImageView;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView;->b:Lcom/twidroid/ui/widgets/d;

    instance-of v0, v0, Lcom/twidroid/ui/widgets/d;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView;->b:Lcom/twidroid/ui/widgets/d;

    iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-interface {v0, v1}, Lcom/twidroid/ui/widgets/d;->a(Lcom/twidroid/ui/widgets/CachedImageView;)V

    :cond_2e
    iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;

    :cond_33
    :goto_33
    return-void

    :cond_34
    new-instance v0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/ui/widgets/CachedImageView$1$1;-><init>(Lcom/twidroid/ui/widgets/CachedImageView$1;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-static {v1}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Lcom/twidroid/ui/widgets/CachedImageView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/CachedImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    :cond_47
    iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-static {v1}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Lcom/twidroid/ui/widgets/CachedImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33
.end method
