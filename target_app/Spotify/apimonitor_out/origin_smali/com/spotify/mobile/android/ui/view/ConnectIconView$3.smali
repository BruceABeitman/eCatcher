.class final Lcom/spotify/mobile/android/ui/view/ConnectIconView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ILandroid/animation/Animator$AnimatorListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$3;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$3;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(Lcom/spotify/mobile/android/ui/view/ConnectIconView;F)V

    return-void
.end method
