.class Lcom/lenovo/anyshare/sdk/internal/ci$2;
.super Ljava/lang/Object;
.source "WifiMaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/ci;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/ci;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$2;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v1, "mWifiManager.startScan()"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$2;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Lcom/lenovo/anyshare/sdk/internal/ci;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method
