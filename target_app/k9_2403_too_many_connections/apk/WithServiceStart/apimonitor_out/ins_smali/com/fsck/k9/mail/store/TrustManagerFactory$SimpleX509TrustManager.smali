.class  Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"
.implements Ljavax/net/ssl/X509TrustManager;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/TrustManagerFactory$1;)V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;-><init>()V
return-void
.end method
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.registers 2
const/4 v0, 0x0
return-object v0
.end method