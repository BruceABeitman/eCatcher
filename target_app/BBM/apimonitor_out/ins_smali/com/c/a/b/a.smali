.class public final Lcom/c/a/b/a;
.super Ljava/lang/Object;
.source "Base64Coder.java"
.field private static a:[C
.field private static b:[B
.method static constructor <clinit>()V
.registers 6
const/16 v5, 0x40
const/4 v1, 0x0
new-array v0, v5, [C
sput-object v0, Lcom/c/a/b/a;->a:[C
const/16 v0, 0x41
move v2, v1
:goto_a
const/16 v3, 0x5a
if-gt v0, v3, :cond_19
sget-object v4, Lcom/c/a/b/a;->a:[C
add-int/lit8 v3, v2, 0x1
aput-char v0, v4, v2
add-int/lit8 v0, v0, 0x1
int-to-char v0, v0
move v2, v3
goto :goto_a
:cond_19
const/16 v0, 0x61
:goto_1b
const/16 v3, 0x7a
if-gt v0, v3, :cond_2a
sget-object v4, Lcom/c/a/b/a;->a:[C
add-int/lit8 v3, v2, 0x1
aput-char v0, v4, v2
add-int/lit8 v0, v0, 0x1
int-to-char v0, v0
move v2, v3
goto :goto_1b
:cond_2a
const/16 v0, 0x30
:goto_2c
const/16 v3, 0x39
if-gt v0, v3, :cond_3b
sget-object v4, Lcom/c/a/b/a;->a:[C
add-int/lit8 v3, v2, 0x1
aput-char v0, v4, v2
add-int/lit8 v0, v0, 0x1
int-to-char v0, v0
move v2, v3
goto :goto_2c
:cond_3b
sget-object v0, Lcom/c/a/b/a;->a:[C
add-int/lit8 v3, v2, 0x1
const/16 v4, 0x2b
aput-char v4, v0, v2
sget-object v0, Lcom/c/a/b/a;->a:[C
const/16 v2, 0x2f
aput-char v2, v0, v3
const/16 v0, 0x80
new-array v0, v0, [B
sput-object v0, Lcom/c/a/b/a;->b:[B
move v0, v1
:goto_50
sget-object v2, Lcom/c/a/b/a;->b:[B
array-length v2, v2
if-ge v0, v2, :cond_5d
sget-object v2, Lcom/c/a/b/a;->b:[B
const/4 v3, -0x1
aput-byte v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_50
:goto_5d
:cond_5d
if-ge v1, v5, :cond_6b
sget-object v0, Lcom/c/a/b/a;->b:[B
sget-object v2, Lcom/c/a/b/a;->a:[C
aget-char v2, v2, v1
int-to-byte v3, v1
aput-byte v3, v0, v2
add-int/lit8 v1, v1, 0x1
goto :goto_5d
:cond_6b
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
array-length v2, v1
invoke-static {v1, v2}, Lcom/c/a/b/a;->a([BI)[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
return-object v0
.end method
.method private static a([BI)[C
.registers 14
const/16 v3, 0x3d
const/4 v1, 0x0
mul-int/lit8 v0, p1, 0x4
add-int/lit8 v0, v0, 0x2
div-int/lit8 v6, v0, 0x3
add-int/lit8 v0, p1, 0x2
div-int/lit8 v0, v0, 0x3
mul-int/lit8 v0, v0, 0x4
new-array v7, v0, [C
move v5, v1
move v2, v1
:goto_13
if-ge v2, p1, :cond_6e
add-int/lit8 v0, v2, 0x1
aget-byte v2, p0, v2
and-int/lit16 v8, v2, 0xff
if-ge v0, p1, :cond_65
add-int/lit8 v2, v0, 0x1
aget-byte v0, p0, v0
and-int/lit16 v0, v0, 0xff
move v4, v0
move v0, v2
:goto_25
if-ge v0, p1, :cond_67
add-int/lit8 v2, v0, 0x1
aget-byte v0, p0, v0
and-int/lit16 v0, v0, 0xff
:goto_2d
ushr-int/lit8 v9, v8, 0x2
and-int/lit8 v8, v8, 0x3
shl-int/lit8 v8, v8, 0x4
ushr-int/lit8 v10, v4, 0x4
or-int/2addr v8, v10
and-int/lit8 v4, v4, 0xf
shl-int/lit8 v4, v4, 0x2
ushr-int/lit8 v10, v0, 0x6
or-int/2addr v4, v10
and-int/lit8 v10, v0, 0x3f
add-int/lit8 v0, v5, 0x1
sget-object v11, Lcom/c/a/b/a;->a:[C
aget-char v9, v11, v9
aput-char v9, v7, v5
add-int/lit8 v5, v0, 0x1
sget-object v9, Lcom/c/a/b/a;->a:[C
aget-char v8, v9, v8
aput-char v8, v7, v0
if-ge v5, v6, :cond_6a
sget-object v0, Lcom/c/a/b/a;->a:[C
aget-char v0, v0, v4
:goto_55
aput-char v0, v7, v5
add-int/lit8 v4, v5, 0x1
if-ge v4, v6, :cond_6c
sget-object v0, Lcom/c/a/b/a;->a:[C
aget-char v0, v0, v10
:goto_5f
aput-char v0, v7, v4
add-int/lit8 v0, v4, 0x1
move v5, v0
goto :goto_13
:cond_65
move v4, v1
goto :goto_25
:cond_67
move v2, v0
move v0, v1
goto :goto_2d
:cond_6a
move v0, v3
goto :goto_55
:cond_6c
move v0, v3
goto :goto_5f
:cond_6e
return-object v7
.end method