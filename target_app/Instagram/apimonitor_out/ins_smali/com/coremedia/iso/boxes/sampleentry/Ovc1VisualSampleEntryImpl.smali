.class public Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "Ovc1VisualSampleEntryImpl.java"
.field public static final TYPE:Ljava/lang/String; = "ovc1"
.field private vc1Content:[B
.method protected constructor <init>()V
.registers 2
const-string v0, "ovc1"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
new-array v0, v0, [B
iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->getDataReferenceIndex()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 7
const-wide/16 v0, 0x8
iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->boxes:Ljava/util/List;
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
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B
array-length v0, v0
int-to-long v3, v0
add-long v0, v1, v3
return-wide v0
.end method