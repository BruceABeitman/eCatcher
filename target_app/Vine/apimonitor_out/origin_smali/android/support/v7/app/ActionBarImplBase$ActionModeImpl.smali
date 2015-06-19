.class Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;
.super Landroid/support/v7/view/ActionMode;
.source "ActionBarImplBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplBase;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    if-eq v0, p0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$200(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mHiddenBySystem:Z
    invoke-static {v1}, Landroid/support/v7/app/ActionBarImplBase;->access$300(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v1

    #calls: Landroid/support/v7/app/ActionBarImplBase;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Landroid/support/v7/app/ActionBarImplBase;->access$400(ZZZ)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iput-object p0, v0, Landroid/support/v7/app/ActionBarImplBase;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v1, v0, Landroid/support/v7/app/ActionBarImplBase;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    :goto_25
    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarImplBase;->animateToMode(Z)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->closeMode()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$600(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iput-object v3, v0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    goto :goto_8

    :cond_45
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    goto :goto_25
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->invalidate()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_4
.end method

.method public onMenuModeChange(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->invalidate()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_4
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
