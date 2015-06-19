.class LvStudio/Android/Camera360/activity/GuideViewFragment$4;
.super Ljava/lang/Object;
.source "GuideViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$4;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$4;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$4;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->startBtnDown()V

    goto :goto_7

    :pswitch_1b
    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$4;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$4;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->startBtnUp()V

    goto :goto_7

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method
