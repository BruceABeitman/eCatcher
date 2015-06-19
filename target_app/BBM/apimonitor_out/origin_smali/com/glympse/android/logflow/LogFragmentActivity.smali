.class public Lcom/glympse/android/logflow/LogFragmentActivity;
.super Landroid/support/v4/app/h;
.source "LogFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public moveTaskToBack(Z)Z
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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onBackPressed()V

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onContentChanged()V

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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    return-void
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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onNewIntent(Landroid/content/Intent;)V

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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onPostResume()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
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

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
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

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onResume()V

    return-void
.end method

.method protected onResumeFragments()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onResumeFragments()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onUserInteraction()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openOptionsMenu()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->openOptionsMenu()V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/h;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    return-void
.end method

.method public setTheme(I)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setTheme(I)V

    return-void
.end method

.method public setVisible(Z)V
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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->setVisible(Z)V

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

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->startActivity(Landroid/content/Intent;)V

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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
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

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/h;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
