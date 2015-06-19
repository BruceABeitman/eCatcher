.class public abstract Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"
.field protected final config:Lde/greenrobot/event/util/ErrorDialogConfig;
.method protected constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
return-void
.end method
.method protected abstract createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
.end method
.method protected getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
.registers 6
iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget-object v2, p1, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;
invoke-virtual {v1, v2}, Lde/greenrobot/event/util/ErrorDialogConfig;->getMessageIdForThrowable(Ljava/lang/Throwable;)I
move-result v0
iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget-object v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method protected getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;
iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultTitleId:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
.registers 9
invoke-virtual {p1}, Lde/greenrobot/event/util/ThrowableFailureEvent;->isSuppressErrorUi()Z
move-result v3
if-eqz v3, :cond_8
const/4 v3, 0x0
:goto_7
return-object v3
:cond_8
if-eqz p3, :cond_7c
invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_10
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.title"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_23
invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.title"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_23
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.message"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_36
invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.message"
invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_36
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_45
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"
invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_45
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_5e
iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget-object v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;
if-eqz v3, :cond_5e
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"
iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget-object v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:cond_5e
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.icon_id"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_77
iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I
if-eqz v3, :cond_77
const-string/jumbo v3, "de.greenrobot.eventbus.errordialog.icon_id"
iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;
iget v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_77
invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v3
goto :goto_7
:cond_7c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto :goto_10
.end method