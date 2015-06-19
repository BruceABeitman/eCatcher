.class public Lcom/coremedia/iso/boxes/MediaHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MediaHeaderBox.java"
.field public static final TYPE:Ljava/lang/String; = "mdhd"
.field private creationTime:J
.field private duration:J
.field private language:Ljava/lang/String;
.field private modificationTime:J
.field private timescale:J
.method public constructor <init>()V
.registers 2
const-string v0, "mdhd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_2c
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
:goto_22
invoke-static {p1}, Lcom/coremedia/iso/e;->k(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->language:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
return-void
:cond_2c
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
goto :goto_22
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_28
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_1e
iget-object v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->language:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
return-void
:cond_28
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_1e
.end method
.method protected getContentSize()J
.registers 5
const-wide/16 v2, 0x2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_e
const-wide/16 v0, 0x20
:goto_b
add-long/2addr v0, v2
add-long/2addr v0, v2
return-wide v0
:cond_e
const-wide/16 v0, 0x14
goto :goto_b
.end method
.method public getCreationTime()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
return-wide v0
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
return-wide v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->language:Ljava/lang/String;
return-object v0
.end method
.method public getModificationTime()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
return-wide v0
.end method
.method public getTimescale()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
return-wide v0
.end method
.method public setCreationTime(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->creationTime:J
return-void
.end method
.method public setDuration(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->duration:J
return-void
.end method
.method public setLanguage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->language:Ljava/lang/String;
return-void
.end method
.method public setModificationTime(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->modificationTime:J
return-void
.end method
.method public setTimescale(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/MediaHeaderBox;->timescale:J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "MediaHeaderBox["
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "creationTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "modificationTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "timescale="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "duration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "language="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method