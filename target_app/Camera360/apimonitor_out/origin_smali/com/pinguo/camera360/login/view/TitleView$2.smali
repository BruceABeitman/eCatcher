.class Lcom/pinguo/camera360/login/view/TitleView$2;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/view/TitleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/view/TitleView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/view/TitleView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/view/TitleView$2;->this$0:Lcom/pinguo/camera360/login/view/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView$2;->this$0:Lcom/pinguo/camera360/login/view/TitleView;

    #getter for: Lcom/pinguo/camera360/login/view/TitleView;->mClickListener:Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/view/TitleView;->access$0(Lcom/pinguo/camera360/login/view/TitleView;)Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView$2;->this$0:Lcom/pinguo/camera360/login/view/TitleView;

    #getter for: Lcom/pinguo/camera360/login/view/TitleView;->mClickListener:Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/view/TitleView;->access$0(Lcom/pinguo/camera360/login/view/TitleView;)Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;->onRightBtnClick()V

    :cond_11
    return-void
.end method
