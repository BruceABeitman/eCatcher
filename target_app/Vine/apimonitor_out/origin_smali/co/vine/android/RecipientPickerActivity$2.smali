.class Lco/vine/android/RecipientPickerActivity$2;
.super Ljava/lang/Object;
.source "RecipientPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecipientPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;


# direct methods
.method constructor <init>(Lco/vine/android/RecipientPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$2;->this$0:Lco/vine/android/RecipientPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lco/vine/android/RecipientPickerActivity$2;->this$0:Lco/vine/android/RecipientPickerActivity;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/RecipientPickerActivity$2;->this$0:Lco/vine/android/RecipientPickerActivity;

    #getter for: Lco/vine/android/RecipientPickerActivity;->mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lco/vine/android/RecipientPickerActivity;->access$000(Lco/vine/android/RecipientPickerActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lco/vine/android/RecipientPickerActivity$2;->this$0:Lco/vine/android/RecipientPickerActivity;

    #getter for: Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/RecipientPickerActivity;->access$100(Lco/vine/android/RecipientPickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
