.class public Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "GetUsedSpaceRequestConsole.java"


# static fields
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"

.field private static final SIGNATURE_NAME:Ljava/lang/String; = "signature"

.field private static final USER_ID_NAME:Ljava/lang/String; = "user_id"


# instance fields
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v4, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iput-object v5, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iput-object v5, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v4, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v5, "text"

    const-string/jumbo v6, "user_id"

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v4, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v5, "text"

    const-string/jumbo v6, "signature"

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v4, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v5, "text"

    const-string/jumbo v6, "app_key"

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v5, v4, v8

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v6, v4, v5

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_61

    iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    :cond_61
    if-nez v2, :cond_66

    iput-boolean v8, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->bEnable:Z

    :goto_65
    return-void

    :cond_66
    const-string/jumbo v4, "\r"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "5dab06e7a53740ea9b78"

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4, p3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/GetUsedSpaceRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    goto :goto_65
.end method
