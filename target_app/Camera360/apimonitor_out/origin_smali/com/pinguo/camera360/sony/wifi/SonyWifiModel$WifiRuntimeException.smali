.class Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SonyWifiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiRuntimeException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    const-string/jumbo v0, "\u8bf7\u521d\u59cb\u5212\u6b63\u786e\u7684wifi\u53c2\u6570\u5217\u8868"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
