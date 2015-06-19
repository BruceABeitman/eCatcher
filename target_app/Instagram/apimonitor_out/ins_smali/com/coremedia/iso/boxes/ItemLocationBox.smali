.class public Lcom/coremedia/iso/boxes/ItemLocationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ItemLocationBox.java"
.field public static final TYPE:Ljava/lang/String; = "iloc"
.field public baseOffsetSize:I
.field public indexSize:I
.field public items:Ljava/util/List;
.field public lengthSize:I
.field public offsetSize:I
.method public constructor <init>()V
.registers 3
const/16 v1, 0x8
const-string v0, "iloc"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I
iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I
iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
const/4 v0, 0x0
iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
ushr-int/lit8 v1, v0, 0x4
iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I
and-int/lit8 v0, v0, 0xf
iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
ushr-int/lit8 v1, v0, 0x4
iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_22
and-int/lit8 v0, v0, 0xf
iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I
:cond_22
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v1
const/4 v0, 0x0
:goto_27
if-ge v0, v1, :cond_36
iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
new-instance v3, Lcom/coremedia/iso/boxes/e;
invoke-direct {v3, p0, p1}, Lcom/coremedia/iso/boxes/e;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_36
return-void
.end method
.method public createExtent(JJJ)Lcom/coremedia/iso/boxes/d;
.registers 15
new-instance v0, Lcom/coremedia/iso/boxes/d;
move-object v1, p0
move-wide v2, p1
move-wide v4, p3
move-wide v6, p5
invoke-direct/range {v0 .. v7}, Lcom/coremedia/iso/boxes/d;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;JJJ)V
return-object v0
.end method
.method  createExtent(Ljava/nio/ByteBuffer;)Lcom/coremedia/iso/boxes/d;
.registers 3
new-instance v0, Lcom/coremedia/iso/boxes/d;
invoke-direct {v0, p0, p1}, Lcom/coremedia/iso/boxes/d;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
return-object v0
.end method
.method public createItem(IIIJLjava/util/List;)Lcom/coremedia/iso/boxes/e;
.registers 15
new-instance v0, Lcom/coremedia/iso/boxes/e;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move-wide v5, p4
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/coremedia/iso/boxes/e;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;IIIJLjava/util/List;)V
return-object v0
.end method
.method  createItem(Ljava/nio/ByteBuffer;)Lcom/coremedia/iso/boxes/e;
.registers 3
new-instance v0, Lcom/coremedia/iso/boxes/e;
invoke-direct {v0, p0, p1}, Lcom/coremedia/iso/boxes/e;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
return-object v0
.end method
.method public getBaseOffsetSize()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
return v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I
shl-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I
or-int/2addr v0, v1
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_3d
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
shl-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I
or-int/2addr v0, v1
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
:goto_1e
iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/e;
invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/e;->a(Ljava/nio/ByteBuffer;)V
goto :goto_2d
:cond_3d
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
shl-int/lit8 v0, v0, 0x4
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
goto :goto_1e
:cond_45
return-void
.end method
.method protected getContentSize()J
.registers 7
const-wide/16 v0, 0x8
iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/e;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/e;->a()I
move-result v0
int-to-long v4, v0
add-long v0, v1, v4
move-wide v1, v0
goto :goto_9
:cond_1e
return-wide v1
.end method
.method public getIndexSize()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I
return v0
.end method
.method public getItems()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
return-object v0
.end method
.method public getLengthSize()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I
return v0
.end method
.method public getOffsetSize()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I
return v0
.end method
.method public setBaseOffsetSize(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
return-void
.end method
.method public setIndexSize(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I
return-void
.end method
.method public setItems(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;
return-void
.end method
.method public setLengthSize(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I
return-void
.end method
.method public setOffsetSize(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I
return-void
.end method