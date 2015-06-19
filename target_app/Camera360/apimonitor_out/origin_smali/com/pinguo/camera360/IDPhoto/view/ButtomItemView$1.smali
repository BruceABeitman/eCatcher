.class Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;
.super Ljava/lang/Object;
.source "ButtomItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_13
    return-void
.end method
