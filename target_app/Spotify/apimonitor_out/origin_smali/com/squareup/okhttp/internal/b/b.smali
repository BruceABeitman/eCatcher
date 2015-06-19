.class public final Lcom/squareup/okhttp/internal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lcom/squareup/okhttp/internal/b/b;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/squareup/okhttp/internal/b/b;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/b/b;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/internal/b/b;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_14

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_14

    :catch_45
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_4b
    move-object v0, v2

    goto :goto_f
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/16 v6, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0

    :cond_16
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_29
    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_3e
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-le v3, v4, :cond_4c

    move v0, v1

    goto :goto_15

    :cond_4c
    invoke-virtual {p0, v1, v2, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_54

    move v0, v1

    goto :goto_15

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ge v6, v5, :cond_70

    const-string v6, ".clients.google.com"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_70

    move v0, v1

    goto :goto_15

    :cond_70
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v5, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    sget-object v1, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    :goto_33
    return v0

    :cond_34
    move v0, v3

    goto :goto_33

    :cond_36
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    move v0, v2

    goto :goto_33

    :cond_5a
    move v1, v2

    goto :goto_46

    :cond_5c
    if-nez v1, :cond_74

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/b/a;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/b/a;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v0, "cn"

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-static {v4, v0}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_72
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_72} :catch_76

    move-result v0

    goto :goto_33

    :cond_74
    move v0, v3

    goto :goto_33

    :catch_76
    move-exception v0

    move v0, v3

    goto :goto_33
.end method
