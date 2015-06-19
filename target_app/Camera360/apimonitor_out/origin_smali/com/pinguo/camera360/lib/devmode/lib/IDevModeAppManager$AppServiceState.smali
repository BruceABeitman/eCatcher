.class public abstract Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;
.super Ljava/lang/Object;
.source "IDevModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppServiceState"
.end annotation


# static fields
.field public static final STATE_IDLE:Ljava/lang/String; = "IDLE"

.field public static final STATE_NOT_RUNNING:Ljava/lang/String; = "NUT_RUNNING"


# instance fields
.field private mCurrState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NUT_RUNNING"

    iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;

    return-void
.end method
