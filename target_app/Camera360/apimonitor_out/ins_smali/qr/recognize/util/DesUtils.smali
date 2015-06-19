.class public Lqr/recognize/util/DesUtils;
.super Ljava/lang/Object;
.source "DesUtils.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lqr/recognize/util/DesUtils;->getRawKey([B)[B
move-result-object v1
invoke-static {p1}, Lqr/recognize/util/DesUtils;->toByte(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v1, v0}, Lqr/recognize/util/DesUtils;->decrypt([B[B)[B
move-result-object v2
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
return-object v3
.end method
.method private static decrypt([B[B)[B
.registers 6
new-instance v2, Ljavax/crypto/spec/SecretKeySpec;
const-string/jumbo v3, "AES"
invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string/jumbo v3, "AES"
invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
const/4 v3, 0x2
invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v1
return-object v1
.end method
.method private static getRawKey([B)[B
.registers 7
const-string/jumbo v4, "AES"
invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
move-result-object v0
const-string/jumbo v4, "SHA1PRNG"
const-string/jumbo v5, "Crypto"
invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V
const/16 v4, 0x80
invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
move-result-object v2
invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B
move-result-object v1
return-object v1
.end method
.method public static toByte(Ljava/lang/String;)[B
.registers 6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
div-int/lit8 v1, v3, 0x2
new-array v2, v1, [B
const/4 v0, 0x0
:goto_9
if-lt v0, v1, :cond_c
return-object v2
:cond_c
mul-int/lit8 v3, v0, 0x2
mul-int/lit8 v4, v0, 0x2
add-int/lit8 v4, v4, 0x2
invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
const/16 v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B
move-result v3
aput-byte v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_9
.end method