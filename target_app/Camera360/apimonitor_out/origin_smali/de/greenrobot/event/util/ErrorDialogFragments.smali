.class public Lde/greenrobot/event/util/ErrorDialogFragments;
.super Ljava/lang/Object;
.source "ErrorDialogFragments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;,
        Lde/greenrobot/event/util/ErrorDialogFragments$Support;
    }
.end annotation


# static fields
.field public static ERROR_DIALOG_ICON:I

.field public static EVENT_TYPE_ON_CLICK:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lde/greenrobot/event/util/ErrorDialogFragments;->ERROR_DIALOG_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lde/greenrobot/event/util/ErrorDialogFragments;->ERROR_DIALOG_ICON:I

    if-eqz v1, :cond_22

    sget v1, Lde/greenrobot/event/util/ErrorDialogFragments;->ERROR_DIALOG_ICON:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_22
    const v1, 0x104000a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static handleOnClick(Landroid/content/DialogInterface;ILandroid/app/Activity;Landroid/os/Bundle;)V
    .registers 10

    sget-object v4, Lde/greenrobot/event/util/ErrorDialogFragments;->EVENT_TYPE_ON_CLICK:Ljava/lang/Class;

    if-eqz v4, :cond_15

    :try_start_4
    sget-object v4, Lde/greenrobot/event/util/ErrorDialogFragments;->EVENT_TYPE_ON_CLICK:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_25

    move-result-object v1

    sget-object v4, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v4, v4, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v4}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_15
    const-string/jumbo v4, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_24
    return-void

    :catch_25
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Event cannot be constructed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
