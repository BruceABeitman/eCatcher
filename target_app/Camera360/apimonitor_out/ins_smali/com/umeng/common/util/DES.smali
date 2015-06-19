.class public Lcom/umeng/common/util/DES;
.super Ljava/lang/Object;
.source "DES.java"
.field  a:Ljava/security/Key;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "umeng_exchange"
invoke-virtual {p0, v0}, Lcom/umeng/common/util/DES;->a(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p1}, Lcom/umeng/common/util/DES;->a(Ljava/lang/String;)V
return-void
.end method
.method private a([B)[B
.registers 6
:try_start_0
const-string/jumbo v0, "DES"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/umeng/common/util/DES;->a:Ljava/security/Key;
invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
:try_end_10
.catchall {:try_start_0 .. :try_end_10} :catchall_29
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12
move-result-object v0
return-object v0
:catch_12
move-exception v0
:try_start_13
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error initializing SqlMap class. Cause: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_29
:try_end_29
.catchall {:try_start_13 .. :try_end_29} :catchall_29
move-exception v0
throw v0
.end method
.method private b([B)[B
.registers 6
:try_start_0
const-string/jumbo v0, "DES"
invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
move-result-object v0
const/4 v1, 0x2
iget-object v2, p0, Lcom/umeng/common/util/DES;->a:Ljava/security/Key;
invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
:try_end_10
.catchall {:try_start_0 .. :try_end_10} :catchall_29
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12
move-result-object v0
return-object v0
:catch_12
move-exception v0
:try_start_13
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error initializing SqlMap class. Cause: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_29
:try_end_29
.catchall {:try_start_13 .. :try_end_29} :catchall_29
move-exception v0
throw v0
.end method
.method public static main([Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/umeng/common/util/DES;
invoke-direct {v0}, Lcom/umeng/common/util/DES;-><init>()V
const-string/jumbo v1, "\u5bc6\u6587"
invoke-virtual {v0, v1}, Lcom/umeng/common/util/DES;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/common/util/DES;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "\u5bc6\u6587:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u660e\u6587:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 6
:try_start_0
const-string/jumbo v0, "DES"
invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
move-result-object v0
new-instance v1, Ljava/security/SecureRandom;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-direct {v1, v2}, Ljava/security/SecureRandom;-><init>([B)V
invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V
invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/util/DES;->a:Ljava/security/Key;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a
return-void
:catch_1a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error initializing SqlMap class. Cause: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-string/jumbo v0, ""
new-instance v0, Lcom/umeng/common/util/c;
invoke-direct {v0}, Lcom/umeng/common/util/c;-><init>()V
:try_start_8
const-string/jumbo v1, "UTF8"
invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {p0, v1}, Lcom/umeng/common/util/DES;->a([B)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/common/util/c;->m([B)Ljava/lang/String;
:try_end_16
.catchall {:try_start_8 .. :try_end_16} :catchall_2f
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_18
move-result-object v0
return-object v0
:catch_18
move-exception v0
:try_start_19
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error initializing SqlMap class. Cause: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_2f
.catchall {:try_start_19 .. :try_end_2f} :catchall_2f
:catchall_2f
move-exception v0
throw v0
.end method
.method public c(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Lcom/umeng/common/util/c;
invoke-direct {v0}, Lcom/umeng/common/util/c;-><init>()V
const-string/jumbo v1, ""
:try_start_8
invoke-virtual {v0, p1}, Lcom/umeng/common/util/c;->c(Ljava/lang/String;)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/umeng/common/util/DES;->b([B)[B
move-result-object v0
new-instance v1, Ljava/lang/String;
const-string/jumbo v2, "UTF8"
invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_30
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19
return-object v1
:catch_19
move-exception v0
:try_start_1a
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error initializing SqlMap class. Cause: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_30
:try_end_30
.catchall {:try_start_1a .. :try_end_30} :catchall_30
move-exception v0
throw v0
.end method