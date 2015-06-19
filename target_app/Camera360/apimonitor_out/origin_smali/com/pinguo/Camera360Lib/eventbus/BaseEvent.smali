.class public Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# static fields
.field private static mCurrentId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private _id:I

.field private mFromActivityTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->mCurrentId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->nextId()I

    move-result v0

    iput v0, p0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->_id:I

    return-void
.end method

.method private static nextId()I
    .registers 1

    sget-object v0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->mCurrentId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getFromTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->mFromActivityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->_id:I

    return v0
.end method

.method public setFromTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/eventbus/BaseEvent;->mFromActivityTag:Ljava/lang/String;

    return-void
.end method
