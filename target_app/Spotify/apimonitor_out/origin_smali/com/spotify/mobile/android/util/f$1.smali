.class final Lcom/spotify/mobile/android/util/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/f;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/d;

.field final synthetic b:Lcom/spotify/mobile/android/util/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/f;Lcom/spotify/mobile/android/util/d;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/util/f$1;->b:Lcom/spotify/mobile/android/util/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/f$1;->a:Lcom/spotify/mobile/android/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/f$1;->a:Lcom/spotify/mobile/android/util/d;

    iget-boolean v0, v0, Lcom/spotify/mobile/android/util/d;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/util/f$1;->a:Lcom/spotify/mobile/android/util/d;

    iget-object v0, v0, Lcom/spotify/mobile/android/util/d;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/spotify/mobile/android/util/f$1;->b:Lcom/spotify/mobile/android/util/f;

    iget-object v0, v0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/f$1;->b:Lcom/spotify/mobile/android/util/f;

    iget-object v0, v0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/util/f$1;->b:Lcom/spotify/mobile/android/util/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/f;->a(Lcom/spotify/mobile/android/util/f;)V

    :cond_25
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
