.class public final Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/li;
.field private final b:Ljava/security/SecureRandom;
.method public constructor <init>(Lcom/google/android/gms/internal/li;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/p;->a:Lcom/google/android/gms/internal/li;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/p;->b:Ljava/security/SecureRandom;
return-void
.end method
.method public final a(Ljava/lang/String;)[B
.registers 6
const/16 v3, 0x10
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/internal/p;->a:Lcom/google/android/gms/internal/li;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/li;->a(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
const/16 v2, 0x20
if-eq v1, v2, :cond_1a
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:catch_13
:try_end_13
.catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13} :catch_13
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:cond_1a
const/4 v1, 0x4
const/16 v2, 0x10
:try_start_1d
invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
move-result-object v0
const/16 v1, 0x10
new-array v1, v1, [B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
const/4 v0, 0x0
:goto_29
if-ge v0, v3, :cond_35
aget-byte v2, v1, v0
xor-int/lit8 v2, v2, 0x44
int-to-byte v2, v2
aput-byte v2, v1, v0
:try_end_32
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_32} :catch_13
add-int/lit8 v0, v0, 0x1
goto :goto_29
:cond_35
return-object v1
.end method
.method public final a([BLjava/lang/String;)[B
.registers 9
const/16 v2, 0x10
array-length v0, p1
if-eq v0, v2, :cond_b
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:try_start_b
:cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/p;->a:Lcom/google/android/gms/internal/li;
invoke-interface {v0, p2}, Lcom/google/android/gms/internal/li;->a(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
if-gt v1, v2, :cond_21
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:try_end_1a
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_1a} :catch_1a
.catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_1a} :catch_56
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_1a} :catch_5d
.catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_1a} :catch_64
.catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_1a} :catch_6b
.catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_1a} :catch_72
.catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1a} :catch_79
:catch_1a
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:cond_21
:try_start_21
array-length v1, v0
invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
const/16 v2, 0x10
new-array v2, v2, [B
array-length v0, v0
add-int/lit8 v0, v0, -0x10
new-array v0, v0, [B
invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
new-instance v1, Ljavax/crypto/spec/SecretKeySpec;
const-string v3, "AES"
invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string v3, "AES/CBC/PKCS5Padding"
invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v3
const/4 v4, 0x2
new-instance v5, Ljavax/crypto/spec/IvParameterSpec;
invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
:try_end_54
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_54} :catch_1a
.catch Ljava/security/InvalidKeyException; {:try_start_21 .. :try_end_54} :catch_56
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_21 .. :try_end_54} :catch_5d
.catch Ljavax/crypto/NoSuchPaddingException; {:try_start_21 .. :try_end_54} :catch_64
.catch Ljavax/crypto/BadPaddingException; {:try_start_21 .. :try_end_54} :catch_6b
.catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_21 .. :try_end_54} :catch_72
.catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_54} :catch_79
move-result-object v0
return-object v0
:catch_56
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_5d
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_64
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_6b
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_72
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_79
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
.end method