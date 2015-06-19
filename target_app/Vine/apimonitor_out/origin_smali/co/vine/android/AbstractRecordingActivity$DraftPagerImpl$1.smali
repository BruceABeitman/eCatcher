.class Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getItem(I)Landroid/support/v4/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

.field final synthetic val$fragment:Lco/vine/android/DraftFragment;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;Lco/vine/android/DraftFragment;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iput-object p2, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->val$fragment:Lco/vine/android/DraftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16

    const/16 v8, 0x12c

    const/4 v13, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1900(Lco/vine/android/AbstractRecordingActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #calls: Lco/vine/android/AbstractRecordingActivity;->isResuming()Z
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1500(Lco/vine/android/AbstractRecordingActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "User clicked on fragment to resume."

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #setter for: Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
    invoke-static {v0, v13}, Lco/vine/android/AbstractRecordingActivity;->access$3202(Lco/vine/android/AbstractRecordingActivity;Z)Z

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->val$fragment:Lco/vine/android/DraftFragment;

    #calls: Lco/vine/android/AbstractRecordingActivity;->buildAndShowFloatingView(Lco/vine/android/DraftFragment;)V
    invoke-static {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->access$3300(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/DraftFragment;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #calls: Lco/vine/android/AbstractRecordingActivity;->releasePlayers()V
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$3400(Lco/vine/android/AbstractRecordingActivity;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$3500(Lco/vine/android/AbstractRecordingActivity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v0

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$3600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    div-float v12, v11, v0

    new-instance v0, Lco/vine/android/animation/MoveResizeAnimator;

    const/4 v1, 0x2

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v2, v2, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$3700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    float-to-double v4, v12

    const-wide/high16 v6, 0x4000

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;IDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lco/vine/android/animation/MoveResizeAnimator;->start()V

    new-instance v0, Lco/vine/android/animation/MoveResizeAnimator;

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v1, v1, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$3600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v1, v1, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$3700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v3, v1, 0x2

    float-to-double v4, v12

    float-to-double v6, v12

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;->this$1:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    iget-object v9, v1, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    move v1, v13

    invoke-direct/range {v0 .. v10}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;IDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lco/vine/android/animation/MoveResizeAnimator;->start()V

    goto/16 :goto_a

    :pswitch_data_9e
    .packed-switch 0x7f0a00d6
        :pswitch_b
    .end packed-switch
.end method
