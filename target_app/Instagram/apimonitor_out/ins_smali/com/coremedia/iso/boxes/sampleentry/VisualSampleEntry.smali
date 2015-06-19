.class public Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "VisualSampleEntry.java"
.implements Lcom/coremedia/iso/boxes/ContainerBox;
.field static final synthetic $assertionsDisabled:Z = false
.field public static final TYPE1:Ljava/lang/String; = "mp4v"
.field public static final TYPE2:Ljava/lang/String; = "s263"
.field public static final TYPE3:Ljava/lang/String; = "avc1"
.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "encv"
.field private compressorname:Ljava/lang/String;
.field private depth:I
.field private frameCount:I
.field private height:I
.field private horizresolution:D
.field private predefined:[J
.field private vertresolution:D
.field private width:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const-wide/high16 v0, 0x4052
invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V
iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D
iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D
const/4 v0, 0x1
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I
const/16 v0, 0x18
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I
const/4 v0, 0x3
new-array v0, v0, [J
iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 9
const-wide/16 v5, 0x0
const/16 v1, 0x1f
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-long v2, v0
sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z
if-nez v0, :cond_1c
cmp-long v0, v5, v2
if-eqz v0, :cond_1c
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "reserved byte not 0"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_1c
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-long v2, v0
sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z
if-nez v0, :cond_31
cmp-long v0, v5, v2
if-eqz v0, :cond_31
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "reserved byte not 0"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_31
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
const/4 v2, 0x0
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v3
aput-wide v3, v0, v2
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
const/4 v2, 0x1
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v3
aput-wide v3, v0, v2
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
const/4 v2, 0x2
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v3
aput-wide v3, v0, v2
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I
invoke-static {p1}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v2
iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D
invoke-static {p1}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v2
iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v2
sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z
if-nez v0, :cond_78
cmp-long v0, v5, v2
if-eqz v0, :cond_78
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "reserved byte not 0"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_78
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
if-le v0, v1, :cond_99
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "invalid compressor name displayable data: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
move v0, v1
:cond_99
new-array v2, v0, [B
invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v2}, Lcom/coremedia/iso/k;->a([B)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;
if-ge v0, v1, :cond_ad
rsub-int/lit8 v0, v0, 0x1f
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
:cond_ad
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-long v0, v0
sget-boolean v2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z
if-nez v2, :cond_c9
const-wide/32 v2, 0xffff
cmp-long v0, v2, v0
if-eqz v0, :cond_c9
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_c9
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method public getCompressorname()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
aget-wide v0, v0, v2
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
const/4 v1, 0x1
aget-wide v0, v0, v1
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J
const/4 v1, 0x2
aget-wide v0, v0, v1
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V
const-wide/16 v0, 0x0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
:goto_67
const/16 v1, 0x1f
if-ge v0, v1, :cond_71
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
goto :goto_67
:cond_71
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
const v0, 0xffff
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 7
const-wide/16 v0, 0x4e
iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->boxes:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J
move-result-wide v4
add-long v0, v1, v4
move-wide v1, v0
goto :goto_9
:cond_1d
return-wide v1
.end method
.method public getDepth()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I
return v0
.end method
.method public getFrameCount()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I
return v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I
return v0
.end method
.method public getHorizresolution()D
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D
return-wide v0
.end method
.method public getVertresolution()D
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D
return-wide v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I
return v0
.end method
.method public setCompressorname(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;
return-void
.end method
.method public setDepth(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I
return-void
.end method
.method public setFrameCount(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I
return-void
.end method
.method public setHeight(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I
return-void
.end method
.method public setHorizresolution(D)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D
return-void
.end method
.method public setVertresolution(D)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I
return-void
.end method