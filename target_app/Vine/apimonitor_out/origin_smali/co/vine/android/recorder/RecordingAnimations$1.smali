.class final Lco/vine/android/recorder/RecordingAnimations$1;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "RecordingAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/RecordingAnimations;->getFocusDismissAnimation(Landroid/widget/ImageView;)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$focusIndicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordingAnimations$1;->val$focusIndicator:Landroid/widget/ImageView;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/RecordingAnimations$1;->val$focusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lco/vine/android/recorder/RecordingAnimations$1;->val$focusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method
