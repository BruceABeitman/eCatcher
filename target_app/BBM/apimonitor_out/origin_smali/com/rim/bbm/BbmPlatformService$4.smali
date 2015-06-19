.class final Lcom/rim/bbm/BbmPlatformService$4;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$reason:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    iput p1, p0, Lcom/rim/bbm/BbmPlatformService$4;->val$status:I

    iput p2, p0, Lcom/rim/bbm/BbmPlatformService$4;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;

    invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;-><init>()V

    iget v1, p0, Lcom/rim/bbm/BbmPlatformService$4;->val$status:I

    iput v1, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->status:I

    iget v1, p0, Lcom/rim/bbm/BbmPlatformService$4;->val$reason:I

    iput v1, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->reason:I

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$100()Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;->connectionStatusChanged(Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;)V

    return-void
.end method
