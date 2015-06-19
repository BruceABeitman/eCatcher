.class Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;
.super Ljava/lang/Object;
.source "IdPhotoCamera.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageScrollStateChanged i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$10(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x6

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageSelected i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_72

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$11(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_22
    if-ne p1, v3, :cond_7e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$10(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setVisibility(I)V

    :cond_2e
    :goto_2e
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_43

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->restoreGuideView()V

    :cond_43
    add-int/lit8 v0, p1, 0x1

    if-gt v0, v3, :cond_58

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->restoreGuideView()V

    :cond_58
    const/4 v0, 0x3

    if-lt p1, v0, :cond_94

    if-ge p1, v3, :cond_94

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->showIDPhotoBackGround()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$12(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    :goto_62
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->startGuideViewAnimation()V

    return-void

    :cond_72
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$11(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22

    :cond_7e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$10(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$10(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setVisibility(I)V

    goto :goto_2e

    :cond_94
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->hideIDPhotoBackGround()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$13(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    goto :goto_62
.end method
