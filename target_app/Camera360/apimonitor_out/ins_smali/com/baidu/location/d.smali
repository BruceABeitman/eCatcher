.class  Lcom/baidu/location/d;
.super Ljava/lang/Object;
.field private static a:[C
.field private static if:[C
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/."
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/baidu/location/d;->if:[C
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_14
sput-object v0, Lcom/baidu/location/d;->a:[C
return-void
nop
:array_14
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
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 14
const/4 v0, 0x0
:try_start_1
const-string/jumbo v1, "UTF-8"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "webgis"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-static {v2}, Lcom/baidu/location/d;->a([B)[C
move-result-object v2
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
array-length v1, v3
add-int/lit8 v1, v1, 0x2
new-array v4, v1, [B
move v1, v0
:goto_2a
array-length v5, v3
if-ge v1, v5, :cond_34
aget-byte v5, v3, v1
aput-byte v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_34
array-length v1, v3
const/16 v5, 0xa
const/4 v6, 0x2
invoke-static {v2, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
move-result-object v5
const/16 v6, 0x10
invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v4, v1
array-length v1, v3
add-int/lit8 v1, v1, 0x1
const/16 v3, 0x14
const/4 v5, 0x2
invoke-static {v2, v3, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
move-result-object v3
const/16 v5, 0x10
invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
and-int/lit16 v3, v3, 0xff
int-to-byte v3, v3
aput-byte v3, v4, v1
const-string/jumbo v1, ""
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v3, 0x6
const/4 v5, 0x2
invoke-static {v2, v3, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
move-result-object v3
const/16 v5, 0x10
invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
and-int/lit16 v3, v3, 0xff
int-to-char v3, v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v3, 0x10
const/4 v5, 0x2
invoke-static {v2, v3, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
move-result-object v3
const/16 v5, 0x10
invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
and-int/lit16 v3, v3, 0xff
int-to-char v3, v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v3, 0x1a
const/4 v5, 0x2
invoke-static {v2, v3, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x10
invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v2
and-int/lit16 v2, v2, 0xff
int-to-char v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "webgis"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "iso-8859-1"
invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-static {v1}, Lcom/baidu/location/d;->a([B)[C
move-result-object v5
array-length v6, v4
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v7
add-int v1, v6, v7
new-array v8, v1, [B
move v2, v0
:goto_ea
add-int/lit8 v1, v6, 0x1f
div-int/lit8 v1, v1, 0x20
if-ge v2, v1, :cond_112
mul-int/lit8 v9, v2, 0x20
move v1, v0
:goto_f3
const/16 v10, 0x20
if-ge v1, v10, :cond_10e
add-int v10, v9, v1
if-ge v10, v6, :cond_10e
add-int v10, v9, v1
aget-char v11, v5, v1
and-int/lit16 v11, v11, 0xff
add-int v12, v9, v1
aget-byte v12, v4, v12
and-int/lit16 v12, v12, 0xff
xor-int/2addr v11, v12
int-to-byte v11, v11
aput-byte v11, v8, v10
add-int/lit8 v1, v1, 0x1
goto :goto_f3
:cond_10e
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_ea
:goto_112
:cond_112
if-ge v0, v7, :cond_120
add-int v1, v6, v0
invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
int-to-byte v2, v2
aput-byte v2, v8, v1
add-int/lit8 v0, v0, 0x1
goto :goto_112
:cond_120
new-instance v0, Ljava/lang/String;
invoke-static {v8}, Lcom/baidu/location/d;->if([B)[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
:goto_129
:try_end_129
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_129} :catch_12a
return-object v0
:catch_12a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "UnsupportedEncodingException"
goto :goto_129
.end method
.method private static a([B)[C
.registers 9
const/4 v0, 0x0
const/16 v1, 0x20
new-array v2, v1, [C
:try_start_5
const-string/jumbo v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v3
move v1, v0
:goto_14
const/16 v4, 0x10
if-ge v0, v4, :cond_37
aget-byte v4, v3, v0
add-int/lit8 v5, v1, 0x1
sget-object v6, Lcom/baidu/location/d;->a:[C
ushr-int/lit8 v7, v4, 0x4
and-int/lit8 v7, v7, 0xf
aget-char v6, v6, v7
aput-char v6, v2, v1
add-int/lit8 v1, v5, 0x1
sget-object v6, Lcom/baidu/location/d;->a:[C
and-int/lit8 v4, v4, 0xf
aget-char v4, v6, v4
aput-char v4, v2, v5
:try_end_30
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_33
add-int/lit8 v0, v0, 0x1
goto :goto_14
:catch_33
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_37
return-object v2
.end method
.method private static if([B)[C
.registers 12
const/16 v7, 0x40
const/4 v5, 0x1
const/4 v1, 0x0
array-length v0, p0
add-int/lit8 v0, v0, 0x2
div-int/lit8 v0, v0, 0x3
mul-int/lit8 v0, v0, 0x4
new-array v8, v0, [C
move v0, v1
move v2, v1
:goto_f
array-length v3, p0
if-ge v2, v3, :cond_77
aget-byte v3, p0, v2
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x8
add-int/lit8 v4, v2, 0x1
array-length v6, p0
if-ge v4, v6, :cond_7a
add-int/lit8 v4, v2, 0x1
aget-byte v4, p0, v4
and-int/lit16 v4, v4, 0xff
or-int/2addr v3, v4
move v4, v5
:goto_25
shl-int/lit8 v3, v3, 0x8
add-int/lit8 v6, v2, 0x2
array-length v9, p0
if-ge v6, v9, :cond_78
add-int/lit8 v6, v2, 0x2
aget-byte v6, p0, v6
and-int/lit16 v6, v6, 0xff
or-int/2addr v3, v6
move v6, v5
:goto_34
add-int/lit8 v9, v0, 0x3
sget-object v10, Lcom/baidu/location/d;->if:[C
if-eqz v6, :cond_73
and-int/lit8 v6, v3, 0x3f
rsub-int/lit8 v6, v6, 0x3f
:goto_3e
aget-char v6, v10, v6
aput-char v6, v8, v9
shr-int/lit8 v6, v3, 0x6
add-int/lit8 v9, v0, 0x2
sget-object v10, Lcom/baidu/location/d;->if:[C
if-eqz v4, :cond_75
and-int/lit8 v3, v6, 0x3f
rsub-int/lit8 v3, v3, 0x3f
:goto_4e
aget-char v3, v10, v3
aput-char v3, v8, v9
shr-int/lit8 v3, v6, 0x6
add-int/lit8 v4, v0, 0x1
sget-object v6, Lcom/baidu/location/d;->if:[C
and-int/lit8 v9, v3, 0x3f
rsub-int/lit8 v9, v9, 0x3f
aget-char v6, v6, v9
aput-char v6, v8, v4
shr-int/lit8 v3, v3, 0x6
add-int/lit8 v4, v0, 0x0
sget-object v6, Lcom/baidu/location/d;->if:[C
and-int/lit8 v3, v3, 0x3f
rsub-int/lit8 v3, v3, 0x3f
aget-char v3, v6, v3
aput-char v3, v8, v4
add-int/lit8 v2, v2, 0x3
add-int/lit8 v0, v0, 0x4
goto :goto_f
:cond_73
move v6, v7
goto :goto_3e
:cond_75
move v3, v7
goto :goto_4e
:cond_77
return-object v8
:cond_78
move v6, v1
goto :goto_34
:cond_7a
move v4, v1
goto :goto_25
.end method