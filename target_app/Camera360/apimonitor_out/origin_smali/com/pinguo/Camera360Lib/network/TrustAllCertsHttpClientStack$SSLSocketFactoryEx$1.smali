.class Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx$1;
.super Ljava/lang/Object;
.source "TrustAllCertsHttpClientStack.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;


# direct methods
.method constructor <init>(Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx$1;->this$1:Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method