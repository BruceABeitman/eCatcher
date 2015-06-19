.class public Lcom/mologiq/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "AES"
.field private b:Ljavax/crypto/SecretKey;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/mologiq/analytics/a;->a()V
const-string v0, "AES"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/mologiq/analytics/a;->b:Ljavax/crypto/SecretKey;
invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_2
invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
move-result-object v0
new-instance v2, Ljavax/crypto/spec/SecretKeySpec;
const-string v3, "AES"
invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string v0, "AES"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
const/4 v3, 0x2
invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
const/4 v2, 0x0
invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
move-result-object v2
invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v2
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26
return-object v0
:catch_26
move-exception v0
const-string v0, "Error"
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
move-object v0, v1
goto :goto_25
.end method
.method public a()V
.registers 4
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
const-string v1, "AES"
invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
move-result-object v0
iput-object v0, p0, Lcom/mologiq/analytics/a;->b:Ljavax/crypto/SecretKey;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/mologiq/analytics/a;->b:Ljavax/crypto/SecretKey;
invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B
move-result-object v0
new-instance v1, Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
return-object v1
.end method