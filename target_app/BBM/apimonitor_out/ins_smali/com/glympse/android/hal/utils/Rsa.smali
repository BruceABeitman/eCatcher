.class public Lcom/glympse/android/hal/utils/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"
.field private gA:Ljava/security/PublicKey;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, p1}, Lcom/glympse/android/hal/utils/Rsa;->f(Ljava/lang/String;)Ljava/security/PublicKey;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/utils/Rsa;->gA:Ljava/security/PublicKey;
return-void
.end method
.method private f(Ljava/lang/String;)Ljava/security/PublicKey;
.registers 5
const-string v0, "X.509"
invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
move-result-object v0
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-static {p1}, Lcom/glympse/android/hal/utils/Base64;->decode(Ljava/lang/String;)[B
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
move-result-object v0
invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v0
return-object v0
.end method
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v0, 0x0
const-string v1, "RSA/ECB/PKCS1Padding"
invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v2
const/4 v1, 0x1
iget-object v3, p0, Lcom/glympse/android/hal/utils/Rsa;->gA:Ljava/security/PublicKey;
invoke-virtual {v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
const-string v1, "UTF-8"
invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
array-length v4, v3
invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I
move-result v5
invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I
move-result v1
add-int/lit8 v6, v4, -0x1
div-int/2addr v6, v5
add-int/lit8 v6, v6, 0x1
mul-int/2addr v1, v6
invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v7
move v1, v0
:goto_27
if-ge v0, v6, :cond_3a
sub-int v8, v4, v1
invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I
move-result v8
invoke-virtual {v2, v3, v1, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B
move-result-object v8
invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
add-int/2addr v1, v5
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_3a
invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
const/16 v1, 0x10
invoke-static {v0, v1}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method