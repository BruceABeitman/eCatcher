.class public Lcom/lenovo/channel/base/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public appVer:I

.field public deviceModel:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public icon:I

.field public id:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public kicked:Z

.field public name:Ljava/lang/String;

.field public online:Z

.field public osVer:I

.field public pending:Z

.field public port:I

.field public releaseChannel:Ljava/lang/String;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportCollection()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "android"

    iget-object v3, p0, Lcom/lenovo/channel/base/UserInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "com.lenovo.anyshare"

    iget-object v3, p0, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string/jumbo v2, "com.lenovo.anyshare.gps"

    iget-object v3, p0, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_23
    iget v2, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I

    const v3, 0x3d5858

    if-ge v2, v3, :cond_2e

    iget v2, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I

    if-ne v2, v0, :cond_36

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    iget v2, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I

    const v3, 0x3d57fe

    if-gt v2, v3, :cond_2e

    :cond_36
    move v0, v1

    goto :goto_2e

    :cond_38
    const-string/jumbo v2, "pc_type"

    iget-object v3, p0, Lcom/lenovo/channel/base/UserInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "com.lenovo.anyshare.windows"

    iget-object v3, p0, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_4e
    move v0, v1

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", icon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/channel/base/UserInfo;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
