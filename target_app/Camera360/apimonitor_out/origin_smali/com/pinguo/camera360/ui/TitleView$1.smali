.class Lcom/pinguo/camera360/ui/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/TitleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/TitleView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/TitleView$1;->this$0:Lcom/pinguo/camera360/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TitleView$1;->this$0:Lcom/pinguo/camera360/ui/TitleView;

    #getter for: Lcom/pinguo/camera360/ui/TitleView;->mClickListener:Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/TitleView;->access$0(Lcom/pinguo/camera360/ui/TitleView;)Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TitleView$1;->this$0:Lcom/pinguo/camera360/ui/TitleView;

    #getter for: Lcom/pinguo/camera360/ui/TitleView;->mClickListener:Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/TitleView;->access$0(Lcom/pinguo/camera360/ui/TitleView;)Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;->onBackClick()V

    :cond_11
    return-void
.end method
