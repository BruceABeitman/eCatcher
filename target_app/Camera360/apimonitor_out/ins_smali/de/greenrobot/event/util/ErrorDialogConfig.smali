.class public Lde/greenrobot/event/util/ErrorDialogConfig;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"
.field  defaultDialogIconId:I
.field final defaultErrorMsgId:I
.field  defaultEventTypeOnDialogClosed:Ljava/lang/Class;
.field final defaultTitleId:I
.field  eventBus:Lde/greenrobot/event/EventBus;
.field  logExceptions:Z
.field final mapping:Lde/greenrobot/event/util/ExceptionToResourceMapping;
.field final resources:Landroid/content/res/Resources;
.field  tagForLoggingExceptions:Ljava/lang/String;
.method public constructor <init>(Landroid/content/res/Resources;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->logExceptions:Z
iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;
iput p2, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultTitleId:I
iput p3, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultErrorMsgId:I
new-instance v0, Lde/greenrobot/event/util/ExceptionToResourceMapping;
invoke-direct {v0}, Lde/greenrobot/event/util/ExceptionToResourceMapping;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->mapping:Lde/greenrobot/event/util/ExceptionToResourceMapping;
return-void
.end method
.method public addMapping(Ljava/lang/Class;I)Lde/greenrobot/event/util/ErrorDialogConfig;
.registers 4
iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->mapping:Lde/greenrobot/event/util/ExceptionToResourceMapping;
invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/util/ExceptionToResourceMapping;->addMapping(Ljava/lang/Class;I)Lde/greenrobot/event/util/ExceptionToResourceMapping;
return-object p0
.end method
.method public disableExceptionLogging()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->logExceptions:Z
return-void
.end method
.method  getEventBus()Lde/greenrobot/event/EventBus;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->eventBus:Lde/greenrobot/event/EventBus;
if-eqz v0, :cond_7
iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->eventBus:Lde/greenrobot/event/EventBus;
:goto_6
return-object v0
:cond_7
invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;
move-result-object v0
goto :goto_6
.end method
.method public getMessageIdForThrowable(Ljava/lang/Throwable;)I
.registers 6
iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->mapping:Lde/greenrobot/event/util/ExceptionToResourceMapping;
invoke-virtual {v1, p1}, Lde/greenrobot/event/util/ExceptionToResourceMapping;->mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
:goto_c
return v1
:cond_d
sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "No specific message ressource ID found for "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget v1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultErrorMsgId:I
goto :goto_c
.end method
.method public setDefaultDialogIconId(I)V
.registers 2
iput p1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I
return-void
.end method
.method public setDefaultEventTypeOnDialogClosed(Ljava/lang/Class;)V
.registers 2
iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;
return-void
.end method
.method public setEventBus(Lde/greenrobot/event/EventBus;)V
.registers 2
iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->eventBus:Lde/greenrobot/event/EventBus;
return-void
.end method
.method public setTagForLoggingExceptions(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;
return-void
.end method