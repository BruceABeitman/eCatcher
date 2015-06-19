.class public Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;
.super Ljava/lang/Object;
.source "IDevModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoServiceState"
.end annotation


# static fields
.field public static final STATE_MAKING:Ljava/lang/String; = "MAKING"

.field private static sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;

    invoke-direct {v0}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;->sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;->sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$PhotoServiceState;

    return-object v0
.end method
