.class final Lco/vine/android/recorder/RecordingAnimations$3;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "RecordingAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/RecordingAnimations;->getFocusAnimationSet(Landroid/view/animation/AlphaAnimation;Landroid/widget/ImageView;)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$focusIndicator:Landroid/widget/ImageView;

.field final synthetic val$focusResizeAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/view/animation/ScaleAnimation;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/RecordingAnimations$3;->val$focusIndicator:Landroid/widget/ImageView;

    iput-object p2, p0, Lco/vine/android/recorder/RecordingAnimations$3;->val$focusResizeAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/RecordingAnimations$3;->val$focusIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/recorder/RecordingAnimations$3;->val$focusResizeAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
