.class public abstract Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 6

    const/4 v4, 0x2

    const/4 v0, 0x1

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    sget-object v2, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static countDots(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_14

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    invoke-static {p1}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->isIPAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x7

    move v2, v0

    :goto_9
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :try_start_e
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_11
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_e .. :try_end_11} :catch_40

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_18

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3d
    const/4 v0, 0x2

    move v2, v0

    goto :goto_9

    :catch_40
    move-exception v0

    const-class v1, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Error parsing certificate."

    invoke-virtual {v1, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_12

    :cond_54
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_63
    return-object v0

    :cond_64
    move-object v0, v3

    goto :goto_63
.end method

.method private static isIPAddress(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-static {p0}, Lch/boye/httpclientandroidlib/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lch/boye/httpclientandroidlib/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 5

    invoke-static {p2}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host to verify is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz p2, :cond_15

    array-length v0, p2

    if-lez v0, :cond_15

    aget-object v0, p2, v2

    if-eqz v0, :cond_15

    aget-object v0, p2, v2

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz p3, :cond_25

    array-length v4, p3

    move v0, v2

    :goto_19
    if-ge v0, v4, :cond_25

    aget-object v5, p3, v0

    if-eqz v5, :cond_22

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v2

    :cond_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v0, " <"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, " OR"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    const-string v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    const/4 v8, 0x3

    if-lt v0, v8, :cond_109

    aget-object v0, v7, v2

    const-string v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-static {v6}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-static {p1}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->isIPAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    move v0, v1

    :goto_a5
    if-eqz v0, :cond_118

    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_10d

    aget-object v0, v7, v2

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    move v0, v1

    :goto_d7
    if-eqz v0, :cond_e6

    if-eqz p4, :cond_e6

    invoke-static {v5}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v0

    invoke-static {v6}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_116

    move v0, v1

    :cond_e6
    :goto_e6
    if-eqz v0, :cond_5a

    :cond_e8
    if-nez v0, :cond_11d

    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hostname in certificate didn\'t match: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> !="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_109
    move v0, v2

    goto :goto_a5

    :cond_10b
    move v0, v2

    goto :goto_d7

    :cond_10d
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d7

    :cond_116
    move v0, v2

    goto :goto_e6

    :cond_118
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e6

    :cond_11d
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    move v0, v1

    goto :goto_e
.end method
