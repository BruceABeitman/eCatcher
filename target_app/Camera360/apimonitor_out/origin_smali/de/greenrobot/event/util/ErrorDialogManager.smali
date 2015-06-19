.class public Lde/greenrobot/event/util/ErrorDialogManager;
.super Ljava/lang/Object;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;,
        Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_TYPE_ON_CLOSE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.event_type_on_close"

.field public static final KEY_FINISH_AFTER_DIALOG:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.finish_after_dialog"

.field public static final KEY_ICON_ID:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.icon_id"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.message"

.field public static final KEY_TITLE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.title"

.field protected static final TAG_ERROR_DIALOG:Ljava/lang/String; = "de.greenrobot.eventbus.error_dialog"

.field protected static final TAG_ERROR_DIALOG_MANAGER:Ljava/lang/String; = "de.greenrobot.eventbus.error_dialog_manager"

.field public static factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/event/util/ErrorDialogFragmentFactory",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z
    .registers 3

    invoke-static {p0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->isInExecutionScope(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z

    move-result v0

    return v0
.end method

.method public static attachTo(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lde/greenrobot/event/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .registers 6

    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You must set the static factory field to configure error dialogs for your app."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {p0}, Lde/greenrobot/event/util/ErrorDialogManager;->isSupportActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0, p1, p2, p3}, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    :goto_16
    return-void

    :cond_17
    invoke-static {p0, p1, p2, p3}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    goto :goto_16
.end method

.method public static attachTo(Landroid/app/Activity;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    return-void
.end method

.method protected static checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .registers 4

    sget-object v1, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v1, v1, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-boolean v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->logExceptions:Z

    if-eqz v1, :cond_1a

    sget-object v1, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v1, v1, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v0, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    if-nez v0, :cond_12

    sget-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    :cond_12
    const-string/jumbo v1, "Error dialog manager received exception"

    iget-object v2, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    return-void
.end method

.method private static isInExecutionScope(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z
    .registers 4

    if-eqz p0, :cond_14

    instance-of v1, p1, Lde/greenrobot/event/util/HasExecutionScope;

    if-eqz v1, :cond_14

    invoke-interface {p1}, Lde/greenrobot/event/util/HasExecutionScope;->getExecutionScope()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private static isSupportActivity(Landroid/app/Activity;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_25

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Illegal activity type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.support.v4.app.FragmentActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    :cond_33
    return v1

    :cond_34
    const-string/jumbo v3, "com.actionbarsherlock.app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string/jumbo v3, ".SherlockActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, ".SherlockListActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, ".SherlockPreferenceActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    :cond_58
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Please use SherlockFragmentActivity. Illegal activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6e
    const-string/jumbo v3, "android.app.Activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_33

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Illegal activity without fragment support. Either use Android 3.0+ or android.support.v4.app.FragmentActivity."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_86
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_9
.end method
