.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;
.super Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;
.source "PGEditEffectMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PGEditEffectFragmentActionForReplace"
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    return-void
.end method


# virtual methods
.method public dialogCancel()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->hideEffectFragment(Z)V

    return-void
.end method

.method public onSelect(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setChildList(Ljava/util/List;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->hideEffectFragment(Z)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideAndShowChildEffectAnimation()V
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e
.end method
