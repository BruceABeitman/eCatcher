.class Lcom/rim/bbm/BbmMediaCallService$BbmvServices;
.super Ljava/lang/Object;
.source "BbmMediaCallService.java"


# instance fields
.field public serviceEnabled:[Z

.field public serviceSupported:[Z


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/rim/bbm/BbmMediaCallService$BbmvServices;->serviceEnabled:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/rim/bbm/BbmMediaCallService$BbmvServices;->serviceSupported:[Z

    return-void
.end method
