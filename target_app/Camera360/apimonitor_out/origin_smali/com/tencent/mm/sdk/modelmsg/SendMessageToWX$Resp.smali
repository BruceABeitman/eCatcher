.class public Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;
.super Lcom/tencent/mm/sdk/modelbase/BaseResp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V

    return-void
.end method
