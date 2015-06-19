.class  Lcom/blackberry/ids/BBIDStorage$Encrypter;
.super Ljava/lang/Object;
.source "BBIDStorage.java"
.field private static final a:Ljava/security/SecureRandom;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
sput-object v0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->a:Ljava/security/SecureRandom;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->c:Ljava/lang/String;
const-string v0, "android_id"
iput-object v0, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->d:Ljava/lang/String;
return-void
.end method
.method private a()Ljava/security/Key;
.registers 5
new-instance v0, Ljavax/crypto/spec/SecretKeySpec;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v1
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage$Encrypter;->b:Ljava/lang/String;
invoke-static {v2}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v2
const/16 v3, 0x10
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/CryptoUtils;->a([B[BI)[B
move-result-object v1
const-string v2, "AES"
invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
return-object v0
.end method
.method final a(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/16 v7, 0x10
const/4 v6, 0x0
invoke-static {p1}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-direct {p0}, Lcom/blackberry/ids/BBIDStorage$Encrypter;->a()Ljava/security/Key;
move-result-object v1
new-array v2, v7, [B
sget-object v3, Lcom/blackberry/ids/BBIDStorage$Encrypter;->a:Ljava/security/SecureRandom;
invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V
:try_start_12
const-string v3, "AES/CBC/PKCS7Padding"
invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v3
const/4 v4, 0x1
new-instance v5, Ljavax/crypto/spec/IvParameterSpec;
invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
:try_end_24
.catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_24} :catch_36
move-result-object v0
array-length v1, v0
add-int/lit8 v1, v1, 0x10
new-array v1, v1, [B
invoke-static {v2, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v2, v0
invoke-static {v0, v6, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v1}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v0
return-object v0
:catch_36
move-exception v0
new-instance v1, Lcom/blackberry/ids/CryptoException;
invoke-direct {v1, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method final b(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v2, 0x10
:try_start_2
invoke-static {p1}, Lcom/blackberry/ids/StringUtils;->b(Ljava/lang/String;)[B
:try_end_5
.catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_11
move-result-object v0
array-length v1, v0
if-ge v1, v2, :cond_1a
new-instance v0, Lcom/blackberry/ids/CryptoException;
const-string v1, "Value to decrypt is too short."
invoke-direct {v0, v1}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/String;)V
throw v0
:catch_11
move-exception v0
new-instance v1, Lcom/blackberry/ids/CryptoException;
const-string v2, "base64 failed to decode."
invoke-direct {v1, v2, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_1a
invoke-direct {p0}, Lcom/blackberry/ids/BBIDStorage$Encrypter;->a()Ljava/security/Key;
move-result-object v1
:try_start_1e
const-string v2, "AES/CBC/PKCS7Padding"
invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v2
const/4 v3, 0x2
new-instance v4, Ljavax/crypto/spec/IvParameterSpec;
const/4 v5, 0x0
const/16 v6, 0x10
invoke-direct {v4, v0, v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V
invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
const/16 v1, 0x10
array-length v3, v0
add-int/lit8 v3, v3, -0x10
invoke-virtual {v2, v0, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/StringUtils;->a([B)Ljava/lang/String;
:try_end_3c
.catch Ljava/security/GeneralSecurityException; {:try_start_1e .. :try_end_3c} :catch_3e
move-result-object v0
return-object v0
:catch_3e
move-exception v0
new-instance v1, Lcom/blackberry/ids/CryptoException;
invoke-direct {v1, v0}, Lcom/blackberry/ids/CryptoException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method