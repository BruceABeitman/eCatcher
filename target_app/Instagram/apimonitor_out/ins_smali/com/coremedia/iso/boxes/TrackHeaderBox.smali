.class public Lcom/coremedia/iso/boxes/TrackHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackHeaderBox.java"
.field public static final TYPE:Ljava/lang/String; = "tkhd"
.field private alternateGroup:I
.field private creationTime:J
.field private duration:J
.field private height:D
.field private layer:I
.field private matrix:[J
.field private modificationTime:J
.field private trackId:J
.field private volume:F
.field private width:D
.method public constructor <init>()V
.registers 2
const-string v0, "tkhd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
const/16 v0, 0x9
new-array v0, v0, [J
fill-array-data v0, :array_10
iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
return-void
nop
:array_10
.array-data 0x8
0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 7
const/16 v4, 0x9
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_54
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
:goto_27
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I
invoke-static {p1}, Lcom/coremedia/iso/e;->j(Ljava/nio/ByteBuffer;)F
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
new-array v0, v4, [J
iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
const/4 v0, 0x0
:goto_47
if-ge v0, v4, :cond_70
iget-object v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v2
aput-wide v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_47
:cond_54
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
goto :goto_27
:cond_70
invoke-static {p1}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D
invoke-static {p1}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D
return-void
.end method
.method public getAlternateGroup()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I
return v0
.end method
.method public getContent(Ljava/nio/ByteBuffer;)V
.registers 7
const/4 v0, 0x0
const-wide/16 v3, 0x0
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_4b
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_24
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I
invoke-static {p1, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I
invoke-static {p1, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F
float-to-double v1, v1
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;D)V
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
:goto_3d
const/16 v1, 0x9
if-ge v0, v1, :cond_63
iget-object v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
aget-wide v1, v1, v0
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:cond_4b
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_24
:cond_63
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V
return-void
.end method
.method protected getContentSize()J
.registers 5
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_d
const-wide/16 v0, 0x24
:goto_9
const-wide/16 v2, 0x3c
add-long/2addr v0, v2
return-wide v0
:cond_d
const-wide/16 v0, 0x18
goto :goto_9
.end method
.method public getCreationTime()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
return-wide v0
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
return-wide v0
.end method
.method public getHeight()D
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D
return-wide v0
.end method
.method public getLayer()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I
return v0
.end method
.method public getMatrix()[J
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
return-object v0
.end method
.method public getModificationTime()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
return-wide v0
.end method
.method public getTrackId()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
return-wide v0
.end method
.method public getVolume()F
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F
return v0
.end method
.method public getWidth()D
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D
return-wide v0
.end method
.method public isEnabled()Z
.registers 2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x1
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isInMovie()Z
.registers 2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isInPoster()Z
.registers 2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x8
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isInPreview()Z
.registers 2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public setAlternateGroup(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I
return-void
.end method
.method public setCreationTime(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:J
return-void
.end method
.method public setDuration(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J
return-void
.end method
.method public setHeight(D)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D
return-void
.end method
.method public setLayer(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I
return-void
.end method
.method public setMatrix([J)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
return-void
.end method
.method public setModificationTime(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:J
return-void
.end method
.method public setTrackId(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J
return-void
.end method
.method public setVolume(F)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F
return-void
.end method
.method public setWidth(D)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "TrackHeaderBox["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "creationTime="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getCreationTime()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "modificationTime="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getModificationTime()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "trackId="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "duration="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getDuration()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "layer="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "alternateGroup="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getAlternateGroup()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "volume="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVolume()F
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const/4 v0, 0x0
:goto_84
iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
array-length v2, v2
if-ge v0, v2, :cond_a8
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "matrix"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:[J
aget-wide v3, v3, v0
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_84
:cond_a8
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "width="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "height="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
const-string v0, "]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method