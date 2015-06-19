.class public Lcom/pinguo/lib/eventbus/PGEventBus;
.super Ljava/lang/Object;
.source "PGEventBus.java"
.field private static mInstance:Lcom/pinguo/lib/eventbus/PGEventBus;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;
return-void
.end method
.method public static getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
.registers 1
sget-object v0, Lcom/pinguo/lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/lib/eventbus/PGEventBus;
if-nez v0, :cond_b
new-instance v0, Lcom/pinguo/lib/eventbus/PGEventBus;
invoke-direct {v0}, Lcom/pinguo/lib/eventbus/PGEventBus;-><init>()V
sput-object v0, Lcom/pinguo/lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/lib/eventbus/PGEventBus;
:cond_b
sget-object v0, Lcom/pinguo/lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/lib/eventbus/PGEventBus;
return-object v0
.end method
.method public post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
.registers 3
invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;
move-result-object v0
invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
return-void
.end method
.method public register(Ljava/lang/Object;)V
.registers 3
invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;
move-result-object v0
invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V
return-void
.end method
.method public unregister(Ljava/lang/Object;)V
.registers 3
invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;
move-result-object v0
invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V
return-void
.end method