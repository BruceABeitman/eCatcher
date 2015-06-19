.class public Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "UploadURLRequestConsole.java"


# static fields
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"

.field private static final SIGNATURE_NAME:Ljava/lang/String; = "signature"

.field private static final USERID_NAME:Ljava/lang/String; = "user_id"


# instance fields
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v3, "text"

    const-string/jumbo v4, "user_id"

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v3, "text"

    const-string/jumbo v4, "signature"

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v3, "text"

    const-string/jumbo v4, "app_key"

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v4, v2, v3

    move-object v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PINGUOSOFT"

    invoke-static {v2, v3}, Lorg/pinguo/cloudshare/support/HelperConsole;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "KEYs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user_id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";local_key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_8e

    iput-boolean v6, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->bEnable:Z

    :goto_8d
    return-void

    :cond_8e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "5dab06e7a53740ea9b78"

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    goto :goto_8d
.end method
