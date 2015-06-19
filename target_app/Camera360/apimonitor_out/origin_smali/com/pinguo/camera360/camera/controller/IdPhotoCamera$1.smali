.class Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "IdPhotoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 8

    sget-object v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "destroyItem position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->clearResource()V

    :cond_2d
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getItemPosition"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 8

    const/4 v4, 0x0

    sget-object v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "instantiateItem position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5a

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$2(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_48
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBlackLayer:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$3(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5a
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->initGuideView()V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
