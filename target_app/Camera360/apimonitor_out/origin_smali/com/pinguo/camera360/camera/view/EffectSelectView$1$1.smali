.class Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;
.super Ljava/lang/Object;
.source "EffectSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->onGridItemClick(IIILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

.field private final synthetic val$position:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;ILandroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

    iput p2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->val$position:I

    iput-object p3, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;)Lcom/pinguo/camera360/camera/view/EffectSelectView;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;

    move-result-object v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;)Lcom/pinguo/camera360/camera/view/EffectSelectView;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;)Lcom/pinguo/camera360/camera/view/EffectSelectView;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;

    move-result-object v3

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->this$1:Lcom/pinguo/camera360/camera/view/EffectSelectView$1;

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;)Lcom/pinguo/camera360/camera/view/EffectSelectView;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    move-result-object v2

    iget v4, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->val$position:I

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;->selectEffect(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;->val$view:Landroid/view/View;

    const v3, 0x7f0a029a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_55

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_55
    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectSelect(Ljava/lang/String;)V

    :cond_58
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
