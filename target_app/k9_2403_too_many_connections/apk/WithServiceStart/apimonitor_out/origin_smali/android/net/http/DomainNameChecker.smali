.class public Landroid/net/http/DomainNameChecker;
.super Ljava/lang/Object;
.source "DomainNameChecker.java"


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field private static QUICK_IP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/http/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;
    :try_end_8
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_33

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v6

    :goto_30
    return v3

    :cond_31
    move v3, v5

    goto :goto_30

    :cond_33
    move v3, v5

    goto :goto_30
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    move v2, v3

    :goto_a
    if-eqz v2, :cond_24

    :try_start_c
    sget-object v3, Landroid/net/http/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_23} :catch_28

    move-result v2

    :cond_24
    :goto_24
    return v2

    :cond_25
    const/4 v3, 0x0

    move v2, v3

    goto :goto_a

    :catch_28
    move-exception v3

    move-object v0, v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    const-string v1, "unknown host exception"

    :cond_32
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/http/DomainNameChecker;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0, p1}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_1b
    invoke-static {p0, p1}, Landroid/net/http/DomainNameChecker;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "\\."

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_16

    :cond_14
    move v6, v8

    :goto_15
    return v6

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v6, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v4

    array-length v3, v2

    if-lt v5, v3, :cond_57

    sub-int v0, v3, v9

    :goto_32
    if-ltz v0, :cond_57

    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    if-nez v0, :cond_59

    if-ne v5, v3, :cond_59

    move v1, v9

    :goto_43
    if-eqz v1, :cond_57

    aget-object v6, v2, v8

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    aget-object v6, v4, v8

    aget-object v7, v2, v8

    invoke-static {v6, v7}, Landroid/net/http/DomainNameChecker;->domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_57
    move v6, v1

    goto :goto_15

    :cond_59
    move v1, v8

    goto :goto_43

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_32
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 16

    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_50

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gt v13, v10, :cond_e

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_e

    const/4 v4, 0x1

    const/4 v10, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    if-eqz v1, :cond_e

    invoke-static {p1, v1}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_4 .. :try_end_4a} :catch_4f

    move-result v10

    if-eqz v10, :cond_e

    move v10, v11

    :goto_4e
    return v10

    :catch_4f
    move-exception v10

    :cond_50
    if-nez v4, :cond_8a

    new-instance v9, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v6

    const/4 v5, 0x0

    :goto_68
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_8a

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_4e

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_8a
    move v10, v12

    goto :goto_4e
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    if-eqz v2, :cond_c

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_c

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    if-eqz v1, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_49
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_49} :catch_4e

    move-result v6

    if-eqz v6, :cond_c

    move v6, v9

    :goto_4d
    return v6

    :catch_4e
    move-exception v6

    :cond_4f
    move v6, v8

    goto :goto_4d
.end method
