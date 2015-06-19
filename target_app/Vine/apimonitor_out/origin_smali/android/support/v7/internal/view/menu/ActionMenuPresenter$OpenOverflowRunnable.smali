.class Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->changeMenuMode()V

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    #setter for: Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->access$102(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    :cond_24
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    #setter for: Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->access$302(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method
