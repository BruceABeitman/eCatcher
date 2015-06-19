.class Lorg/pinguo/cloudshare/support/_FakeX509TrustManager$1;
.super Ljava/lang/Object;
.source "_FakeX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->allowAllSSL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
