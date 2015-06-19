.class public Lcom/ubermedia/net/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final a:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lcom/ubermedia/net/g;->a:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b([Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
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

    sget-object v0, Lcom/ubermedia/net/g;->a:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
