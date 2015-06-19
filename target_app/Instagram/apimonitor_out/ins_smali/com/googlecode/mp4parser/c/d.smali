.class public final Lcom/googlecode/mp4parser/c/d;
.super Ljava/lang/Object;
.source "UUIDConverter.java"
.method public static a([B)Ljava/util/UUID;
.registers 7
invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v0
sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
new-instance v1, Ljava/util/UUID;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
move-result-wide v2
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
move-result-wide v4
invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V
return-object v1
.end method
.method public static a(Ljava/util/UUID;)[B
.registers 11
const/16 v9, 0x10
const/16 v0, 0x8
invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J
move-result-wide v2
invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J
move-result-wide v4
new-array v6, v9, [B
const/4 v1, 0x0
:goto_f
if-ge v1, v0, :cond_1e
rsub-int/lit8 v7, v1, 0x7
mul-int/lit8 v7, v7, 0x8
ushr-long v7, v2, v7
long-to-int v7, v7
int-to-byte v7, v7
aput-byte v7, v6, v1
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_1e
:goto_1e
if-ge v0, v9, :cond_2d
rsub-int/lit8 v1, v0, 0x7
mul-int/lit8 v1, v1, 0x8
ushr-long v1, v4, v1
long-to-int v1, v1
int-to-byte v1, v1
aput-byte v1, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_2d
return-object v6
.end method