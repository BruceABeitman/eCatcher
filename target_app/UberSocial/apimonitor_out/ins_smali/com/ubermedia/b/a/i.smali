.class public Lcom/ubermedia/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
const/16 v1, 0x20
new-array v1, v1, [B
const-string v1, "iso-8859-1"
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-static {v0}, Lcom/ubermedia/b/a/i;->a([B)Ljava/lang/String;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21
move-result-object v0
:goto_20
return-object v0
:catch_21
move-exception v0
const-string v0, "MD5notsupported"
goto :goto_20
.end method
.method public static a([B)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
move v0, v1
:goto_7
array-length v2, p0
if-ge v0, v2, :cond_33
aget-byte v2, p0, v0
ushr-int/lit8 v2, v2, 0x4
and-int/lit8 v2, v2, 0xf
move v3, v2
move v2, v1
:goto_12
if-ltz v3, :cond_2a
const/16 v4, 0x9
if-gt v3, v4, :cond_2a
add-int/lit8 v3, v3, 0x30
int-to-char v3, v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_1e
aget-byte v3, p0, v0
and-int/lit8 v4, v3, 0xf
add-int/lit8 v3, v2, 0x1
const/4 v6, 0x1
if-lt v2, v6, :cond_38
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_2a
add-int/lit8 v3, v3, -0xa
add-int/lit8 v3, v3, 0x61
int-to-char v3, v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_1e
:cond_33
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_38
move v2, v3
move v3, v4
goto :goto_12
.end method