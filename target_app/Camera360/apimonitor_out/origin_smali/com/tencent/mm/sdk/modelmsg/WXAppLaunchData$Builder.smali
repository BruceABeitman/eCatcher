.class public Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;
    .registers 3

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;-><init>()V

    const-string/jumbo v1, "_wxapplaunchdata_launchType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;->launchType:I

    const-string/jumbo v1, "_wxapplaunchdata_message"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public static toBundle(Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "_wxapplaunchdata_launchType"

    iget v2, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;->launchType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "_wxapplaunchdata_message"

    iget-object v2, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method