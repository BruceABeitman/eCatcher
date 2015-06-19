.class Lcom/pinguo/share/ui/ShareTitleView$2;
.super Ljava/lang/Object;
.source "ShareTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ui/ShareTitleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/ui/ShareTitleView;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ui/ShareTitleView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/ShareTitleView$2;->this$0:Lcom/pinguo/share/ui/ShareTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareTitleView$2;->this$0:Lcom/pinguo/share/ui/ShareTitleView;

    #getter for: Lcom/pinguo/share/ui/ShareTitleView;->mClickListener:Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/share/ui/ShareTitleView;->access$0(Lcom/pinguo/share/ui/ShareTitleView;)Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareTitleView$2;->this$0:Lcom/pinguo/share/ui/ShareTitleView;

    #getter for: Lcom/pinguo/share/ui/ShareTitleView;->mClickListener:Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
    invoke-static {v0}, Lcom/pinguo/share/ui/ShareTitleView;->access$0(Lcom/pinguo/share/ui/ShareTitleView;)Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;->onRightBtnClick()V

    :cond_11
    return-void
.end method
