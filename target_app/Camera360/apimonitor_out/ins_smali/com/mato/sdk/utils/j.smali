.class public final Lcom/mato/sdk/utils/j;
.super Ljava/lang/Object;
.field private static a:I = 0x4
.field private static b:I = 0xf
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/j;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a([B)Ljava/lang/String;
.registers 10
const/4 v0, 0x0
const/16 v1, 0x10
new-array v2, v1, [C
fill-array-data v2, :array_3e
:try_start_8
const-string/jumbo v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v3
array-length v4, v3
shl-int/lit8 v1, v4, 0x1
new-array v5, v1, [C
move v1, v0
:goto_1c
if-lt v0, v4, :cond_24
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
:goto_23
return-object v0
:cond_24
aget-byte v6, v3, v0
add-int/lit8 v7, v1, 0x1
ushr-int/lit8 v8, v6, 0x4
and-int/lit8 v8, v8, 0xf
aget-char v8, v2, v8
aput-char v8, v5, v1
add-int/lit8 v1, v7, 0x1
and-int/lit8 v6, v6, 0xf
aget-char v6, v2, v6
aput-char v6, v5, v7
:try_end_38
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_38} :catch_3b
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:catch_3b
move-exception v0
const/4 v0, 0x0
goto :goto_23
:array_3e
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
.method public static b([B)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/util/zip/CRC32;
invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method