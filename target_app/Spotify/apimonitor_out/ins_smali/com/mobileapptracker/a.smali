.class public final Lcom/mobileapptracker/a;
.super Ljava/lang/Object;
.field private a:Ljavax/crypto/spec/IvParameterSpec;
.field private b:Ljavax/crypto/spec/SecretKeySpec;
.field private c:Ljavax/crypto/Cipher;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljavax/crypto/spec/IvParameterSpec;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
iput-object v0, p0, Lcom/mobileapptracker/a;->a:Ljavax/crypto/spec/IvParameterSpec;
new-instance v0, Ljavax/crypto/spec/SecretKeySpec;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
const-string v2, "AES"
invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
iput-object v0, p0, Lcom/mobileapptracker/a;->b:Ljavax/crypto/spec/SecretKeySpec;
:try_start_1b
const-string v0, "AES/CBC/NoPadding"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
iput-object v0, p0, Lcom/mobileapptracker/a;->c:Ljavax/crypto/Cipher;
:try_end_23
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_23} :catch_24
.catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1b .. :try_end_23} :catch_29
:goto_23
return-void
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
goto :goto_23
:catch_29
move-exception v0
invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
goto :goto_23
.end method
.method public static a([B)Ljava/lang/String;
.registers 7
if-nez p0, :cond_4
const/4 v0, 0x0
:cond_3
return-object v0
:cond_4
array-length v2, p0
const-string v1, ""
const/4 v0, 0x0
move v5, v0
move-object v0, v1
move v1, v5
:goto_b
if-ge v1, v2, :cond_3
aget-byte v3, p0, v1
and-int/lit16 v3, v3, 0xff
const/16 v4, 0x10
if-ge v3, v4, :cond_37
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "0"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
aget-byte v3, p0, v1
and-int/lit16 v3, v3, 0xff
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_34
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_37
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
aget-byte v3, p0, v1
and-int/lit16 v3, v3, 0xff
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_34
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
rem-int/lit8 v0, v0, 0x10
rsub-int/lit8 v1, v0, 0x10
const/4 v0, 0x0
:goto_9
if-ge v0, v1, :cond_21
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x20
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_21
return-object p0
.end method
.method public final a(Ljava/lang/String;)[B
.registers 6
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/Exception;
const-string v1, "Empty string"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
:try_start_10
iget-object v0, p0, Lcom/mobileapptracker/a;->c:Ljavax/crypto/Cipher;
const/4 v1, 0x1
iget-object v2, p0, Lcom/mobileapptracker/a;->b:Ljavax/crypto/spec/SecretKeySpec;
iget-object v3, p0, Lcom/mobileapptracker/a;->a:Ljavax/crypto/spec/IvParameterSpec;
invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
iget-object v0, p0, Lcom/mobileapptracker/a;->c:Ljavax/crypto/Cipher;
invoke-static {p1}, Lcom/mobileapptracker/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
:try_end_27
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_29
move-result-object v0
return-object v0
:catch_29
move-exception v0
new-instance v1, Ljava/lang/Exception;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "[encrypt] "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v1
.end method