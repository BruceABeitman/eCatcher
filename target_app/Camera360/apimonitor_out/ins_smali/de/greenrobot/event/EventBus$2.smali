.class  Lde/greenrobot/event/EventBus$2;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"
.field final synthetic this$0:Lde/greenrobot/event/EventBus;
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
.registers 2
iput-object p1, p0, Lde/greenrobot/event/EventBus$2;->this$0:Lde/greenrobot/event/EventBus;
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected initialValue()Lde/greenrobot/event/EventBus$BooleanWrapper;
.registers 2
new-instance v0, Lde/greenrobot/event/EventBus$BooleanWrapper;
invoke-direct {v0}, Lde/greenrobot/event/EventBus$BooleanWrapper;-><init>()V
return-object v0
.end method
.method protected bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lde/greenrobot/event/EventBus$2;->initialValue()Lde/greenrobot/event/EventBus$BooleanWrapper;
move-result-object v0
return-object v0
.end method