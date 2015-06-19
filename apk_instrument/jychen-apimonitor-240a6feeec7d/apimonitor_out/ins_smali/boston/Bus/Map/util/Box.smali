.class public Lboston/Bus/Map/util/Box;
.super Ljava/lang/Object;
.source "Box.java"
.field private static final IS_NOT_NULL:B = 0x0t
.field private static final IS_NULL:B = 0x1t
.field private final innerOutputStream:Ljava/io/ByteArrayOutputStream;
.field private final inputStream:Ljava/io/DataInputStream;
.field private final outputStream:Ljava/io/DataOutputStream;
.field private final progress:Ljava/util/ArrayList;
.field private final single:[B
.field private final stopMap:Ljava/util/HashMap;
.field private final versionNumber:I
.method public constructor <init>([BILjava/util/HashMap;)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [B
iput-object v0, p0, Lboston/Bus/Map/util/Box;->single:[B
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/util/Box;->progress:Ljava/util/ArrayList;
iput p2, p0, Lboston/Bus/Map/util/Box;->versionNumber:I
if-nez p1, :cond_29
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/util/Box;->innerOutputStream:Ljava/io/ByteArrayOutputStream;
new-instance v0, Ljava/io/DataOutputStream;
iget-object v1, p0, Lboston/Bus/Map/util/Box;->innerOutputStream:Ljava/io/ByteArrayOutputStream;
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
iput-object v2, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
:goto_26
iput-object p3, p0, Lboston/Bus/Map/util/Box;->stopMap:Ljava/util/HashMap;
return-void
:cond_29
iput-object v2, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
iput-object v2, p0, Lboston/Bus/Map/util/Box;->innerOutputStream:Ljava/io/ByteArrayOutputStream;
new-instance v0, Ljava/io/DataInputStream;
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
goto :goto_26
.end method
.method private showProgress(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public getBlob()[B
.registers 2
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->innerOutputStream:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method public getVersionNumber()I
.registers 2
iget v0, p0, Lboston/Bus/Map/util/Box;->versionNumber:I
return v0
.end method
.method public readBoolean()Z
.registers 2
const-string v0, "readBoolean"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z
move-result v0
return v0
.end method
.method public readByte()B
.registers 5
const/4 v3, 0x0
const-string v0, "readByte"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
iget-object v1, p0, Lboston/Bus/Map/util/Box;->single:[B
const/4 v2, 0x1
invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->read([BII)I
iget-object v0, p0, Lboston/Bus/Map/util/Box;->single:[B
aget-byte v0, v0, v3
return v0
.end method
.method public readBytes()[B
.registers 6
const-string v3, "readBytes"
invoke-direct {p0, v3}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readByte()B
move-result v0
if-nez v0, :cond_19
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v1
new-array v2, v1, [B
iget-object v3, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
const/4 v4, 0x0
invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->read([BII)I
move-object v3, v2
:goto_18
return-object v3
:cond_19
const/4 v3, 0x0
goto :goto_18
.end method
.method public readDouble()D
.registers 3
const-string v0, "readDouble"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D
move-result-wide v0
return-wide v0
.end method
.method public readFakeStringMap()V
.registers 4
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readByte()B
move-result v0
if-nez v0, :cond_16
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v2
const/4 v1, 0x0
:goto_b
if-ge v1, v2, :cond_16
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_16
return-void
.end method
.method public readFloat()F
.registers 2
const-string v0, "readFloat"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F
move-result v0
return v0
.end method
.method public readInt()I
.registers 2
const-string v0, "readInt"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I
move-result v0
return v0
.end method
.method public readLong()J
.registers 3
const-string v0, "readLong"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J
move-result-wide v0
return-wide v0
.end method
.method public readPathsMap(Ljava/util/TreeMap;)V
.registers 7
const-string v4, "readPathsMap"
invoke-direct {p0, v4}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v2
const/4 v0, 0x0
:goto_a
if-ge v0, v2, :cond_1f
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v3, Lboston/Bus/Map/data/Path;
invoke-direct {v3, p0}, Lboston/Bus/Map/data/Path;-><init>(Lboston/Bus/Map/util/Box;)V
invoke-virtual {p1, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1f
return-void
.end method
.method public readStopsMap(Ljava/util/HashMap;Lboston/Bus/Map/data/RouteConfig;Landroid/graphics/drawable/Drawable;)V
.registers 9
const-string v4, "readStopsMap"
invoke-direct {p0, v4}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v2
const/4 v0, 0x0
:goto_a
if-ge v0, v2, :cond_3d
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v1
new-instance v3, Lboston/Bus/Map/data/StopLocation;
invoke-direct {v3, p0, p3}, Lboston/Bus/Map/data/StopLocation;-><init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Lboston/Bus/Map/util/Box;->stopMap:Ljava/util/HashMap;
invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_34
iget-object v4, p0, Lboston/Bus/Map/util/Box;->stopMap:Ljava/util/HashMap;
invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_26
iget-object v4, p0, Lboston/Bus/Map/util/Box;->stopMap:Ljava/util/HashMap;
invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lboston/Bus/Map/data/StopLocation;
invoke-virtual {v4, p2}, Lboston/Bus/Map/data/StopLocation;->addRoute(Lboston/Bus/Map/data/RouteConfig;)V
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_34
invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v4, p0, Lboston/Bus/Map/util/Box;->stopMap:Ljava/util/HashMap;
invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_26
:cond_3d
return-void
.end method
.method public readString()Ljava/lang/String;
.registers 2
const-string v0, "readString"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->inputStream:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public readStringMap(Ljava/util/Map;)V
.registers 8
const-string v5, "readStringMap"
invoke-direct {p0, v5}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readByte()B
move-result v0
const/4 v5, 0x1
if-ne v0, v5, :cond_d
:cond_c
return-void
:cond_d
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readInt()I
move-result v3
const/4 v1, 0x0
:goto_12
if-ge v1, v3, :cond_c
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v4
invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_12
.end method
.method public writeBoolean(Z)V
.registers 3
const-string v0, "writeBoolean"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
return-void
.end method
.method public writeByte(B)V
.registers 6
const/4 v3, 0x0
const-string v0, "writeByte"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->single:[B
aput-byte p1, v0, v3
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
iget-object v1, p0, Lboston/Bus/Map/util/Box;->single:[B
const/4 v2, 0x1
invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V
return-void
.end method
.method public writeBytes([B)V
.registers 3
const-string v0, "writeBytes"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
if-nez p1, :cond_c
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lboston/Bus/Map/util/Box;->writeByte(B)V
:goto_b
return-void
:cond_c
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lboston/Bus/Map/util/Box;->writeByte(B)V
array-length v0, p1
invoke-virtual {p0, v0}, Lboston/Bus/Map/util/Box;->writeInt(I)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
goto :goto_b
.end method
.method public writeDouble(D)V
.registers 4
const-string v0, "writeDouble"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
return-void
.end method
.method public writeFakeStringMap()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lboston/Bus/Map/util/Box;->writeByte(B)V
invoke-virtual {p0, v0}, Lboston/Bus/Map/util/Box;->writeInt(I)V
return-void
.end method
.method public writeFloat(F)V
.registers 3
const-string v0, "writeFloat"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
return-void
.end method
.method public writeInt(I)V
.registers 3
const-string v0, "writeInt"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
return-void
.end method
.method public writeLong(J)V
.registers 4
const-string v0, "writeLong"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
return-void
.end method
.method public writePathsMap(Ljava/util/Map;)V
.registers 7
const-string v4, "writePathsMap"
invoke-direct {p0, v4}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeInt(I)V
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_14
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_31
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v4
invoke-virtual {p0, v4}, Lboston/Bus/Map/util/Box;->writeInt(I)V
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lboston/Bus/Map/data/Path;
invoke-virtual {v3, p0}, Lboston/Bus/Map/data/Path;->serialize(Lboston/Bus/Map/util/Box;)V
goto :goto_14
:cond_31
return-void
.end method
.method public writeStopsMap(Ljava/util/Map;)V
.registers 7
const-string v4, "writeStopsMap"
invoke-direct {p0, v4}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeInt(I)V
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_14
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2d
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lboston/Bus/Map/data/StopLocation;
invoke-virtual {v3, p0}, Lboston/Bus/Map/data/StopLocation;->serialize(Lboston/Bus/Map/util/Box;)V
goto :goto_14
:cond_2d
return-void
.end method
.method public writeString(Ljava/lang/String;)V
.registers 3
const-string v0, "writeString"
invoke-direct {p0, v0}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/util/Box;->outputStream:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
return-void
.end method
.method public writeStringMap(Ljava/util/Map;)V
.registers 5
const-string v2, "writeStringMap"
invoke-direct {p0, v2}, Lboston/Bus/Map/util/Box;->showProgress(Ljava/lang/String;)V
if-nez p1, :cond_c
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeByte(B)V
:cond_b
return-void
:cond_c
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeByte(B)V
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeInt(I)V
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_1f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p0, v2}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
goto :goto_1f
.end method