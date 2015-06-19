.class Lco/vine/android/RecordingFragment$10;
.super Ljava/lang/Object;
.source "RecordingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingFragment;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    iput-object p2, p0, Lco/vine/android/RecordingFragment$10;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const v3, 0x7f02018e

    if-eqz p2, :cond_31

    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mShowGridAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$1200(Lco/vine/android/RecordingFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->val$res:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mColor:I
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$1300(Lco/vine/android/RecordingFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->val$res:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mColor:I
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$10;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    goto :goto_30
.end method
