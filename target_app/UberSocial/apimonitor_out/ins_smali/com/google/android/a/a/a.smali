.class public Lcom/google/android/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/android/a/a/p;
.field private static final a:Ljava/lang/String; = "UTF-8"
.field private static final b:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"
.field private static final c:Ljava/lang/String; = "AES/CBC/PKCS5Padding"
.field private static final d:[B = null
.field private static final e:Ljava/lang/String; = "com.android.vending.licensing.AESObfuscator-1|"
.field private f:Ljavax/crypto/Cipher;
.field private g:Ljavax/crypto/Cipher;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_a
sput-object v0, Lcom/google/android/a/a/a;->d:[B
return-void
:array_a
.array-data 0x1
0x10t
0x4at
0x47t
0xb0t
0x20t
0x65t
0xd1t
0x48t
0x75t
0xf2t
0x0t
0xe3t
0x46t
0x41t
0xf4t
0x4at
.end array-data
.end method
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
const-string v0, "PBEWITHSHAAND256BITAES-CBC-BC"
invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
move-result-object v0
new-instance v1, Ljavax/crypto/spec/PBEKeySpec;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
const/16 v3, 0x400
const/16 v4, 0x100
invoke-direct {v1, v2, p1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V
invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
move-result-object v0
new-instance v1, Ljavax/crypto/spec/SecretKeySpec;
invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B
move-result-object v0
const-string v2, "AES"
invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string v0, "AES/CBC/PKCS5Padding"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/a;->f:Ljavax/crypto/Cipher;
iget-object v0, p0, Lcom/google/android/a/a/a;->f:Ljavax/crypto/Cipher;
const/4 v2, 0x1
new-instance v3, Ljavax/crypto/spec/IvParameterSpec;
sget-object v4, Lcom/google/android/a/a/a;->d:[B
invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
const-string v0, "AES/CBC/PKCS5Padding"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/a;->g:Ljavax/crypto/Cipher;
iget-object v0, p0, Lcom/google/android/a/a/a;->g:Ljavax/crypto/Cipher;
const/4 v2, 0x2
new-instance v3, Ljavax/crypto/spec/IvParameterSpec;
sget-object v4, Lcom/google/android/a/a/a;->d:[B
invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
:try_end_60
.catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_60} :catch_61
return-void
:catch_61
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid environment"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
iget-object v0, p0, Lcom/google/android/a/a/a;->f:Ljavax/crypto/Cipher;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "com.android.vending.licensing.AESObfuscator-1|"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "UTF-8"
invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/a/a/a/a;->a([B)Ljava/lang/String;
:try_end_2a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_2a} :catch_2c
.catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_2a} :catch_35
move-result-object v0
goto :goto_3
:catch_2c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid environment"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_35
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid environment"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/a/a/a;->g:Ljavax/crypto/Cipher;
invoke-static {p1}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v1
const-string v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "com.android.vending.licensing.AESObfuscator-1|"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_69
new-instance v0, Lcom/google/android/a/a/v;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Header not found (invalid data or key):"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/a/a/v;-><init>(Ljava/lang/String;)V
throw v0
:try_end_47
.catch Lcom/google/android/a/a/a/b; {:try_start_4 .. :try_end_47} :catch_47
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_47} :catch_7d
.catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_47} :catch_9f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_47} :catch_c1
:catch_47
move-exception v0
new-instance v1, Lcom/google/android/a/a/v;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Lcom/google/android/a/a/a/b;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/a/a/v;-><init>(Ljava/lang/String;)V
throw v1
:try_start_69
:cond_69
const-string v1, "com.android.vending.licensing.AESObfuscator-1|"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_7b
.catch Lcom/google/android/a/a/a/b; {:try_start_69 .. :try_end_7b} :catch_47
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_69 .. :try_end_7b} :catch_7d
.catch Ljavax/crypto/BadPaddingException; {:try_start_69 .. :try_end_7b} :catch_9f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_7b} :catch_c1
move-result-object v0
goto :goto_3
:catch_7d
move-exception v0
new-instance v1, Lcom/google/android/a/a/v;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/a/a/v;-><init>(Ljava/lang/String;)V
throw v1
:catch_9f
move-exception v0
new-instance v1, Lcom/google/android/a/a/v;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/a/a/v;-><init>(Ljava/lang/String;)V
throw v1
:catch_c1
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid environment"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method