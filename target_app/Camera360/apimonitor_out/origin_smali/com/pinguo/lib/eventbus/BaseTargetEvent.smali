.class public Lcom/pinguo/lib/eventbus/BaseTargetEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "BaseTargetEvent.java"


# instance fields
.field private mTargetTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/lib/eventbus/BaseTargetEvent;->mTargetTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTargetTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/eventbus/BaseTargetEvent;->mTargetTag:Ljava/lang/String;

    return-object v0
.end method

.method public isTarget(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/lib/eventbus/BaseTargetEvent;->mTargetTag:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/lib/eventbus/BaseTargetEvent;->mTargetTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/lib/eventbus/BaseTargetEvent;->mTargetTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
