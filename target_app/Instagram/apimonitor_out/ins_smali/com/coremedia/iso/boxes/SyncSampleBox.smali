.class public Lcom/coremedia/iso/boxes/SyncSampleBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SyncSampleBox.java"
.field public static final TYPE:Ljava/lang/String; = "stss"
.field private sampleNumber:[J
.method public constructor <init>()V
.registers 2
const-string v0, "stss"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v1
new-array v0, v1, [J
iput-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
const/4 v0, 0x0
:goto_10
if-ge v0, v1, :cond_1d
iget-object v2, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v3
aput-wide v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1d
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
array-length v0, v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
array-length v2, v1
const/4 v0, 0x0
:goto_e
if-ge v0, v2, :cond_18
aget-wide v3, v1, v0
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_18
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
array-length v0, v0
mul-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x8
int-to-long v0, v0
return-wide v0
.end method
.method public getSampleNumber()[J
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
return-object v0
.end method
.method public setSampleNumber([J)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SyncSampleBox[entryCount="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method