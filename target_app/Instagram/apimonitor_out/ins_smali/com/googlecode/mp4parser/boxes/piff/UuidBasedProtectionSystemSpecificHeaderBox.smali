.class public Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "UuidBasedProtectionSystemSpecificHeaderBox.java"
.field public static USER_TYPE:[B
.field  protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
.field  systemId:Ljava/util/UUID;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_a
sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B
return-void
:array_a
.array-data 0x1
0xd0t
0x8at
0x4ft
0x18t
0x10t
0xf3t
0x4at
0x82t
0xb6t
0xc8t
0x32t
0xd8t
0xabt
0xa1t
0x83t
0xd3t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
const-string v0, "uuid"
sget-object v1, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B
invoke-direct {p0, v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;[B)V
return-void
.end method
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
const/16 v0, 0x10
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v0}, Lcom/googlecode/mp4parser/c/d;->a([B)Ljava/util/UUID;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-static {v0, p1}, Lcom/googlecode/mp4parser/boxes/piff/f;->a(Ljava/util/UUID;Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/piff/f;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/f;->a()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
int-to-long v1, v1
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/f;->a()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
add-int/lit8 v0, v0, 0x18
int-to-long v0, v0
return-wide v0
.end method
.method public getProtectionSpecificHeader()Lcom/googlecode/mp4parser/boxes/piff/f;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
return-object v0
.end method
.method public getProtectionSpecificHeaderString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/f;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSystemId()Ljava/util/UUID;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
return-object v0
.end method
.method public getSystemIdString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUserType()[B
.registers 2
sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B
return-object v0
.end method
.method public setProtectionSpecificHeader(Lcom/googlecode/mp4parser/boxes/piff/f;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
return-void
.end method
.method public setSystemId(Ljava/util/UUID;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "UuidBasedProtectionSystemSpecificHeaderBox"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{systemId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ", dataSize="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/f;
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/f;->a()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method