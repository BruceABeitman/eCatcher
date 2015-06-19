.class public Lorg/pinguo/richpicture/UUIDGenerator;
.super Ljava/lang/Object;
.source "UUIDGenerator.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static decodeHex([C)[B
.registers 8
array-length v3, p0
and-int/lit8 v5, v3, 0x1
if-eqz v5, :cond_e
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string/jumbo v6, "Odd number of characters."
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_e
shr-int/lit8 v5, v3, 0x1
new-array v4, v5, [B
const/4 v1, 0x0
const/4 v2, 0x0
:goto_14
if-lt v2, v3, :cond_17
return-object v4
:cond_17
aget-char v5, p0, v2
invoke-static {v5, v2}, Lorg/pinguo/richpicture/UUIDGenerator;->toDigit(CI)I
move-result v5
shl-int/lit8 v0, v5, 0x4
add-int/lit8 v2, v2, 0x1
aget-char v5, p0, v2
invoke-static {v5, v2}, Lorg/pinguo/richpicture/UUIDGenerator;->toDigit(CI)I
move-result v5
or-int/2addr v0, v5
add-int/lit8 v2, v2, 0x1
and-int/lit16 v5, v0, 0xff
int-to-byte v5, v5
aput-byte v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_14
.end method
.method public static getUUIDArray()[B
.registers 3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2d
invoke-static {v1, v2}, Lcom/pinguo/lib/util/StringUtils;->remove(Ljava/lang/String;C)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-static {v1}, Lorg/pinguo/richpicture/UUIDGenerator;->decodeHex([C)[B
move-result-object v1
return-object v1
.end method
.method public static toDigit(CI)I
.registers 5
const/16 v0, 0x30
if-lt p0, v0, :cond_b
const/16 v0, 0x39
if-gt p0, v0, :cond_b
add-int/lit8 v0, p0, -0x30
:goto_a
return v0
:cond_b
const/16 v0, 0x61
if-lt p0, v0, :cond_18
const/16 v0, 0x66
if-gt p0, v0, :cond_18
add-int/lit8 v0, p0, -0x61
add-int/lit8 v0, v0, 0xa
goto :goto_a
:cond_18
const/16 v0, 0x41
if-lt p0, v0, :cond_25
const/16 v0, 0x46
if-gt p0, v0, :cond_25
add-int/lit8 v0, p0, -0x41
add-int/lit8 v0, v0, 0xa
goto :goto_a
:cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Illegal hexadecimal charcter "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " at index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method