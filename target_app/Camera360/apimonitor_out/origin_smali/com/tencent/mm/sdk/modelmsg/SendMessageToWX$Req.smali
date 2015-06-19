.class public Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final FAV_CONTENT_LENGTH_LIMIT:I = 0x1900000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendMessageToWX.Req"

.field public static final WXSceneFavorite:I = 0x2

.field public static final WXSceneSession:I = 0x0

.field public static final WXSceneTimeline:I = 0x1


# instance fields
.field public message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.field public scene:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    if-nez v0, :cond_f

    const-string/jumbo v0, "MicroMsg.SDK.SendMessageToWX.Req"

    const-string/jumbo v1, "checkArgs fail ,message is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;

    const/high16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->setContentLengthLimit(I)V

    :cond_2a
    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->checkArgs()Z

    move-result v0

    goto :goto_e
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    const-string/jumbo v0, "_wxapi_sendmessagetowx_req_scene"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    return-void
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-static {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder;->toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_sendmessagetowx_req_scene"

    iget v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
