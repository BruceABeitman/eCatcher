.class public Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;
.field private final ka:Lcom/google/android/gms/internal/n;
.field private final kt:Ljava/security/SecureRandom;
.method public constructor <init>(Lcom/google/android/gms/internal/n;Ljava/security/SecureRandom;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/p;->ka:Lcom/google/android/gms/internal/n;
iput-object p2, p0, Lcom/google/android/gms/internal/p;->kt:Ljava/security/SecureRandom;
return-void
.end method
.method static c([B)V
.registers 3
const/4 v0, 0x0
:goto_1
array-length v1, p0
if-ge v0, v1, :cond_e
aget-byte v1, p0, v0
xor-int/lit8 v1, v1, 0x44
int-to-byte v1, v1
aput-byte v1, p0, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_e
return-void
.end method
.method public c([BLjava/lang/String;)[B
.registers 9
const/16 v2, 0x10
array-length v0, p1
if-eq v0, v2, :cond_b
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:try_start_b
:cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/p;->ka:Lcom/google/android/gms/internal/n;
const/4 v1, 0x0
invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/n;->a(Ljava/lang/String;Z)[B
move-result-object v0
array-length v1, v0
if-gt v1, v2, :cond_22
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:try_end_1b
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_1b} :catch_1b
.catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_1b} :catch_57
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_1b} :catch_5e
.catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_1b} :catch_65
.catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_1b} :catch_6c
.catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_1b} :catch_73
.catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1b} :catch_7a
:catch_1b
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:cond_22
:try_start_22
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
:try_end_55
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_55} :catch_1b
.catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_55} :catch_57
.catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_55} :catch_5e
.catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_55} :catch_65
.catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_55} :catch_6c
.catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_55} :catch_73
.catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_55} :catch_7a
move-result-object v0
return-object v0
:catch_57
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_5e
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_65
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_6c
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_73
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:catch_7a
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
.end method
.method public d(Ljava/lang/String;)[B
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/p;->ka:Lcom/google/android/gms/internal/n;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/n;->a(Ljava/lang/String;Z)[B
move-result-object v0
array-length v1, v0
const/16 v2, 0x20
if-eq v1, v2, :cond_19
new-instance v0, Lcom/google/android/gms/internal/p$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;)V
throw v0
:catch_12
:try_end_12
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_12
move-exception v0
new-instance v1, Lcom/google/android/gms/internal/p$a;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/p$a;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
throw v1
:cond_19
const/4 v1, 0x4
const/16 v2, 0x10
:try_start_1c
invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
move-result-object v0
const/16 v1, 0x10
new-array v1, v1, [B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v1}, Lcom/google/android/gms/internal/p;->c([B)V
:try_end_2a
.catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_12
return-object v1
.end method