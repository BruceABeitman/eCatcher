.class Lcom/twidroid/TwidroidClient$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$25;->b:Lcom/twidroid/TwidroidClient;

    iput-object p2, p0, Lcom/twidroid/TwidroidClient$25;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/high16 v2, 0x3f80

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$25;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$25;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/twidroid/TwidroidClient$25$1;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$25$1;-><init>(Lcom/twidroid/TwidroidClient$25;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
