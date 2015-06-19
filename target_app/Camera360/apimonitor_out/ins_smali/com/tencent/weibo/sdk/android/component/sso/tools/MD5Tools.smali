.class public Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
.super Ljava/lang/Object;
.source "MD5Tools.java"
.field static final PADDING:[B = null
.field static final S11:I = 0x7
.field static final S12:I = 0xc
.field static final S13:I = 0x11
.field static final S14:I = 0x16
.field static final S21:I = 0x5
.field static final S22:I = 0x9
.field static final S23:I = 0xe
.field static final S24:I = 0x14
.field static final S31:I = 0x4
.field static final S32:I = 0xb
.field static final S33:I = 0x10
.field static final S34:I = 0x17
.field static final S41:I = 0x6
.field static final S42:I = 0xa
.field static final S43:I = 0xf
.field static final S44:I = 0x15
.field private buffer:[B
.field private count:[J
.field private digest:[B
.field public digestHexStr:Ljava/lang/String;
.field private state:[J
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x40
new-array v0, v0, [B
const/4 v1, 0x0
const/16 v2, -0x80
aput-byte v2, v0, v1
sput-object v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->PADDING:[B
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [J
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v0, 0x2
new-array v0, v0, [J
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/16 v0, 0x40
new-array v0, v0, [B
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
const/16 v0, 0x10
new-array v0, v0, [B
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->digest:[B
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Init()V
return-void
.end method
.method private Decode([J[BI)V
.registers 11
const/4 v0, 0x0
const/4 v1, 0x0
:goto_2
if-lt v1, p3, :cond_5
return-void
:cond_5
aget-byte v2, p2, v1
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->b2iu(B)J
move-result-wide v2
add-int/lit8 v4, v1, 0x1
aget-byte v4, p2, v4
invoke-static {v4}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->b2iu(B)J
move-result-wide v4
const/16 v6, 0x8
shl-long/2addr v4, v6
or-long/2addr v2, v4
add-int/lit8 v4, v1, 0x2
aget-byte v4, p2, v4
invoke-static {v4}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->b2iu(B)J
move-result-wide v4
const/16 v6, 0x10
shl-long/2addr v4, v6
or-long/2addr v2, v4
add-int/lit8 v4, v1, 0x3
aget-byte v4, p2, v4
invoke-static {v4}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->b2iu(B)J
move-result-wide v4
const/16 v6, 0x18
shl-long/2addr v4, v6
or-long/2addr v2, v4
aput-wide v2, p1, v0
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x4
goto :goto_2
.end method
.method private Encode([B[JI)V
.registers 12
const-wide/16 v6, 0xff
const/4 v0, 0x0
const/4 v1, 0x0
:goto_4
if-lt v1, p3, :cond_7
return-void
:cond_7
aget-wide v2, p2, v0
and-long/2addr v2, v6
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, p1, v1
add-int/lit8 v2, v1, 0x1
aget-wide v3, p2, v0
const/16 v5, 0x8
ushr-long/2addr v3, v5
and-long/2addr v3, v6
long-to-int v3, v3
int-to-byte v3, v3
aput-byte v3, p1, v2
add-int/lit8 v2, v1, 0x2
aget-wide v3, p2, v0
const/16 v5, 0x10
ushr-long/2addr v3, v5
and-long/2addr v3, v6
long-to-int v3, v3
int-to-byte v3, v3
aput-byte v3, p1, v2
add-int/lit8 v2, v1, 0x3
aget-wide v3, p2, v0
const/16 v5, 0x18
ushr-long/2addr v3, v5
and-long/2addr v3, v6
long-to-int v3, v3
int-to-byte v3, v3
aput-byte v3, p1, v2
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x4
goto :goto_4
.end method
.method private F(JJJ)J
.registers 11
and-long v0, p1, p3
const-wide/16 v2, -0x1
xor-long/2addr v2, p1
and-long/2addr v2, p5
or-long/2addr v0, v2
return-wide v0
.end method
.method private FF(JJJJJJJ)J
.registers 24
move-object v2, p0
move-wide v3, p3
move-wide v5, p5
move-wide/from16 v7, p7
invoke-direct/range {v2 .. v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->F(JJJ)J
move-result-wide v2
add-long v2, v2, p9
add-long v2, v2, p13
add-long/2addr p1, v2
long-to-int v2, p1
move-wide/from16 v0, p11
long-to-int v3, v0
shl-int/2addr v2, v3
long-to-int v3, p1
const-wide/16 v4, 0x20
sub-long v4, v4, p11
long-to-int v4, v4
ushr-int/2addr v3, v4
or-int/2addr v2, v3
int-to-long p1, v2
add-long/2addr p1, p3
return-wide p1
.end method
.method private G(JJJ)J
.registers 11
and-long v0, p1, p5
const-wide/16 v2, -0x1
xor-long/2addr v2, p5
and-long/2addr v2, p3
or-long/2addr v0, v2
return-wide v0
.end method
.method private GG(JJJJJJJ)J
.registers 24
move-object v2, p0
move-wide v3, p3
move-wide v5, p5
move-wide/from16 v7, p7
invoke-direct/range {v2 .. v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->G(JJJ)J
move-result-wide v2
add-long v2, v2, p9
add-long v2, v2, p13
add-long/2addr p1, v2
long-to-int v2, p1
move-wide/from16 v0, p11
long-to-int v3, v0
shl-int/2addr v2, v3
long-to-int v3, p1
const-wide/16 v4, 0x20
sub-long v4, v4, p11
long-to-int v4, v4
ushr-int/2addr v3, v4
or-int/2addr v2, v3
int-to-long p1, v2
add-long/2addr p1, p3
return-wide p1
.end method
.method private H(JJJ)J
.registers 9
xor-long v0, p1, p3
xor-long/2addr v0, p5
return-wide v0
.end method
.method public static HEXByte([B)Ljava/lang/String;
.registers 6
:try_start_0
array-length v3, p0
div-int/lit8 v3, v3, 0x2
new-array v2, v3, [B
const/4 v1, 0x0
:goto_6
array-length v3, v2
if-lt v1, v3, :cond_12
new-instance v3, Ljava/lang/String;
const-string/jumbo v4, "ISO-8859-1"
invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:goto_11
return-object v3
:cond_12
mul-int/lit8 v3, v1, 0x2
aget-byte v3, p0, v3
invoke-static {v3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getByte(B)B
move-result v3
shl-int/lit8 v3, v3, 0x4
mul-int/lit8 v4, v1, 0x2
add-int/lit8 v4, v4, 0x1
aget-byte v4, p0, v4
invoke-static {v4}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getByte(B)B
move-result v4
add-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v2, v1
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2d
add-int/lit8 v1, v1, 0x1
goto :goto_6
:catch_2d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v3, ""
goto :goto_11
.end method
.method private HH(JJJJJJJ)J
.registers 24
move-object v2, p0
move-wide v3, p3
move-wide v5, p5
move-wide/from16 v7, p7
invoke-direct/range {v2 .. v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->H(JJJ)J
move-result-wide v2
add-long v2, v2, p9
add-long v2, v2, p13
add-long/2addr p1, v2
long-to-int v2, p1
move-wide/from16 v0, p11
long-to-int v3, v0
shl-int/2addr v2, v3
long-to-int v3, p1
const-wide/16 v4, 0x20
sub-long v4, v4, p11
long-to-int v4, v4
ushr-int/2addr v3, v4
or-int/2addr v2, v3
int-to-long p1, v2
add-long/2addr p1, p3
return-wide p1
.end method
.method private I(JJJ)J
.registers 9
const-wide/16 v0, -0x1
xor-long/2addr v0, p5
or-long/2addr v0, p1
xor-long/2addr v0, p3
return-wide v0
.end method
.method private II(JJJJJJJ)J
.registers 24
move-object v2, p0
move-wide v3, p3
move-wide v5, p5
move-wide/from16 v7, p7
invoke-direct/range {v2 .. v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->I(JJJ)J
move-result-wide v2
add-long v2, v2, p9
add-long v2, v2, p13
add-long/2addr p1, v2
long-to-int v2, p1
move-wide/from16 v0, p11
long-to-int v3, v0
shl-int/2addr v2, v3
long-to-int v3, p1
const-wide/16 v4, 0x20
sub-long v4, v4, p11
long-to-int v4, v4
ushr-int/2addr v3, v4
or-int/2addr v2, v3
int-to-long p1, v2
add-long/2addr p1, p3
return-wide p1
.end method
.method public static b2iu(B)J
.registers 3
if-gez p0, :cond_4
and-int/lit16 p0, p0, 0xff
:cond_4
int-to-long v0, p0
return-wide v0
.end method
.method public static byteHEX(B)Ljava/lang/String;
.registers 6
const/16 v3, 0x10
new-array v0, v3, [C
fill-array-data v0, :array_20
const/4 v3, 0x2
new-array v1, v3, [C
const/4 v3, 0x0
ushr-int/lit8 v4, p0, 0x4
and-int/lit8 v4, v4, 0xf
aget-char v4, v0, v4
aput-char v4, v1, v3
const/4 v3, 0x1
and-int/lit8 v4, p0, 0xf
aget-char v4, v0, v4
aput-char v4, v1, v3
new-instance v2, Ljava/lang/String;
invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
return-object v2
:array_20
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
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
.end method
.method private static getByte(B)B
.registers 3
const/16 v0, 0x30
if-lt p0, v0, :cond_c
const/16 v1, 0x39
if-gt p0, v1, :cond_c
add-int/lit8 v0, p0, -0x30
int-to-byte v0, v0
:goto_b
:cond_b
return v0
:cond_c
const/16 v1, 0x61
if-lt p0, v1, :cond_1a
const/16 v1, 0x66
if-gt p0, v1, :cond_1a
add-int/lit8 v0, p0, -0x61
add-int/lit8 v0, v0, 0xa
int-to-byte v0, v0
goto :goto_b
:cond_1a
const/16 v1, 0x41
if-lt p0, v1, :cond_b
const/16 v1, 0x46
if-gt p0, v1, :cond_b
add-int/lit8 v0, p0, -0x41
add-int/lit8 v0, v0, 0xa
int-to-byte v0, v0
goto :goto_b
.end method
.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
.registers 18
new-instance v6, Ljava/io/FileInputStream;
move-object/from16 v0, p0
invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v15, 0x400
new-array v1, v15, [B
const/4 v9, 0x0
const/4 v11, 0x0
const/16 v15, 0x10
new-array v4, v15, [C
fill-array-data v4, :array_7a
:try_start_14
const-string/jumbo v15, "MD5"
invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v10
:goto_1b
const/4 v15, 0x0
const/16 v16, 0x400
move/from16 v0, v16
invoke-virtual {v6, v1, v15, v0}, Ljava/io/FileInputStream;->read([BII)I
move-result v9
const/4 v15, -0x1
if-ne v9, v15, :cond_40
invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B
move-result-object v14
const/16 v15, 0x20
new-array v13, v15, [C
const/4 v7, 0x0
const/4 v5, 0x0
move v8, v7
:goto_32
const/16 v15, 0x10
if-lt v5, v15, :cond_52
new-instance v12, Ljava/lang/String;
invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V
:try_end_3b
.catchall {:try_start_14 .. :try_end_3b} :catchall_69
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_45
:try_start_3b
invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
:try_end_3e
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_73
move-object v11, v12
:goto_3f
return-object v11
:cond_40
const/4 v15, 0x0
:try_start_41
invoke-virtual {v10, v1, v15, v9}, Ljava/security/MessageDigest;->update([BII)V
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_69
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45
goto :goto_1b
:catch_45
move-exception v3
:try_start_46
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
:try_end_49
.catchall {:try_start_46 .. :try_end_49} :catchall_69
:try_start_49
invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
:try_end_4c
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d
goto :goto_3f
:catch_4d
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3f
:cond_52
:try_start_52
aget-byte v2, v14, v5
add-int/lit8 v7, v8, 0x1
ushr-int/lit8 v15, v2, 0x4
and-int/lit8 v15, v15, 0xf
aget-char v15, v4, v15
aput-char v15, v13, v8
add-int/lit8 v8, v7, 0x1
and-int/lit8 v15, v2, 0xf
aget-char v15, v4, v15
aput-char v15, v13, v7
:try_end_66
.catchall {:try_start_52 .. :try_end_66} :catchall_69
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_66} :catch_45
add-int/lit8 v5, v5, 0x1
goto :goto_32
:catchall_69
move-exception v15
:try_start_6a
invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
:goto_6d
:try_end_6d
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e
throw v15
:catch_6e
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_6d
:catch_73
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
move-object v11, v12
goto :goto_3f
nop
:array_7a
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
.method public static getMD5String([B)Ljava/lang/String;
.registers 14
const/16 v12, 0x10
const/4 v7, 0x0
new-array v2, v12, [C
fill-array-data v2, :array_42
:try_start_8
const-string/jumbo v11, "MD5"
invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v6
invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B
move-result-object v10
const/16 v11, 0x20
new-array v9, v11, [C
const/4 v4, 0x0
const/4 v3, 0x0
move v5, v4
:goto_1d
if-lt v3, v12, :cond_26
new-instance v8, Ljava/lang/String;
invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V
move-object v7, v8
:goto_25
return-object v7
:cond_26
aget-byte v0, v10, v3
add-int/lit8 v4, v5, 0x1
ushr-int/lit8 v11, v0, 0x4
and-int/lit8 v11, v11, 0xf
aget-char v11, v2, v11
aput-char v11, v9, v5
add-int/lit8 v5, v4, 0x1
and-int/lit8 v11, v0, 0xf
aget-char v11, v2, v11
aput-char v11, v9, v4
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3d
add-int/lit8 v3, v3, 0x1
goto :goto_1d
:catch_3d
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_25
:array_42
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
.method private md5Final()V
.registers 8
const/16 v6, 0x8
new-array v0, v6, [B
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
invoke-direct {p0, v0, v3, v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->Encode([B[JI)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v4, 0x0
aget-wide v3, v3, v4
const/4 v5, 0x3
ushr-long/2addr v3, v5
long-to-int v3, v3
and-int/lit8 v1, v3, 0x3f
const/16 v3, 0x38
if-ge v1, v3, :cond_2b
rsub-int/lit8 v2, v1, 0x38
:goto_19
sget-object v3, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->PADDING:[B
invoke-direct {p0, v3, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Update([BI)V
invoke-direct {p0, v0, v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Update([BI)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->digest:[B
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/16 v5, 0x10
invoke-direct {p0, v3, v4, v5}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->Encode([B[JI)V
return-void
:cond_2b
rsub-int/lit8 v2, v1, 0x78
goto :goto_19
.end method
.method private md5Init()V
.registers 6
const-wide/16 v1, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
aput-wide v1, v0, v3
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
aput-wide v1, v0, v4
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const-wide/32 v1, 0x67452301
aput-wide v1, v0, v3
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const-wide v1, 0xefcdab89L
aput-wide v1, v0, v4
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v1, 0x2
const-wide v2, 0x98badcfeL
aput-wide v2, v0, v1
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v1, 0x3
const-wide/32 v2, 0x10325476
aput-wide v2, v0, v1
return-void
.end method
.method private md5Memcpy([B[BIII)V
.registers 9
const/4 v0, 0x0
:goto_1
if-lt v0, p5, :cond_4
return-void
:cond_4
add-int v1, p3, v0
add-int v2, p4, v0
aget-byte v2, p2, v2
aput-byte v2, p1, v1
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method private md5Transform([B)V
.registers 30
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x0
aget-wide v4, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x1
aget-wide v6, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x2
aget-wide v8, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x3
aget-wide v10, v3, v12
const/16 v3, 0x10
new-array v0, v3, [J
move-object/from16 v27, v0
const/16 v3, 0x40
move-object/from16 v0, p0
move-object/from16 v1, v27
move-object/from16 v2, p1
invoke-direct {v0, v1, v2, v3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->Decode([J[BI)V
const/4 v3, 0x0
aget-wide v12, v27, v3
const-wide/16 v14, 0x7
const-wide v16, 0xd76aa478L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x1
aget-wide v21, v27, v3
const-wide/16 v23, 0xc
const-wide v25, 0xe8c7b756L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x2
aget-wide v21, v27, v3
const-wide/16 v23, 0x11
const-wide/32 v25, 0x242070db
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x3
aget-wide v21, v27, v3
const-wide/16 v23, 0x16
const-wide v25, 0xc1bdceeeL
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x4
aget-wide v12, v27, v3
const-wide/16 v14, 0x7
const-wide v16, 0xf57c0fafL
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x5
aget-wide v21, v27, v3
const-wide/16 v23, 0xc
const-wide/32 v25, 0x4787c62a
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x6
aget-wide v21, v27, v3
const-wide/16 v23, 0x11
const-wide v25, 0xa8304613L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x7
aget-wide v21, v27, v3
const-wide/16 v23, 0x16
const-wide v25, 0xfd469501L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0x8
aget-wide v12, v27, v3
const-wide/16 v14, 0x7
const-wide/32 v16, 0x698098d8
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0x9
aget-wide v21, v27, v3
const-wide/16 v23, 0xc
const-wide v25, 0x8b44f7afL
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xa
aget-wide v21, v27, v3
const-wide/16 v23, 0x11
const-wide v25, 0xffff5bb1L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xb
aget-wide v21, v27, v3
const-wide/16 v23, 0x16
const-wide v25, 0x895cd7beL
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0xc
aget-wide v12, v27, v3
const-wide/16 v14, 0x7
const-wide/32 v16, 0x6b901122
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xd
aget-wide v21, v27, v3
const-wide/16 v23, 0xc
const-wide v25, 0xfd987193L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xe
aget-wide v21, v27, v3
const-wide/16 v23, 0x11
const-wide v25, 0xa679438eL
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xf
aget-wide v21, v27, v3
const-wide/16 v23, 0x16
const-wide/32 v25, 0x49b40821
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->FF(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x1
aget-wide v12, v27, v3
const-wide/16 v14, 0x5
const-wide v16, 0xf61e2562L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x6
aget-wide v21, v27, v3
const-wide/16 v23, 0x9
const-wide v25, 0xc040b340L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xb
aget-wide v21, v27, v3
const-wide/16 v23, 0xe
const-wide/32 v25, 0x265e5a51
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x0
aget-wide v21, v27, v3
const-wide/16 v23, 0x14
const-wide v25, 0xe9b6c7aaL
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x5
aget-wide v12, v27, v3
const-wide/16 v14, 0x5
const-wide v16, 0xd62f105dL
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xa
aget-wide v21, v27, v3
const-wide/16 v23, 0x9
const-wide/32 v25, 0x2441453
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xf
aget-wide v21, v27, v3
const-wide/16 v23, 0xe
const-wide v25, 0xd8a1e681L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x4
aget-wide v21, v27, v3
const-wide/16 v23, 0x14
const-wide v25, 0xe7d3fbc8L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0x9
aget-wide v12, v27, v3
const-wide/16 v14, 0x5
const-wide/32 v16, 0x21e1cde6
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xe
aget-wide v21, v27, v3
const-wide/16 v23, 0x9
const-wide v25, 0xc33707d6L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x3
aget-wide v21, v27, v3
const-wide/16 v23, 0xe
const-wide v25, 0xf4d50d87L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0x8
aget-wide v21, v27, v3
const-wide/16 v23, 0x14
const-wide/32 v25, 0x455a14ed
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0xd
aget-wide v12, v27, v3
const-wide/16 v14, 0x5
const-wide v16, 0xa9e3e905L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x2
aget-wide v21, v27, v3
const-wide/16 v23, 0x9
const-wide v25, 0xfcefa3f8L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x7
aget-wide v21, v27, v3
const-wide/16 v23, 0xe
const-wide/32 v25, 0x676f02d9
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xc
aget-wide v21, v27, v3
const-wide/16 v23, 0x14
const-wide v25, 0x8d2a4c8aL
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->GG(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x5
aget-wide v12, v27, v3
const-wide/16 v14, 0x4
const-wide v16, 0xfffa3942L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0x8
aget-wide v21, v27, v3
const-wide/16 v23, 0xb
const-wide v25, 0x8771f681L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xb
aget-wide v21, v27, v3
const-wide/16 v23, 0x10
const-wide/32 v25, 0x6d9d6122
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xe
aget-wide v21, v27, v3
const-wide/16 v23, 0x17
const-wide v25, 0xfde5380cL
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x1
aget-wide v12, v27, v3
const-wide/16 v14, 0x4
const-wide v16, 0xa4beea44L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x4
aget-wide v21, v27, v3
const-wide/16 v23, 0xb
const-wide/32 v25, 0x4bdecfa9
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x7
aget-wide v21, v27, v3
const-wide/16 v23, 0x10
const-wide v25, 0xf6bb4b60L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xa
aget-wide v21, v27, v3
const-wide/16 v23, 0x17
const-wide v25, 0xbebfbc70L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0xd
aget-wide v12, v27, v3
const-wide/16 v14, 0x4
const-wide/32 v16, 0x289b7ec6
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x0
aget-wide v21, v27, v3
const-wide/16 v23, 0xb
const-wide v25, 0xeaa127faL
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x3
aget-wide v21, v27, v3
const-wide/16 v23, 0x10
const-wide v25, 0xd4ef3085L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x6
aget-wide v21, v27, v3
const-wide/16 v23, 0x17
const-wide/32 v25, 0x4881d05
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0x9
aget-wide v12, v27, v3
const-wide/16 v14, 0x4
const-wide v16, 0xd9d4d039L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xc
aget-wide v21, v27, v3
const-wide/16 v23, 0xb
const-wide v25, 0xe6db99e5L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xf
aget-wide v21, v27, v3
const-wide/16 v23, 0x10
const-wide/32 v25, 0x1fa27cf8
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x2
aget-wide v21, v27, v3
const-wide/16 v23, 0x17
const-wide v25, 0xc4ac5665L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->HH(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x0
aget-wide v12, v27, v3
const-wide/16 v14, 0x6
const-wide v16, 0xf4292244L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x7
aget-wide v21, v27, v3
const-wide/16 v23, 0xa
const-wide/32 v25, 0x432aff97
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xe
aget-wide v21, v27, v3
const-wide/16 v23, 0xf
const-wide v25, 0xab9423a7L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x5
aget-wide v21, v27, v3
const-wide/16 v23, 0x15
const-wide v25, 0xfc93a039L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0xc
aget-wide v12, v27, v3
const-wide/16 v14, 0x6
const-wide/32 v16, 0x655b59c3
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v4
const/4 v3, 0x3
aget-wide v21, v27, v3
const-wide/16 v23, 0xa
const-wide v25, 0x8f0ccc92L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v10
const/16 v3, 0xa
aget-wide v21, v27, v3
const-wide/16 v23, 0xf
const-wide v25, 0xffeff47dL
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v8
const/4 v3, 0x1
aget-wide v21, v27, v3
const-wide/16 v23, 0x15
const-wide v25, 0x85845dd1L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v6
const/16 v3, 0x8
aget-wide v12, v27, v3
const-wide/16 v14, 0x6
const-wide/32 v16, 0x6fa87e4f
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xf
aget-wide v21, v27, v3
const-wide/16 v23, 0xa
const-wide v25, 0xfe2ce6e0L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x6
aget-wide v21, v27, v3
const-wide/16 v23, 0xf
const-wide v25, 0xa3014314L
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0xd
aget-wide v21, v27, v3
const-wide/16 v23, 0x15
const-wide/32 v25, 0x4e0811a1
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v6
const/4 v3, 0x4
aget-wide v12, v27, v3
const-wide/16 v14, 0x6
const-wide v16, 0xf7537e82L
move-object/from16 v3, p0
invoke-direct/range {v3 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v4
const/16 v3, 0xb
aget-wide v21, v27, v3
const-wide/16 v23, 0xa
const-wide v25, 0xbd3af235L
move-object/from16 v12, p0
move-wide v13, v10
move-wide v15, v4
move-wide/from16 v17, v6
move-wide/from16 v19, v8
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v10
const/4 v3, 0x2
aget-wide v21, v27, v3
const-wide/16 v23, 0xf
const-wide/32 v25, 0x2ad7d2bb
move-object/from16 v12, p0
move-wide v13, v8
move-wide v15, v10
move-wide/from16 v17, v4
move-wide/from16 v19, v6
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v8
const/16 v3, 0x9
aget-wide v21, v27, v3
const-wide/16 v23, 0x15
const-wide v25, 0xeb86d391L
move-object/from16 v12, p0
move-wide v13, v6
move-wide v15, v8
move-wide/from16 v17, v10
move-wide/from16 v19, v4
invoke-direct/range {v12 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->II(JJJJJJJ)J
move-result-wide v6
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x0
aget-wide v13, v3, v12
add-long/2addr v13, v4
aput-wide v13, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x1
aget-wide v13, v3, v12
add-long/2addr v13, v6
aput-wide v13, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x2
aget-wide v13, v3, v12
add-long/2addr v13, v8
aput-wide v13, v3, v12
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->state:[J
const/4 v12, 0x3
aget-wide v13, v3, v12
add-long/2addr v13, v10
aput-wide v13, v3, v12
return-void
.end method
.method private md5Update([BI)V
.registers 21
const/16 v1, 0x40
new-array v8, v1, [B
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x0
aget-wide v1, v1, v2
const/4 v3, 0x3
ushr-long/2addr v1, v3
long-to-int v1, v1
and-int/lit8 v4, v1, 0x3f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x0
aget-wide v9, v1, v2
shl-int/lit8 v3, p2, 0x3
int-to-long v12, v3
add-long/2addr v9, v12
aput-wide v9, v1, v2
shl-int/lit8 v1, p2, 0x3
int-to-long v1, v1
cmp-long v1, v9, v1
if-gez v1, :cond_30
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x1
aget-wide v9, v1, v2
const-wide/16 v12, 0x1
add-long/2addr v9, v12
aput-wide v9, v1, v2
:cond_30
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x1
aget-wide v9, v1, v2
ushr-int/lit8 v3, p2, 0x1d
int-to-long v12, v3
add-long/2addr v9, v12
aput-wide v9, v1, v2
rsub-int/lit8 v6, v4, 0x40
move/from16 v0, p2
if-lt v0, v6, :cond_83
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
const/4 v5, 0x0
move-object/from16 v1, p0
move-object/from16 v3, p1
invoke-direct/range {v1 .. v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Memcpy([B[BIII)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Transform([B)V
move v11, v6
:goto_59
add-int/lit8 v1, v11, 0x3f
move/from16 v0, p2
if-lt v1, v0, :cond_71
const/4 v4, 0x0
:goto_60
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
sub-int v17, p2, v11
move-object/from16 v12, p0
move-object/from16 v14, p1
move v15, v4
move/from16 v16, v11
invoke-direct/range {v12 .. v17}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Memcpy([B[BIII)V
return-void
:cond_71
const/4 v10, 0x0
const/16 v12, 0x40
move-object/from16 v7, p0
move-object/from16 v9, p1
invoke-direct/range {v7 .. v12}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Memcpy([B[BIII)V
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Transform([B)V
add-int/lit8 v11, v11, 0x40
goto :goto_59
:cond_83
const/4 v11, 0x0
goto :goto_60
.end method
.method private md5Update(Ljava/io/InputStream;J)Z
.registers 20
const/16 v1, 0x40
new-array v13, v1, [B
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x0
aget-wide v1, v1, v2
const/4 v5, 0x3
ushr-long/2addr v1, v5
long-to-int v1, v1
and-int/lit8 v4, v1, 0x3f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x0
aget-wide v7, v1, v2
const/4 v5, 0x3
shl-long v10, p2, v5
add-long/2addr v7, v10
aput-wide v7, v1, v2
const/4 v1, 0x3
shl-long v1, p2, v1
cmp-long v1, v7, v1
if-gez v1, :cond_30
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x1
aget-wide v7, v1, v2
const-wide/16 v10, 0x1
add-long/2addr v7, v10
aput-wide v7, v1, v2
:cond_30
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->count:[J
const/4 v2, 0x1
aget-wide v7, v1, v2
const/16 v5, 0x1d
ushr-long v10, p2, v5
add-long/2addr v7, v10
aput-wide v7, v1, v2
rsub-int/lit8 v6, v4, 0x40
int-to-long v1, v6
cmp-long v1, p2, v1
if-ltz v1, :cond_9b
new-array v3, v6, [B
const/4 v1, 0x0
:try_start_48
move-object/from16 v0, p1
invoke-virtual {v0, v3, v1, v6}, Ljava/io/InputStream;->read([BII)I
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_82
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
const/4 v5, 0x0
move-object/from16 v1, p0
invoke-direct/range {v1 .. v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Memcpy([B[BIII)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Transform([B)V
move v15, v6
:goto_61
add-int/lit8 v1, v15, 0x3f
int-to-long v1, v1
cmp-long v1, v1, p2
if-ltz v1, :cond_88
const/4 v4, 0x0
:goto_69
int-to-long v1, v15
sub-long v1, p2, v1
long-to-int v1, v1
new-array v9, v1, [B
:try_start_6f
move-object/from16 v0, p1
invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I
:try_end_74
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_9d
move-object/from16 v0, p0
iget-object v8, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->buffer:[B
const/4 v11, 0x0
array-length v12, v9
move-object/from16 v7, p0
move v10, v4
invoke-direct/range {v7 .. v12}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Memcpy([B[BIII)V
const/4 v1, 0x1
:goto_81
return v1
:catch_82
move-exception v14
invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
const/4 v1, 0x0
goto :goto_81
:cond_88
:try_start_88
move-object/from16 v0, p1
invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I
:try_end_8d
.catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_95
move-object/from16 v0, p0
invoke-direct {v0, v13}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Transform([B)V
add-int/lit8 v15, v15, 0x40
goto :goto_61
:catch_95
move-exception v14
invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
const/4 v1, 0x0
goto :goto_81
:cond_9b
const/4 v15, 0x0
goto :goto_69
:catch_9d
move-exception v14
invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
const/4 v1, 0x0
goto :goto_81
.end method
.method public static toMD5(Ljava/io/InputStream;J)Ljava/lang/String;
.registers 9
new-instance v2, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v2, p0, p1, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5(Ljava/io/InputStream;J)[B
move-result-object v0
const-string/jumbo v3, ""
const/4 v1, 0x0
:goto_d
const/16 v4, 0x10
if-lt v1, v4, :cond_12
return-object v3
:cond_12
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-byte v5, v0, v1
invoke-static {v5}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->byteHEX(B)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public static toMD5(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v5, 0x0
:try_start_1
const-string/jumbo v6, "ISO8859_1"
invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_1a
move-result-object v5
:goto_8
new-instance v3, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v3, v5}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5([B)[B
move-result-object v0
const-string/jumbo v4, ""
const/4 v2, 0x0
:goto_15
const/16 v6, 0x10
if-lt v2, v6, :cond_20
return-object v4
:catch_1a
move-exception v1
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v5
goto :goto_8
:cond_20
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-byte v7, v0, v2
invoke-static {v7}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->byteHEX(B)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
add-int/lit8 v2, v2, 0x1
goto :goto_15
.end method
.method public static toMD5([B)Ljava/lang/String;
.registers 7
new-instance v2, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v2, p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5([B)[B
move-result-object v0
const-string/jumbo v3, ""
const/4 v1, 0x0
:goto_d
const/16 v4, 0x10
if-lt v1, v4, :cond_12
return-object v3
:cond_12
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-byte v5, v0, v1
invoke-static {v5}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->byteHEX(B)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public static toMD5Byte(Ljava/io/InputStream;J)[B
.registers 5
new-instance v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5(Ljava/io/InputStream;J)[B
move-result-object v1
return-object v1
.end method
.method public static toMD5Byte(Ljava/lang/String;)[B
.registers 5
const/4 v2, 0x0
:try_start_1
const-string/jumbo v3, "ISO8859_1"
invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_12
move-result-object v2
:goto_8
new-instance v1, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5([B)[B
move-result-object v3
return-object v3
:catch_12
move-exception v0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v2
goto :goto_8
.end method
.method public static toMD5Byte([B)[B
.registers 3
new-instance v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;-><init>()V
invoke-virtual {v0, p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->getMD5([B)[B
move-result-object v1
return-object v1
.end method
.method public getMD5(Ljava/io/InputStream;J)[B
.registers 5
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Init()V
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Update(Ljava/io/InputStream;J)Z
move-result v0
if-nez v0, :cond_e
const/16 v0, 0x10
new-array v0, v0, [B
:goto_d
return-object v0
:cond_e
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Final()V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->digest:[B
goto :goto_d
.end method
.method public getMD5([B)[B
.registers 5
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Init()V
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
array-length v1, p1
int-to-long v1, v1
invoke-direct {p0, v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Update(Ljava/io/InputStream;J)Z
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->md5Final()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->digest:[B
return-object v1
.end method