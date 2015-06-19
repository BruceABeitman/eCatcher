.class public Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OnEffectSelectEvent.java"


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mFromActivityTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->mEffect:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->mFromActivityTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffect()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->mEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->mTag:Ljava/lang/String;

    return-void
.end method
