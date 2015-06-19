.class public final Lcom/bbm/util/cw;
.super Ljava/lang/Object;
.source "PhvUtil.java"
.method public static a(Ljava/lang/String;)V
.registers 5
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V
new-instance v1, Ljava/math/BigInteger;
const/4 v2, 0x1
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
move-result-object v0
const-string v1, "28674fae9ed9848c16584761b96161fe"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_31
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
:goto_31
:try_end_31
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_31} :catch_32
:cond_31
return-void
:catch_32
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_31
.end method