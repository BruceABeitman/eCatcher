.class final Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"
.implements Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;
.field static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"
.field protected static final FLAG_NEGOTIATE_128:I = 0x20000000
.field protected static final FLAG_NEGOTIATE_ALWAYS_SIGN:I = 0x8000
.field protected static final FLAG_NEGOTIATE_KEY_EXCH:I = 0x40000000
.field protected static final FLAG_NEGOTIATE_NTLM:I = 0x200
.field protected static final FLAG_NEGOTIATE_NTLM2:I = 0x80000
.field protected static final FLAG_NEGOTIATE_SEAL:I = 0x20
.field protected static final FLAG_NEGOTIATE_SIGN:I = 0x10
.field protected static final FLAG_TARGET_DESIRED:I = 0x4
.field protected static final FLAG_UNICODE_ENCODING:I = 0x1
.field private static final RND_GEN:Ljava/security/SecureRandom;
.field private static SIGNATURE:[B
.field private credentialCharset:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const/4 v0, 0x0
:try_start_2
const-string v1, "SHA1PRNG"
invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_25
move-result-object v0
:goto_8
sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
const-string v0, "NTLMSSP"
const-string v1, "ASCII"
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
add-int/lit8 v1, v1, 0x1
new-array v1, v1, [B
sput-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
array-length v0, v0
aput-byte v3, v1, v0
return-void
:catch_25
move-exception v1
goto :goto_8
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "ASCII"
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;
return-void
.end method
.method static F(III)I
.registers 5
and-int v0, p0, p1
xor-int/lit8 v1, p0, -0x1
and-int/2addr v1, p2
or-int/2addr v0, v1
return v0
.end method
.method static G(III)I
.registers 5
and-int v0, p0, p1
and-int v1, p0, p2
or-int/2addr v0, v1
and-int v1, p1, p2
or-int/2addr v0, v1
return v0
.end method
.method static H(III)I
.registers 4
xor-int v0, p0, p1
xor-int/2addr v0, p2
return v0
.end method
.method static synthetic access$000()[B
.registers 1
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
return-object v0
.end method
.method static synthetic access$100([BI)I
.registers 3
invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readUShort([BI)I
move-result v0
return v0
.end method
.method static synthetic access$200([BI)I
.registers 3
invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readULong([BI)I
move-result v0
return v0
.end method
.method static synthetic access$300([BI)[B
.registers 3
invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$600()[B
.registers 1
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->makeRandomChallenge()[B
move-result-object v0
return-object v0
.end method
.method static synthetic access$700()[B
.registers 1
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->makeNTLM2RandomChallenge()[B
move-result-object v0
return-object v0
.end method
.method private static convertDomain(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static convertHost(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static createBlob([B[B)[B
.registers 13
const/16 v10, 0x8
const/4 v9, 0x4
const/4 v1, 0x0
new-array v4, v9, [B
fill-array-data v4, :array_4c
new-array v5, v9, [B
fill-array-data v5, :array_52
new-array v6, v9, [B
fill-array-data v6, :array_58
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide v7, 0xa9730b66800L
add-long/2addr v2, v7
const-wide/16 v7, 0x2710
mul-long/2addr v2, v7
new-array v7, v10, [B
move v0, v1
:goto_23
if-ge v0, v10, :cond_2d
long-to-int v8, v2
int-to-byte v8, v8
aput-byte v8, v7, v0
ushr-long/2addr v2, v10
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_2d
array-length v0, p1
add-int/lit8 v0, v0, 0x1c
new-array v0, v0, [B
invoke-static {v4, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v5, v1, v0, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v7, v1, v0, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v2, 0x10
invoke-static {p0, v1, v0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v2, 0x18
invoke-static {v6, v1, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v2, 0x1c
array-length v3, p1
invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
:array_58
.array-data 0x1
0x0t
0x0t
0x0t
0x0t
.end array-data
:array_52
.array-data 0x1
0x0t
0x0t
0x0t
0x0t
.end array-data
:array_4c
.array-data 0x1
0x1t
0x1t
0x0t
0x0t
.end array-data
.end method
.method private static createDESKey([BI)Ljava/security/Key;
.registers 10
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x7
new-array v0, v0, [B
const/4 v1, 0x7
invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v1, 0x8
new-array v1, v1, [B
aget-byte v2, v0, v3
aput-byte v2, v1, v3
aget-byte v2, v0, v3
shl-int/lit8 v2, v2, 0x7
aget-byte v3, v0, v4
and-int/lit16 v3, v3, 0xff
ushr-int/lit8 v3, v3, 0x1
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, v1, v4
aget-byte v2, v0, v4
shl-int/lit8 v2, v2, 0x6
aget-byte v3, v0, v5
and-int/lit16 v3, v3, 0xff
ushr-int/lit8 v3, v3, 0x2
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, v1, v5
aget-byte v2, v0, v5
shl-int/lit8 v2, v2, 0x5
aget-byte v3, v0, v6
and-int/lit16 v3, v3, 0xff
ushr-int/lit8 v3, v3, 0x3
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, v1, v6
aget-byte v2, v0, v6
shl-int/lit8 v2, v2, 0x4
aget-byte v3, v0, v7
and-int/lit16 v3, v3, 0xff
ushr-int/lit8 v3, v3, 0x4
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, v1, v7
const/4 v2, 0x5
aget-byte v3, v0, v7
shl-int/lit8 v3, v3, 0x3
const/4 v4, 0x5
aget-byte v4, v0, v4
and-int/lit16 v4, v4, 0xff
ushr-int/lit8 v4, v4, 0x5
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
const/4 v2, 0x6
const/4 v3, 0x5
aget-byte v3, v0, v3
shl-int/lit8 v3, v3, 0x2
const/4 v4, 0x6
aget-byte v4, v0, v4
and-int/lit16 v4, v4, 0xff
ushr-int/lit8 v4, v4, 0x6
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
const/4 v2, 0x7
const/4 v3, 0x6
aget-byte v0, v0, v3
shl-int/lit8 v0, v0, 0x1
int-to-byte v0, v0
aput-byte v0, v1, v2
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->oddParity([B)V
new-instance v0, Ljavax/crypto/spec/SecretKeySpec;
const-string v2, "DES"
invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
return-object v0
.end method
.method static getLMResponse(Ljava/lang/String;[B)[B
.registers 3
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmHash(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B
move-result-object v0
return-object v0
.end method
.method static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
.registers 6
invoke-static {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0, p3, p4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B
move-result-object v0
return-object v0
.end method
.method static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
.registers 9
:try_start_0
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B
move-result-object v0
const-string v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
const/16 v2, 0x8
new-array v2, v2, [B
const/4 v3, 0x0
const/4 v4, 0x0
const/16 v5, 0x8
invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B
:try_end_22
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24
move-result-object v0
return-object v0
:catch_24
move-exception v0
instance-of v1, v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
if-eqz v1, :cond_2c
check-cast v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
throw v0
:cond_2c
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method static getNTLMResponse(Ljava/lang/String;[B)[B
.registers 3
invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B
move-result-object v0
return-object v0
.end method
.method static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
.registers 8
invoke-static {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
invoke-static {p4, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createBlob([B[B)[B
move-result-object v1
invoke-static {v0, p3, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B
move-result-object v0
return-object v0
.end method
.method private static lmHash(Ljava/lang/String;)[B
.registers 7
:try_start_0
invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v1, "US-ASCII"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
const/16 v2, 0xe
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
const/16 v2, 0xe
new-array v2, v2, [B
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v0, 0x0
invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;
move-result-object v0
const/4 v1, 0x7
invoke-static {v2, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;
move-result-object v1
const-string v2, "KGS!@#$%"
const-string v3, "US-ASCII"
invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
const-string v3, "DES/ECB/NoPadding"
invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v0
const/4 v4, 0x1
invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v1
const/16 v2, 0x10
new-array v2, v2, [B
const/4 v3, 0x0
const/4 v4, 0x0
const/16 v5, 0x8
invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v0, 0x0
const/16 v3, 0x8
const/16 v4, 0x8
invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_55
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56
return-object v2
:catch_56
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private static lmResponse([B[B)[B
.registers 9
const/16 v0, 0x15
:try_start_2
new-array v0, v0, [B
const/4 v1, 0x0
const/4 v2, 0x0
const/16 v3, 0x10
invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v1, 0x0
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;
move-result-object v1
const/4 v2, 0x7
invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;
move-result-object v2
const/16 v3, 0xe
invoke-static {v0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;
move-result-object v0
const-string v3, "DES/ECB/NoPadding"
invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v1
const/4 v4, 0x1
invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v2
const/4 v4, 0x1
invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v0
const/16 v3, 0x18
new-array v3, v3, [B
const/4 v4, 0x0
const/4 v5, 0x0
const/16 v6, 0x8
invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v1, 0x0
const/16 v4, 0x8
const/16 v5, 0x8
invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v1, 0x0
const/16 v2, 0x10
const/16 v4, 0x8
invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_54
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55
return-object v3
:catch_55
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private static lmv2Response([B[B[B)[B
.registers 7
const/4 v3, 0x0
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;
invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B
move-result-object v0
array-length v1, v0
array-length v2, p2
add-int/2addr v1, v2
new-array v1, v1, [B
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v0, v0
array-length v2, p2
invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v1
.end method
.method private static makeNTLM2RandomChallenge()[B
.registers 4
const/16 v3, 0x18
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
if-nez v0, :cond_e
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "Random generator not available"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
new-array v0, v3, [B
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
monitor-enter v1
:try_start_13
sget-object v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
monitor-exit v1
:try_end_19
.catchall {:try_start_13 .. :try_end_19} :catchall_20
const/16 v1, 0x8
const/4 v2, 0x0
invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V
return-object v0
:catchall_20
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static makeRandomChallenge()[B
.registers 3
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
if-nez v0, :cond_c
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "Random generator not available"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/16 v0, 0x8
new-array v0, v0, [B
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
monitor-enter v1
:try_start_13
sget-object v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;
invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
monitor-exit v1
:try_end_19
.catchall {:try_start_13 .. :try_end_19} :catchall_1a
return-object v0
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static ntlmHash(Ljava/lang/String;)[B
.registers 5
:try_start_0
const-string v0, "UnicodeLittleUnmarked"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;-><init>()V
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->update([B)V
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->getOutput()[B
:try_end_11
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_11} :catch_13
move-result-object v0
return-object v0
:catch_13
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unicode not supported: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.registers 7
:try_start_0
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V
invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v2, "UnicodeLittleUnmarked"
invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V
const-string v0, "UnicodeLittleUnmarked"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B
:try_end_22
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_22} :catch_24
move-result-object v0
return-object v0
:catch_24
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unicode not supported! "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private static oddParity([B)V
.registers 6
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p0
if-ge v0, v2, :cond_36
aget-byte v2, p0, v0
ushr-int/lit8 v3, v2, 0x7
ushr-int/lit8 v4, v2, 0x6
xor-int/2addr v3, v4
ushr-int/lit8 v4, v2, 0x5
xor-int/2addr v3, v4
ushr-int/lit8 v4, v2, 0x4
xor-int/2addr v3, v4
ushr-int/lit8 v4, v2, 0x3
xor-int/2addr v3, v4
ushr-int/lit8 v4, v2, 0x2
xor-int/2addr v3, v4
ushr-int/lit8 v2, v2, 0x1
xor-int/2addr v2, v3
and-int/lit8 v2, v2, 0x1
if-nez v2, :cond_2c
const/4 v2, 0x1
:goto_20
if-eqz v2, :cond_2e
aget-byte v2, p0, v0
or-int/lit8 v2, v2, 0x1
int-to-byte v2, v2
aput-byte v2, p0, v0
:goto_29
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_2c
move v2, v1
goto :goto_20
:cond_2e
aget-byte v2, p0, v0
and-int/lit8 v2, v2, -0x2
int-to-byte v2, v2
aput-byte v2, p0, v0
goto :goto_29
:cond_36
return-void
.end method
.method private static readSecurityBuffer([BI)[B
.registers 6
invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readUShort([BI)I
move-result v0
add-int/lit8 v1, p1, 0x4
invoke-static {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readULong([BI)I
move-result v1
array-length v2, p0
add-int v3, v1, v0
if-ge v2, v3, :cond_17
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM authentication - buffer too small for data item"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
new-array v2, v0, [B
const/4 v3, 0x0
invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method private static readULong([BI)I
.registers 4
array-length v0, p0
add-int/lit8 v1, p1, 0x4
if-ge v0, v1, :cond_d
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM authentication - buffer too small for DWORD"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
aget-byte v0, p0, p1
and-int/lit16 v0, v0, 0xff
add-int/lit8 v1, p1, 0x1
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
add-int/lit8 v1, p1, 0x2
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x10
or-int/2addr v0, v1
add-int/lit8 v1, p1, 0x3
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x18
or-int/2addr v0, v1
return v0
.end method
.method private static readUShort([BI)I
.registers 4
array-length v0, p0
add-int/lit8 v1, p1, 0x2
if-ge v0, v1, :cond_d
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM authentication - buffer too small for WORD"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
aget-byte v0, p0, p1
and-int/lit16 v0, v0, 0xff
add-int/lit8 v1, p1, 0x1
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
return v0
.end method
.method static rotintlft(II)I
.registers 4
shl-int v0, p0, p1
rsub-int/lit8 v1, p1, 0x20
ushr-int v1, p0, v1
or-int/2addr v0, v1
return v0
.end method
.method private static stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "."
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_e
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
:cond_e
return-object p0
.end method
.method static writeULong([BII)V
.registers 5
and-int/lit16 v0, p1, 0xff
int-to-byte v0, v0
aput-byte v0, p0, p2
add-int/lit8 v0, p2, 0x1
shr-int/lit8 v1, p1, 0x8
and-int/lit16 v1, v1, 0xff
int-to-byte v1, v1
aput-byte v1, p0, v0
add-int/lit8 v0, p2, 0x2
shr-int/lit8 v1, p1, 0x10
and-int/lit16 v1, v1, 0xff
int-to-byte v1, v1
aput-byte v1, p0, v0
add-int/lit8 v0, p2, 0x3
shr-int/lit8 v1, p1, 0x18
and-int/lit16 v1, v1, 0xff
int-to-byte v1, v1
aput-byte v1, p0, v0
return-void
.end method
.method public final generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p2, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 15
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;
invoke-direct {v0, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B
move-result-object v5
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I
move-result v6
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B
move-result-object v8
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p4
move-object v4, p3
invoke-virtual/range {v0 .. v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final getCredentialCharset()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;
return-object v0
.end method
.method final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 15
if-eqz p1, :cond_e
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
:cond_e
invoke-virtual {p0, p4, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B
move-result-object v5
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I
move-result v6
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B
move-result-object v8
move-object v0, p0
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-virtual/range {v0 .. v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method
.method final getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;
invoke-direct {v0, p2, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->getResponse()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
.registers 18
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;
move-object v1, p4
move-object v2, p3
move-object v3, p1
move-object v4, p2
move-object v5, p5
move v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
invoke-direct/range {v0 .. v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->getResponse()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final setCredentialCharset(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;
return-void
.end method