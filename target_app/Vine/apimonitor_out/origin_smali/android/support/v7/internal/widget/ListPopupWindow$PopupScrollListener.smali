.class Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2f

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    #getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    #getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$1000(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    #getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    #getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    :cond_2f
    return-void
.end method
