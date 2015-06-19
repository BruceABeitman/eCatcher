.class Lcom/twidroid/TwidroidClient$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$27;->b:Lcom/twidroid/TwidroidClient;

    iput-object p2, p0, Lcom/twidroid/TwidroidClient$27;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$27;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    const-string v0, "TwidroidClient"

    const-string v1, "No need for closing animation"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$27;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$27;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/twidroid/TwidroidClient$27$1;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$27$1;-><init>(Lcom/twidroid/TwidroidClient$27;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_13
.end method
