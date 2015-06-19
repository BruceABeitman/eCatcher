.class public abstract Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SampleEntry.java"
.implements Lcom/coremedia/iso/boxes/ContainerBox;
.field private boxParser:Lcom/coremedia/iso/b;
.field protected boxes:Ljava/util/List;
.field private dataReferenceIndex:I
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
return-void
.end method
.method public _parseChildBoxes(Ljava/nio/ByteBuffer;)V
.registers 5
:goto_0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
const/16 v1, 0x8
if-le v0, v1, :cond_20
:try_start_8
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxParser:Lcom/coremedia/iso/b;
new-instance v2, Lcom/googlecode/mp4parser/c/a;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/c/a;-><init>(Ljava/nio/ByteBuffer;)V
invoke-interface {v1, v2, p0}, Lcom/coremedia/iso/b;->a(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_18
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19
goto :goto_0
:catch_19
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_20
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->setDeadBytes(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method public _parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I
return-void
.end method
.method public _writeChildBoxes(Ljava/nio/ByteBuffer;)V
.registers 6
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
move-result-object v2
:try_start_9
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-interface {v0, v2}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V
:try_end_1e
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_1f
goto :goto_f
:catch_1f
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Cannot happen. Everything should be in memory and therefore no exceptions."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
:try_start_28
invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
:try_end_2b
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_1f
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public _writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public addBox(Lcom/coremedia/iso/boxes/a;)V
.registers 3
invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/a;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getBoxes()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
return-object v0
.end method
.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/ArrayList;
const/4 v0, 0x2
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_c
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-ne p1, v3, :cond_21
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_21
if-eqz p2, :cond_c
instance-of v3, v0, Lcom/coremedia/iso/boxes/ContainerBox;
if-eqz v3, :cond_c
check-cast v0, Lcom/coremedia/iso/boxes/ContainerBox;
invoke-interface {v0, p1, p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_c
:cond_31
return-object v1
.end method
.method public getDataReferenceIndex()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I
return v0
.end method
.method public getNumOfBytesToFirstChild()J
.registers 7
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
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
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getSize()J
move-result-wide v3
sub-long v0, v3, v1
return-wide v0
.end method
.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
.registers 6
iput-object p5, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxParser:Lcom/coremedia/iso/b;
invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
return-void
.end method
.method public removeBox(Lcom/coremedia/iso/boxes/a;)Z
.registers 3
invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/a;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public setBoxes(Ljava/util/List;)V
.registers 3
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;
return-void
.end method
.method public setDataReferenceIndex(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I
return-void
.end method
.method public setType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->type:Ljava/lang/String;
return-void
.end method