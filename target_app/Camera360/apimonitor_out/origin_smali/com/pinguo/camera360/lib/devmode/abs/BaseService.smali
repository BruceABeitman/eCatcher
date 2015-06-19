.class public abstract Lcom/pinguo/camera360/lib/devmode/abs/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# static fields
.field public static final STATE_DEAD:I = -0x2

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_INITING:I = 0x0

.field public static final STATE_NOT_INIT:I = -0x1

.field public static final STATE_RUNNING:I = 0x2

.field private static sRunningService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/lib/devmode/abs/BaseService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->sRunningService:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->mCurrState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final getCurrState()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->mCurrState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final onCreate()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->setCurrState(I)V

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->sRunningService:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->onCreateBase()V

    return-void
.end method

.method protected abstract onCreateBase()V
.end method

.method public final onDestroy()V
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->sRunningService:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->onDestroyBase()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->setCurrState(I)V

    return-void
.end method

.method protected abstract onDestroyBase()V
.end method

.method protected final setCurrState(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/abs/BaseService;->mCurrState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
