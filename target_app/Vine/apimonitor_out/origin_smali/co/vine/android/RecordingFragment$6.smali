.class Lco/vine/android/RecordingFragment$6;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "RecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingFragment;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->setGridOn(Z)V

    :cond_12
    iget-object v0, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$6;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
