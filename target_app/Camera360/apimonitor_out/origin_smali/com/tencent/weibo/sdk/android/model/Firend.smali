.class public Lcom/tencent/weibo/sdk/android/model/Firend;
.super Ljava/lang/Object;
.source "Firend.java"


# instance fields
.field private headurl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->headurl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->headurl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->name:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/Firend;->nick:Ljava/lang/String;

    return-void
.end method
