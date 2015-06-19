.class public abstract Lcom/ubermedia/net/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ubermedia/net/c; = null

.field public static final b:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field public static final c:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field public static final d:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field public static final e:Ljava/lang/String; = "user_token"

.field public static final f:Ljava/lang/String; = "user_secret"

.field public static final g:Ljava/lang/String; = "request_token"

.field public static final h:Ljava/lang/String; = "request_secret"

.field public static final i:Landroid/net/Uri; = null

.field private static final j:Ljava/lang/String; = "OAuthHelper"

.field private static k:Ljava/util/Random; = null

.field private static final l:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "echofon-app://twitt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ubermedia/net/b/c;->i:Landroid/net/Uri;

    new-instance v0, Lcom/ubermedia/net/c;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ubermedia/net/b/c;->a:Lcom/ubermedia/net/c;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ubermedia/net/b/c;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v3, v0, :cond_10

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_10
    const-string v0, "/"

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v3, v2, :cond_3a

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, ":80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, ":443"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method private a(Ljava/lang/String;Lcom/ubermedia/net/b/d;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    if-eqz p2, :cond_f

    invoke-interface {p2}, Lcom/ubermedia/net/b/d;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ubermedia/net/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA1"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :cond_35
    :goto_35
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_3f} :catch_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_3f} :catch_86

    move-result-object v0

    :goto_40
    invoke-static {v0}, Lcom/ubermedia/b/a/d;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    :try_start_45
    invoke-interface {p2}, Lcom/ubermedia/net/b/d;->x()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ubermedia/net/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/ubermedia/net/b/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA1"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/ubermedia/net/b/d;->a(Ljavax/crypto/spec/SecretKeySpec;)V
    :try_end_80
    .catch Ljava/security/InvalidKeyException; {:try_start_45 .. :try_end_80} :catch_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_80} :catch_86

    goto :goto_35

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_40

    :catch_86
    move-exception v1

    goto :goto_40
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    array-length v5, v2

    new-array v6, v4, [C

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v4, :cond_23

    aget-char v7, v3, v0

    rem-int v8, v0, v5

    aget-char v8, v2, v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ubermedia/b/a/d;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_6

    :catch_36
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    const-string v0, "&"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ubermedia/net/b/c;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/net/c;

    invoke-virtual {v0}, Lcom/ubermedia/net/c;->d()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz p2, :cond_28

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2b
    invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_43

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_43
    invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz p2, :cond_5c

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Lcom/ubermedia/net/c;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    const/4 v0, 0x0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_7
    array-length v2, v1

    :goto_8
    if-ge v0, v2, :cond_48

    aget-object v3, v1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    new-instance v4, Lcom/ubermedia/net/c;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_33
    new-instance v4, Lcom/ubermedia/net/c;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v4, v3, v5}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_46} :catch_47

    goto :goto_30

    :catch_47
    move-exception v0

    :cond_48
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_62

    move-result-object v0

    :goto_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5d

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_27

    const-string v3, "%2A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_31

    const-string v3, "%20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    :cond_31
    const/16 v4, 0x25

    if-ne v3, v4, :cond_59

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_59

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_59

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_59

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_24

    :cond_59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_24

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_62
    move-exception v1

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ubermedia/b/a/d;->d(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    array-length v5, v2

    new-array v6, v4, [C

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v4, :cond_2c

    aget-char v7, v3, v0

    rem-int v8, v0, v5

    aget-char v8, v2, v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_6

    :catch_32
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p0}, Lcom/ubermedia/net/b/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Lcom/ubermedia/net/c;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/ubermedia/net/b/c;->a([Lcom/ubermedia/net/c;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/net/b/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    const/4 v0, 0x0

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_57

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_16
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_57

    aget-object v3, v1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    new-instance v4, Lcom/ubermedia/net/c;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_42
    new-instance v4, Lcom/ubermedia/net/c;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v4, v3, v5}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_55} :catch_56

    goto :goto_3f

    :catch_56
    move-exception v0

    :cond_57
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p0}, Lcom/ubermedia/net/b/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;
    .registers 13

    if-nez p3, :cond_5

    const/4 v0, 0x0

    new-array p3, v0, [Lcom/ubermedia/net/c;

    :cond_5
    sget-object v0, Lcom/ubermedia/net/b/c;->k:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p4

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/ubermedia/net/c;

    const-string v4, "oauth_consumer_key"

    invoke-virtual {p0}, Lcom/ubermedia/net/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ubermedia/net/b/c;->a:Lcom/ubermedia/net/c;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/ubermedia/net/c;

    const-string v4, "oauth_timestamp"

    invoke-direct {v3, v4, p4, p5}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/ubermedia/net/c;

    const-string v4, "oauth_nonce"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ubermedia/net/c;

    const-string v1, "oauth_version"

    const-string v3, "1.0"

    invoke-direct {v0, v1, v3}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_64

    invoke-interface {p6}, Lcom/ubermedia/net/b/d;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    new-instance v0, Lcom/ubermedia/net/c;

    const-string v1, "oauth_token"

    invoke-interface {p6}, Lcom/ubermedia/net/b/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3}, Lcom/ubermedia/net/c;->a([Lcom/ubermedia/net/c;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {p3}, Lcom/ubermedia/net/b/c;->a([Lcom/ubermedia/net/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7f
    invoke-static {p2, v0}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Lcom/ubermedia/net/b/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Lcom/ubermedia/net/b/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ubermedia/net/c;

    const-string v3, "oauth_signature"

    invoke-direct {v1, v3, v0}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/ubermedia/net/b/c;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method
