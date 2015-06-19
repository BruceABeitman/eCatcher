.class public final Lcom/coremedia/iso/d;
.super Ljava/lang/Object;
.source "Hex.java"
.field private static final a:[C
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/coremedia/iso/d;->a:[C
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
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
.end method
.method public static a([B)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/coremedia/iso/d;->a([BI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a([BI)Ljava/lang/String;
.registers 9
const/4 v1, 0x0
array-length v3, p0
shl-int/lit8 v2, v3, 0x1
if-lez p1, :cond_3a
div-int v0, v3, p1
:goto_8
add-int/2addr v0, v2
new-array v4, v0, [C
move v2, v1
:goto_c
if-ge v2, v3, :cond_3c
if-lez p1, :cond_42
rem-int v0, v2, p1
if-nez v0, :cond_42
if-lez v1, :cond_42
add-int/lit8 v0, v1, 0x1
const/16 v5, 0x2d
aput-char v5, v4, v1
:goto_1c
add-int/lit8 v5, v0, 0x1
sget-object v1, Lcom/coremedia/iso/d;->a:[C
aget-byte v6, p0, v2
and-int/lit16 v6, v6, 0xf0
ushr-int/lit8 v6, v6, 0x4
aget-char v1, v1, v6
aput-char v1, v4, v0
add-int/lit8 v1, v5, 0x1
sget-object v0, Lcom/coremedia/iso/d;->a:[C
aget-byte v6, p0, v2
and-int/lit8 v6, v6, 0xf
aget-char v0, v0, v6
aput-char v0, v4, v5
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c
:cond_3a
move v0, v1
goto :goto_8
:cond_3c
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
return-object v0
:cond_42
move v0, v1
goto :goto_1c
.end method