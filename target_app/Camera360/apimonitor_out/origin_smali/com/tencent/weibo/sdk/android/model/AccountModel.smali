.class public Lcom/tencent/weibo/sdk/android/model/AccountModel;
.super Ljava/lang/Object;
.source "AccountModel.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiresIn:J

.field private name:Ljava/lang/String;

.field private nike:Ljava/lang/String;

.field private openID:Ljava/lang/String;

.field private openKey:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->accessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->expiresIn:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNike()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->nike:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->openID:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(J)V
    .registers 3

    iput-wide p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->expiresIn:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNike(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->nike:Ljava/lang/String;

    return-void
.end method

.method public setOpenID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->openID:Ljava/lang/String;

    return-void
.end method

.method public setOpenKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->openKey:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/AccountModel;->refreshToken:Ljava/lang/String;

    return-void
.end method
