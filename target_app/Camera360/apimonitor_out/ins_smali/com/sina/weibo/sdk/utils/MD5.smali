.class public Lcom/sina/weibo/sdk/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"
.field private static final hexDigits:[C
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sina/weibo/sdk/utils/MD5;->hexDigits:[C
return-void
:array_a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static hexdigest(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-static {v2}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a
move-result-object v1
:goto_9
return-object v1
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
.end method
.method public static hexdigest([B)Ljava/lang/String;
.registers 13
const/4 v6, 0x0
:try_start_1
const-string/jumbo v10, "MD5"
invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v5
invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
move-result-object v9
const/16 v10, 0x20
new-array v8, v10, [C
const/4 v3, 0x0
const/4 v2, 0x0
move v4, v3
:goto_16
const/16 v10, 0x10
if-lt v2, v10, :cond_21
new-instance v7, Ljava/lang/String;
invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
move-object v6, v7
:goto_20
return-object v6
:cond_21
aget-byte v0, v9, v2
add-int/lit8 v3, v4, 0x1
sget-object v10, Lcom/sina/weibo/sdk/utils/MD5;->hexDigits:[C
ushr-int/lit8 v11, v0, 0x4
and-int/lit8 v11, v11, 0xf
aget-char v10, v10, v11
aput-char v10, v8, v4
add-int/lit8 v4, v3, 0x1
sget-object v10, Lcom/sina/weibo/sdk/utils/MD5;->hexDigits:[C
and-int/lit8 v11, v0, 0xf
aget-char v10, v10, v11
aput-char v10, v8, v3
:try_end_39
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3c
add-int/lit8 v2, v2, 0x1
goto :goto_16
:catch_3c
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_20
.end method
.method public static main([Ljava/lang/String;)V
.registers 3
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string/jumbo v1, "c"
invoke-static {v1}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
return-void
.end method