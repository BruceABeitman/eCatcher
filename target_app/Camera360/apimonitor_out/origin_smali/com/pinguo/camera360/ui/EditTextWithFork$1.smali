.class Lcom/pinguo/camera360/ui/EditTextWithFork$1;
.super Ljava/lang/Object;
.source "EditTextWithFork.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/EditTextWithFork;->setClearButtonEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/EditTextWithFork;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v6

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    #getter for: Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/pinguo/camera360/ui/EditTextWithFork;->access$0(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_38

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v8, :cond_5b

    :cond_38
    iget-object v1, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v3}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    #getter for: Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/pinguo/camera360/ui/EditTextWithFork;->access$1(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v5}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    #getter for: Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/pinguo/camera360/ui/EditTextWithFork;->access$0(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v3}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    #getter for: Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/pinguo/camera360/ui/EditTextWithFork;->access$0(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;->this$0:Lcom/pinguo/camera360/ui/EditTextWithFork;

    invoke-virtual {v5}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e
.end method
