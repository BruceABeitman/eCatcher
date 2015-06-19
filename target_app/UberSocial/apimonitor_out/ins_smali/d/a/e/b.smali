.class public Ld/a/e/b;
.super Ld/a/e/c;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "HmacSHA1"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ld/a/e/c;-><init>()V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "HMAC-SHA1"
return-object v0
.end method
.method public a(Ld/a/d/b;Ld/a/d/a;)Ljava/lang/String;
.registers 6
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ld/a/e/b;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ld/a/e/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "UTF-8"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Ljavax/crypto/spec/SecretKeySpec;
const-string v2, "HmacSHA1"
invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string v0, "HmacSHA1"
invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
move-result-object v0
invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
new-instance v1, Ld/a/e/f;
invoke-direct {v1, p1, p2}, Ld/a/e/f;-><init>(Ld/a/d/b;Ld/a/d/a;)V
invoke-virtual {v1}, Ld/a/e/f;->a()Ljava/lang/String;
move-result-object v1
const-string v2, "SBS"
invoke-static {v2, v1}, Ld/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "UTF-8"
invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B
move-result-object v0
invoke-virtual {p0, v0}, Ld/a/e/b;->a([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_5c
.catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_5c} :catch_5e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5c} :catch_65
move-result-object v0
return-object v0
:catch_5e
move-exception v0
new-instance v1, Ld/a/c/d;
invoke-direct {v1, v0}, Ld/a/c/d;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_65
move-exception v0
new-instance v1, Ld/a/c/d;
invoke-direct {v1, v0}, Ld/a/c/d;-><init>(Ljava/lang/Exception;)V
throw v1
.end method