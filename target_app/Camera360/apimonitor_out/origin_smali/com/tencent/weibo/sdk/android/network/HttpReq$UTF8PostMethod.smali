.class public Lcom/tencent/weibo/sdk/android/network/HttpReq$UTF8PostMethod;
.super Lorg/apache/commons/httpclient/methods/PostMethod;
.source "HttpReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/weibo/sdk/android/network/HttpReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTF8PostMethod"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRequestCharSet()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "UTF-8"

    return-object v0
.end method
