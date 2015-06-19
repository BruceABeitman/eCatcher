.class LvStudio/Android/Camera360/activity/GuideViewFragment$3;
.super Ljava/lang/Object;
.source "GuideViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LvStudio/Android/Camera360/activity/GuideViewFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;


# direct methods
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
    .registers 2

    iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(LvStudio/Android/Camera360/activity/GuideViewFragment$3;)LvStudio/Android/Camera360/activity/GuideViewFragment;
    .registers 2

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const-wide/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSelectedViewPagerIndex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
    invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$11(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mMaxIndex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
    invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$12(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$11(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v1

    iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
    invoke-static {v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$12(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$13(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$14(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$15(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$13(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string/jumbo v2, "#fffce8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$13(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$14(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$14(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setBackgroundResource(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$15(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a1
    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_b3

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$17(LvStudio/Android/Camera360/activity/GuideViewFragment;Landroid/os/Handler;)V

    :cond_b3
    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->releaseGuideView()Z
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$18(LvStudio/Android/Camera360/activity/GuideViewFragment;)Z

    move-result v1

    if-eqz v1, :cond_d2

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$19(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_102

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->installDefaultData()V
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$20(LvStudio/Android/Camera360/activity/GuideViewFragment;)V

    :cond_d2
    :goto_d2
    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
    invoke-static {v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v2

    invoke-static {v2}, LvStudio/Android/Camera360/PreferencesAdapter;->adapterPreferences(Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)I

    move-result v2

    #setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
    invoke-static {v1, v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$5(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_version_code"

    iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
    invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$6(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->isNeedUpdateDispatch()Z
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$22(LvStudio/Android/Camera360/activity/GuideViewFragment;)Z

    new-instance v1, LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;

    invoke-direct {v1, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment$3;)V

    invoke-virtual {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;->start()V

    goto/16 :goto_c

    :cond_102
    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
    invoke-static {v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$19(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v2

    iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
    invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$10(LvStudio/Android/Camera360/activity/GuideViewFragment;)I

    move-result v3

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->updateAdapterData(II)Z
    invoke-static {v1, v2, v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$21(LvStudio/Android/Camera360/activity/GuideViewFragment;II)Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d2

    :cond_120
    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->enterCamera()V
    invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$7(LvStudio/Android/Camera360/activity/GuideViewFragment;)V

    goto :goto_d2
.end method
