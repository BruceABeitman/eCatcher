.class  Lcom/blackberry/ids/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"
.field private static final a:[B
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x20
new-array v0, v0, [B
fill-array-data v0, :array_a
sput-object v0, Lcom/blackberry/ids/CryptoUtils;->a:[B
return-void
:array_a
.array-data 0x1
0x65t
0x23t
0x1dt
0xf9t
0x5at
0x1ct
0x19t
0xd3t
0x5dt
0xfft
0x81t
0xf2t
0xe8t
0x1ct
0xf2t
0xa3t
0x50t
0xe0t
0x1t
0x5t
0x38t
0xbct
0xe8t
0x80t
0x35t
0xd3t
0x21t
0x66t
0x4et
0xfbt
0x1et
0x37t
.end array-data
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;[B)Ljava/lang/String;
.registers 5
:try_start_0
const-string v0, "HMACSHA256"
invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
move-result-object v0
new-instance v1, Ljavax/crypto/spec/SecretKeySpec;
const-string v2, "HMACSHA256"
invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
invoke-static {p0}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
:try_end_1b
.catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_1b} :catch_1d
move-result-object v0
return-object v0
:catch_1d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error in computeSignature: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/blackberry/ids/CryptoException;
invoke-direct {v2, v1, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)[B
.registers 5
invoke-static {p0}, Lcom/blackberry/ids/StringUtils;->b(Ljava/lang/String;)[B
move-result-object v0
invoke-static {p1}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v1
const/16 v2, 0x20
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/CryptoUtils;->a([B[BI)[B
move-result-object v0
return-object v0
.end method
.method private static a([B)[B
.registers 5
const/4 v3, 0x0
:try_start_1
const-string v0, "SHA-1"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
const/4 v1, 0x0
array-length v2, p0
invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
:try_end_f
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
move-object v1, v0
const/4 v0, 0x0
const-string v2, "IDS CryptoUtils - Could not get SHA-1 instance to compute digest"
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
goto :goto_10
.end method
.method static a([B[BI)[B
.registers 11
const/4 v0, 0x0
:try_start_1
const-string v1, "HmacSHA256"
invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
:try_end_6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_3a
move-result-object v4
new-array v5, p2, [B
move v3, v0
move v1, p2
move-object v0, p1
:goto_c
if-lez v1, :cond_70
new-instance v6, Ljavax/crypto/spec/SecretKeySpec;
const-string v2, "HMACSHA256"
invoke-direct {v6, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
:try_start_15
invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->update([B)V
invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B
move-result-object v2
invoke-virtual {v4}, Ljavax/crypto/Mac;->reset()V
invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
invoke-virtual {v4, v2}, Ljavax/crypto/Mac;->update([B)V
invoke-virtual {v4, p1}, Ljavax/crypto/Mac;->update([B)V
invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B
move-result-object v6
array-length v0, v6
if-le v1, v0, :cond_54
:goto_32
const/4 v7, 0x0
invoke-static {v6, v7, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_36
.catch Ljava/security/InvalidKeyException; {:try_start_15 .. :try_end_36} :catch_56
add-int/2addr v3, v0
sub-int/2addr v1, v0
move-object v0, v2
goto :goto_c
:catch_3a
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error in createTokenSecret: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/blackberry/ids/CryptoException;
invoke-direct {v2, v1, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_54
move v0, v1
goto :goto_32
:catch_56
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error in P_SHA256: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/blackberry/ids/CryptoException;
invoke-direct {v2, v1, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_70
return-object v5
.end method
.method private static b([B)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
if-eqz p0, :cond_34
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_9
array-length v1, p0
if-ge v0, v1, :cond_30
aget-byte v1, p0, v0
and-int/lit16 v1, v1, 0xff
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_2a
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "0"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_2a
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_30
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
:cond_34
return-object v0
.end method
.method private static c([B)[B
.registers 5
array-length v0, p0
new-array v2, v0, [B
const/4 v1, 0x7
const/4 v0, 0x0
:goto_5
array-length v3, p0
if-ge v0, v3, :cond_18
aget-byte v3, p0, v0
xor-int/2addr v3, v1
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 v3, v0, 0x1
mul-int/2addr v1, v3
add-int/lit8 v1, v1, 0xb
rem-int/lit16 v1, v1, 0xff
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_18
return-object v2
.end method
.method public static hashEcoid(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_35
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_35
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/lang/String;
sget-object v3, Lcom/blackberry/ids/CryptoUtils;->a:[B
invoke-static {v3}, Lcom/blackberry/ids/CryptoUtils;->c([B)[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
if-eqz v1, :cond_35
invoke-static {v1}, Lcom/blackberry/ids/CryptoUtils;->a([B)[B
move-result-object v1
if-eqz v1, :cond_35
invoke-static {v1}, Lcom/blackberry/ids/CryptoUtils;->b([B)Ljava/lang/String;
move-result-object v0
:cond_35
return-object v0
.end method