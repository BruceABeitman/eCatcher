.class public final Lcom/squareup/okhttp/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/squareup/okhttp/i;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/squareup/okhttp/i;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/okhttp/i;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/i;
    .registers 5

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_11
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_e .. :try_end_11} :catch_28

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_2b

    invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_18
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_22
    new-instance v3, Lcom/squareup/okhttp/i;

    invoke-direct {v3, v2, v0, v1}, Lcom/squareup/okhttp/i;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    goto :goto_12

    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_18

    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_22
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/security/Principal;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/security/Principal;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/squareup/okhttp/i;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/squareup/okhttp/i;

    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/squareup/okhttp/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
