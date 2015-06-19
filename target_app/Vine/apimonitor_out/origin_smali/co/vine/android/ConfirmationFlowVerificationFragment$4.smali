.class Lco/vine/android/ConfirmationFlowVerificationFragment$4;
.super Ljava/lang/Object;
.source "ConfirmationFlowVerificationFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConfirmationFlowVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingIn:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$400(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingIn:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$400(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingOut:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$500(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingOut:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$500(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
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
