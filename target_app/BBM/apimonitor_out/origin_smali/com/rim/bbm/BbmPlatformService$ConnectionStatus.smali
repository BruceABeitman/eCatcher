.class public final Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"


# instance fields
.field public reason:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/rim/bbm/BbmPlatformService;->MSDP_STATUS_UNKNOWN:I

    iput v0, p0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->status:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->reason:I

    return-void
.end method
