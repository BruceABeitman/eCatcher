.class public Lcom/pinguo/share/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"
.field private static final decodingTable:[B
.field private static final encodingTable:[B
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0x80
const/16 v1, 0x40
new-array v1, v1, [B
fill-array-data v1, :array_60
sput-object v1, Lcom/pinguo/share/util/Base64;->encodingTable:[B
new-array v1, v3, [B
sput-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
const/4 v0, 0x0
:goto_10
if-lt v0, v3, :cond_35
const/16 v0, 0x41
:goto_14
const/16 v1, 0x5a
if-le v0, v1, :cond_3d
const/16 v0, 0x61
:goto_1a
const/16 v1, 0x7a
if-le v0, v1, :cond_47
const/16 v0, 0x30
:goto_20
const/16 v1, 0x39
if-le v0, v1, :cond_53
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
const/16 v2, 0x2b
const/16 v3, 0x3e
aput-byte v3, v1, v2
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
const/16 v2, 0x2f
const/16 v3, 0x3f
aput-byte v3, v1, v2
return-void
:cond_35
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
const/4 v2, -0x1
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_3d
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v2, v0, -0x41
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_47
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v2, v0, -0x61
add-int/lit8 v2, v2, 0x1a
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_53
sget-object v1, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v2, v0, -0x30
add-int/lit8 v2, v2, 0x34
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_20
nop
:array_60
.array-data 0x1
0x41t
0x42t
0x43t
0x44t
0x45t
0x46t
0x47t
0x48t
0x49t
0x4at
0x4bt
0x4ct
0x4dt
0x4et
0x4ft
0x50t
0x51t
0x52t
0x53t
0x54t
0x55t
0x56t
0x57t
0x58t
0x59t
0x5at
0x61t
0x62t
0x63t
0x64t
0x65t
0x66t
0x67t
0x68t
0x69t
0x6at
0x6bt
0x6ct
0x6dt
0x6et
0x6ft
0x70t
0x71t
0x72t
0x73t
0x74t
0x75t
0x76t
0x77t
0x78t
0x79t
0x7at
0x30t
0x31t
0x32t
0x33t
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x2bt
0x2ft
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static decode(Ljava/lang/String;)[B
.registers 12
const/16 v10, 0x3d
invoke-static {p0}, Lcom/pinguo/share/util/Base64;->discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x2
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v10, :cond_5e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
div-int/lit8 v7, v7, 0x4
add-int/lit8 v7, v7, -0x1
mul-int/lit8 v7, v7, 0x3
add-int/lit8 v7, v7, 0x1
new-array v4, v7, [B
:goto_20
const/4 v5, 0x0
const/4 v6, 0x0
:goto_22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x4
if-lt v5, v7, :cond_84
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x2
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v10, :cond_ca
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x4
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x3
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v1, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
:goto_5d
return-object v4
:cond_5e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x1
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v10, :cond_79
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
div-int/lit8 v7, v7, 0x4
add-int/lit8 v7, v7, -0x1
mul-int/lit8 v7, v7, 0x3
add-int/lit8 v7, v7, 0x2
new-array v4, v7, [B
goto :goto_20
:cond_79
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
div-int/lit8 v7, v7, 0x4
mul-int/lit8 v7, v7, 0x3
new-array v4, v7, [B
goto :goto_20
:cond_84
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x1
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x2
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v2, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x3
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v3, v7, v8
shl-int/lit8 v7, v0, 0x2
shr-int/lit8 v8, v1, 0x4
or-int/2addr v7, v8
int-to-byte v7, v7
aput-byte v7, v4, v6
add-int/lit8 v7, v6, 0x1
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
add-int/lit8 v7, v6, 0x2
shl-int/lit8 v8, v2, 0x6
or-int/2addr v8, v3
int-to-byte v8, v8
aput-byte v8, v4, v7
add-int/lit8 v5, v5, 0x4
add-int/lit8 v6, v6, 0x3
goto/16 :goto_22
:cond_ca
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x1
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v10, :cond_118
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x4
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x3
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x2
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v2, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x2
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
goto/16 :goto_5d
:cond_118
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x4
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x3
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x2
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v2, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, -0x1
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v8
aget-byte v3, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x3
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x2
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v2, 0x6
or-int/2addr v8, v3
int-to-byte v8, v8
aput-byte v8, v4, v7
goto/16 :goto_5d
.end method
.method public static decode([B)[B
.registers 12
const/16 v10, 0x3d
invoke-static {p0}, Lcom/pinguo/share/util/Base64;->discardNonBase64Bytes([B)[B
move-result-object p0
array-length v7, p0
add-int/lit8 v7, v7, -0x2
aget-byte v7, p0, v7
if-ne v7, v10, :cond_44
array-length v7, p0
div-int/lit8 v7, v7, 0x4
add-int/lit8 v7, v7, -0x1
mul-int/lit8 v7, v7, 0x3
add-int/lit8 v7, v7, 0x1
new-array v4, v7, [B
:goto_18
const/4 v5, 0x0
const/4 v6, 0x0
:goto_1a
array-length v7, p0
add-int/lit8 v7, v7, -0x4
if-lt v5, v7, :cond_5f
array-length v7, p0
add-int/lit8 v7, v7, -0x2
aget-byte v7, p0, v7
if-ne v7, v10, :cond_9d
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x4
aget-byte v8, p0, v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x3
aget-byte v8, p0, v8
aget-byte v1, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
:goto_43
return-object v4
:cond_44
array-length v7, p0
add-int/lit8 v7, v7, -0x1
aget-byte v7, p0, v7
if-ne v7, v10, :cond_57
array-length v7, p0
div-int/lit8 v7, v7, 0x4
add-int/lit8 v7, v7, -0x1
mul-int/lit8 v7, v7, 0x3
add-int/lit8 v7, v7, 0x2
new-array v4, v7, [B
goto :goto_18
:cond_57
array-length v7, p0
div-int/lit8 v7, v7, 0x4
mul-int/lit8 v7, v7, 0x3
new-array v4, v7, [B
goto :goto_18
:cond_5f
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
aget-byte v8, p0, v5
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x1
aget-byte v8, p0, v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x2
aget-byte v8, p0, v8
aget-byte v2, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
add-int/lit8 v8, v5, 0x3
aget-byte v8, p0, v8
aget-byte v3, v7, v8
shl-int/lit8 v7, v0, 0x2
shr-int/lit8 v8, v1, 0x4
or-int/2addr v7, v8
int-to-byte v7, v7
aput-byte v7, v4, v6
add-int/lit8 v7, v6, 0x1
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
add-int/lit8 v7, v6, 0x2
shl-int/lit8 v8, v2, 0x6
or-int/2addr v8, v3
int-to-byte v8, v8
aput-byte v8, v4, v7
add-int/lit8 v5, v5, 0x4
add-int/lit8 v6, v6, 0x3
goto/16 :goto_1a
:cond_9d
array-length v7, p0
add-int/lit8 v7, v7, -0x1
aget-byte v7, p0, v7
if-ne v7, v10, :cond_d7
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x4
aget-byte v8, p0, v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x3
aget-byte v8, p0, v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x2
aget-byte v8, p0, v8
aget-byte v2, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x2
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
goto/16 :goto_43
:cond_d7
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x4
aget-byte v8, p0, v8
aget-byte v0, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x3
aget-byte v8, p0, v8
aget-byte v1, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x2
aget-byte v8, p0, v8
aget-byte v2, v7, v8
sget-object v7, Lcom/pinguo/share/util/Base64;->decodingTable:[B
array-length v8, p0
add-int/lit8 v8, v8, -0x1
aget-byte v8, p0, v8
aget-byte v3, v7, v8
array-length v7, v4
add-int/lit8 v7, v7, -0x3
shl-int/lit8 v8, v0, 0x2
shr-int/lit8 v9, v1, 0x4
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x2
shl-int/lit8 v8, v1, 0x4
shr-int/lit8 v9, v2, 0x2
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v4, v7
array-length v7, v4
add-int/lit8 v7, v7, -0x1
shl-int/lit8 v8, v2, 0x6
or-int/2addr v8, v3
int-to-byte v8, v8
aput-byte v8, v4, v7
goto/16 :goto_43
.end method
.method private static discardNonBase64Bytes([B)[B
.registers 8
const/4 v6, 0x0
array-length v5, p0
new-array v4, v5, [B
const/4 v0, 0x0
const/4 v2, 0x0
:goto_6
array-length v5, p0
if-lt v2, v5, :cond_f
new-array v3, v0, [B
invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v3
:cond_f
aget-byte v5, p0, v2
invoke-static {v5}, Lcom/pinguo/share/util/Base64;->isValidBase64Byte(B)Z
move-result v5
if-eqz v5, :cond_1e
add-int/lit8 v1, v0, 0x1
aget-byte v5, p0, v2
aput-byte v5, v4, v0
move v0, v1
:cond_1e
add-int/lit8 v2, v2, 0x1
goto :goto_6
.end method
.method private static discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
const/4 v0, 0x0
:goto_a
if-lt v0, v1, :cond_11
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_11
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
int-to-byte v3, v3
invoke-static {v3}, Lcom/pinguo/share/util/Base64;->isValidBase64Byte(B)Z
move-result v3
if-eqz v3, :cond_23
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method public static encode([B)[B
.registers 19
move-object/from16 v0, p0
array-length v14, v0
rem-int/lit8 v13, v14, 0x3
if-nez v13, :cond_1d
move-object/from16 v0, p0
array-length v14, v0
mul-int/lit8 v14, v14, 0x4
div-int/lit8 v14, v14, 0x3
new-array v7, v14, [B
:goto_10
move-object/from16 v0, p0
array-length v14, v0
sub-int v10, v14, v13
const/4 v11, 0x0
const/4 v12, 0x0
:goto_17
if-lt v11, v10, :cond_29
packed-switch v13, :pswitch_data_ea
:goto_1c
:pswitch_1c
return-object v7
:cond_1d
move-object/from16 v0, p0
array-length v14, v0
div-int/lit8 v14, v14, 0x3
add-int/lit8 v14, v14, 0x1
mul-int/lit8 v14, v14, 0x4
new-array v7, v14, [B
goto :goto_10
:cond_29
aget-byte v14, p0, v11
and-int/lit16 v1, v14, 0xff
add-int/lit8 v14, v11, 0x1
aget-byte v14, p0, v14
and-int/lit16 v2, v14, 0xff
add-int/lit8 v14, v11, 0x2
aget-byte v14, p0, v14
and-int/lit16 v3, v14, 0xff
sget-object v14, Lcom/pinguo/share/util/Base64;->encodingTable:[B
ushr-int/lit8 v15, v1, 0x2
and-int/lit8 v15, v15, 0x3f
aget-byte v14, v14, v15
aput-byte v14, v7, v12
add-int/lit8 v14, v12, 0x1
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
shl-int/lit8 v16, v1, 0x4
ushr-int/lit8 v17, v2, 0x4
or-int v16, v16, v17
and-int/lit8 v16, v16, 0x3f
aget-byte v15, v15, v16
aput-byte v15, v7, v14
add-int/lit8 v14, v12, 0x2
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
shl-int/lit8 v16, v2, 0x2
ushr-int/lit8 v17, v3, 0x6
or-int v16, v16, v17
and-int/lit8 v16, v16, 0x3f
aget-byte v15, v15, v16
aput-byte v15, v7, v14
add-int/lit8 v14, v12, 0x3
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
and-int/lit8 v16, v3, 0x3f
aget-byte v15, v15, v16
aput-byte v15, v7, v14
add-int/lit8 v11, v11, 0x3
add-int/lit8 v12, v12, 0x4
goto :goto_17
:pswitch_72
move-object/from16 v0, p0
array-length v14, v0
add-int/lit8 v14, v14, -0x1
aget-byte v14, p0, v14
and-int/lit16 v8, v14, 0xff
ushr-int/lit8 v14, v8, 0x2
and-int/lit8 v4, v14, 0x3f
shl-int/lit8 v14, v8, 0x4
and-int/lit8 v5, v14, 0x3f
array-length v14, v7
add-int/lit8 v14, v14, -0x4
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
aget-byte v15, v15, v4
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x3
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
aget-byte v15, v15, v5
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x2
const/16 v15, 0x3d
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x1
const/16 v15, 0x3d
aput-byte v15, v7, v14
goto/16 :goto_1c
:pswitch_a5
move-object/from16 v0, p0
array-length v14, v0
add-int/lit8 v14, v14, -0x2
aget-byte v14, p0, v14
and-int/lit16 v8, v14, 0xff
move-object/from16 v0, p0
array-length v14, v0
add-int/lit8 v14, v14, -0x1
aget-byte v14, p0, v14
and-int/lit16 v9, v14, 0xff
ushr-int/lit8 v14, v8, 0x2
and-int/lit8 v4, v14, 0x3f
shl-int/lit8 v14, v8, 0x4
ushr-int/lit8 v15, v9, 0x4
or-int/2addr v14, v15
and-int/lit8 v5, v14, 0x3f
shl-int/lit8 v14, v9, 0x2
and-int/lit8 v6, v14, 0x3f
array-length v14, v7
add-int/lit8 v14, v14, -0x4
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
aget-byte v15, v15, v4
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x3
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
aget-byte v15, v15, v5
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x2
sget-object v15, Lcom/pinguo/share/util/Base64;->encodingTable:[B
aget-byte v15, v15, v6
aput-byte v15, v7, v14
array-length v14, v7
add-int/lit8 v14, v14, -0x1
const/16 v15, 0x3d
aput-byte v15, v7, v14
goto/16 :goto_1c
:pswitch_data_ea
.packed-switch 0x0
:pswitch_1c
:pswitch_72
:pswitch_a5
.end packed-switch
.end method
.method private static isValidBase64Byte(B)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
const/16 v2, 0x3d
if-ne p0, v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ltz p0, :cond_d
const/16 v2, 0x80
if-lt p0, v2, :cond_f
:cond_d
move v0, v1
goto :goto_6
:cond_f
sget-object v2, Lcom/pinguo/share/util/Base64;->decodingTable:[B
aget-byte v2, v2, p0
const/4 v3, -0x1
if-ne v2, v3, :cond_6
move v0, v1
goto :goto_6
.end method