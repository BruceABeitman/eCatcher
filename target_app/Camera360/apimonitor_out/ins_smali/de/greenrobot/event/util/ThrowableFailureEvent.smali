.class public Lde/greenrobot/event/util/ThrowableFailureEvent;
.super Ljava/lang/Object;
.source "ThrowableFailureEvent.java"
.implements Lde/greenrobot/event/util/HasExecutionScope;
.field private executionContext:Ljava/lang/Object;
.field protected final suppressErrorUi:Z
.field protected final throwable:Ljava/lang/Throwable;
.method public constructor <init>(Ljava/lang/Throwable;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;
const/4 v0, 0x0
iput-boolean v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/Throwable;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;
iput-boolean p2, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z
return-void
.end method
.method public getExecutionScope()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->executionContext:Ljava/lang/Object;
return-object v0
.end method
.method public getThrowable()Ljava/lang/Throwable;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;
return-object v0
.end method
.method public isSuppressErrorUi()Z
.registers 2
iget-boolean v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z
return v0
.end method
.method public setExecutionScope(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->executionContext:Ljava/lang/Object;
return-void
.end method