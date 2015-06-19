.class public Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;
.super Ljava/lang/Object;
.source "Md5FileNameGenerator.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final RADIX:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMD5([B)[B
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v2

    :goto_f
    return-object v2

    :catch_10
    move-exception v1

    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->getMD5([B)[B

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
