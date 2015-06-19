.class final Lcom/spotify/mobile/android/ui/view/WaveView$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/WaveView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/WaveView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/WaveView;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/WaveView$1;->a:Lcom/spotify/mobile/android/ui/view/WaveView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView$1;->a:Lcom/spotify/mobile/android/ui/view/WaveView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/WaveView$1;->setDuration(J)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/WaveView$1;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/WaveView$1;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView$1;->a:Lcom/spotify/mobile/android/ui/view/WaveView;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/view/WaveView;->a(Lcom/spotify/mobile/android/ui/view/WaveView;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView$1;->a:Lcom/spotify/mobile/android/ui/view/WaveView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/WaveView;->invalidate()V

    return-void
.end method
