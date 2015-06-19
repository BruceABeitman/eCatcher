.class public Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final LENGTH_LIMIT:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXWebpageObject"


# instance fields
.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_21

    :cond_16
    const-string/jumbo v0, "MicroMsg.SDK.WXWebpageObject"

    const-string/jumbo v1, "checkArgs fail, webpageUrl is invalid"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "_wxwebpageobject_webpageUrl"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "_wxwebpageobject_webpageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    return-void
.end method
