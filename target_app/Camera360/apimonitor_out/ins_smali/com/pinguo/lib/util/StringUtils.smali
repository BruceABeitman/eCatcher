.class public Lcom/pinguo/lib/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"
.field private static final HEX_DIGITS:[C
.field public static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/util/StringUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/StringUtils;->TAG:Ljava/lang/String;
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_12
sput-object v0, Lcom/pinguo/lib/util/StringUtils;->HEX_DIGITS:[C
return-void
:array_12
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
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p0, :cond_6
const-string/jumbo v3, ""
:goto_5
return-object v3
:cond_6
array-length v1, p0
if-nez v1, :cond_d
const-string/jumbo v3, ""
goto :goto_5
:cond_d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_13
add-int/lit8 v3, v1, -0x1
if-lt v0, v3, :cond_23
add-int/lit8 v3, v1, -0x1
aget-object v3, p0, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_5
:cond_23
aget-object v3, p0, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_13
.end method
.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
.registers 7
if-nez p0, :cond_3
:goto_2
return-object p0
:cond_3
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
array-length v3, v1
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V
array-length v4, v1
const/4 v3, 0x0
:goto_f
if-lt v3, v4, :cond_16
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_2
:cond_16
aget-char v0, v1, v3
if-eq v0, p1, :cond_1d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1d
add-int/lit8 v3, v3, 0x1
goto :goto_f
.end method
.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.registers 3
if-nez p0, :cond_6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
:goto_5
return-object v0
:cond_6
invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public static strip(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static toHexString([B)Ljava/lang/String;
.registers 5
if-nez p0, :cond_4
const/4 v2, 0x0
:goto_3
return-object v2
:cond_4
new-instance v1, Ljava/lang/StringBuilder;
array-length v2, p0
mul-int/lit8 v2, v2, 0x2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v0, 0x0
:goto_d
array-length v2, p0
if-lt v0, v2, :cond_15
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_3
:cond_15
sget-object v2, Lcom/pinguo/lib/util/StringUtils;->HEX_DIGITS:[C
aget-byte v3, p0, v0
and-int/lit16 v3, v3, 0xf0
ushr-int/lit8 v3, v3, 0x4
aget-char v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/StringUtils;->HEX_DIGITS:[C
aget-byte v3, p0, v0
and-int/lit8 v3, v3, 0xf
aget-char v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method