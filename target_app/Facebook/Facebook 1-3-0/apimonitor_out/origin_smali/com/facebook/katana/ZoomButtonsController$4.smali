.class Lcom/facebook/katana/ZoomButtonsController$4;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {}, Lcom/facebook/katana/ZoomButtonsController;->access$5()I

    move-result v1

    #calls: Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
    invoke-static {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->access$6(Lcom/facebook/katana/ZoomButtonsController;I)V

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    #getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    #getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_1b
    return-void
.end method
