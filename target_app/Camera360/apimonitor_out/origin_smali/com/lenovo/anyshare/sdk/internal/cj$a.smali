.class Lcom/lenovo/anyshare/sdk/internal/cj$a;
.super Lcom/lenovo/network/base/Device;
.source "WifiNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cj;


# direct methods
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cj;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cj$a;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    invoke-direct {p0}, Lcom/lenovo/network/base/Device;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj$a;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->j(Lcom/lenovo/anyshare/sdk/internal/cj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj$a;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj$a;->getIcon()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lenovo/network/base/Device;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/lenovo/network/base/Device;->setUser(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj$a;->a()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj$a;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->i(Lcom/lenovo/anyshare/sdk/internal/cj;)Lcom/lenovo/anyshare/sdk/internal/ci;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj$a;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->i(Lcom/lenovo/anyshare/sdk/internal/cj;)Lcom/lenovo/anyshare/sdk/internal/ci;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj$a;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
