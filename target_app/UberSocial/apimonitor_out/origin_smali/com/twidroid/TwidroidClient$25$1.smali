.class Lcom/twidroid/TwidroidClient$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$25;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$25;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$25;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$25$1;->a:Lcom/twidroid/TwidroidClient$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$25$1;->a:Lcom/twidroid/TwidroidClient$25;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$25;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method