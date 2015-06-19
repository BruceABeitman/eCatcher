.class public Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private executionScope:Ljava/lang/Object;

.field protected finishAfterDialog:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    if-nez v1, :cond_25

    new-instance v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    invoke-direct {v1}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_25
    iput-boolean p2, v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    iput-object p3, v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    iput-object p1, v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .registers 8

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    #calls: Lde/greenrobot/event/util/ErrorDialogManager;->isInExecutionScope(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z
    invoke-static {v3, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->access$0(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V

    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const-string/jumbo v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_21
    sget-object v3, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-boolean v4, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    iget-object v5, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    invoke-virtual {v3, p1, v4, v5}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_8

    const-string/jumbo v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
