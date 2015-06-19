.class public Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;
.super Ljava/lang/Object;
.source "PGEventBus.java"


# static fields
.field private static mInstance:Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static getInstance()Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;
    .registers 1

    sget-object v0, Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;-><init>()V

    sput-object v0, Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;

    :cond_b
    sget-object v0, Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;->mInstance:Lcom/pinguo/Camera360Lib/eventbus/PGEventBus;

    return-object v0
.end method


# virtual methods
.method public post(Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;)V
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
