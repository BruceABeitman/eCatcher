.class public Lcom/glympse/android/logflow/LogDialogFragment;
.super Landroid/support/v4/app/d;
.source "LogDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onDestroy()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onDestroyOptionsMenu()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onHiddenChanged(Z)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onLowMemory()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setCancelable(Z)V

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setMenuVisibility(Z)V

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setRetainInstance(Z)V

    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setShowsDialog(Z)V

    return-void
.end method

.method public setStyle(II)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->setStyle(II)V

    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->setUserVisibleHint(Z)V

    return-void
.end method

.method public show(Landroid/support/v4/app/w;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->show(Landroid/support/v4/app/w;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public show(Landroid/support/v4/app/n;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->show(Landroid/support/v4/app/n;Ljava/lang/String;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
