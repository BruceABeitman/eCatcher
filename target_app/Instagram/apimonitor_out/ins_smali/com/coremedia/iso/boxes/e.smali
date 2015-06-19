.class public final Lcom/coremedia/iso/boxes/e;
.super Ljava/lang/Object;
.source "ItemLocationBox.java"
.field public a:I
.field public b:I
.field public c:I
.field public d:J
.field public e:Ljava/util/List;
.field final synthetic f:Lcom/coremedia/iso/boxes/ItemLocationBox;
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;IIIJLjava/util/List;)V
.registers 9
iput-object p1, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
iput p2, p0, Lcom/coremedia/iso/boxes/e;->a:I
iput p3, p0, Lcom/coremedia/iso/boxes/e;->b:I
iput p4, p0, Lcom/coremedia/iso/boxes/e;->c:I
iput-wide p5, p0, Lcom/coremedia/iso/boxes/e;->d:J
iput-object p7, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
.registers 7
iput-object p1, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-static {p2}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/e;->a:I
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_21
invoke-static {p2}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
and-int/lit8 v0, v0, 0xf
iput v0, p0, Lcom/coremedia/iso/boxes/e;->b:I
:cond_21
invoke-static {p2}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/e;->c:I
iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
if-lez v0, :cond_47
iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
invoke-static {p2, v0}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/e;->d:J
:goto_33
invoke-static {p2}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v1
const/4 v0, 0x0
:goto_38
if-ge v0, v1, :cond_4c
iget-object v2, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
new-instance v3, Lcom/coremedia/iso/boxes/d;
invoke-direct {v3, p1, p2}, Lcom/coremedia/iso/boxes/d;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_47
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/e;->d:J
goto :goto_33
:cond_4c
return-void
.end method
.method public final a()I
.registers 4
const/4 v0, 0x2
iget-object v1, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_b
const/4 v0, 0x4
:cond_b
add-int/lit8 v0, v0, 0x2
iget-object v1, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
iget v1, v1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x2
iget-object v1, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_1b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/d;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/d;->a()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_1b
:cond_2e
return v1
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 5
iget v0, p0, Lcom/coremedia/iso/boxes/e;->a:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_13
iget v0, p0, Lcom/coremedia/iso/boxes/e;->b:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
:cond_13
iget v0, p0, Lcom/coremedia/iso/boxes/e;->c:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
if-lez v0, :cond_27
iget-wide v0, p0, Lcom/coremedia/iso/boxes/e;->d:J
iget-object v2, p0, Lcom/coremedia/iso/boxes/e;->f:Lcom/coremedia/iso/boxes/ItemLocationBox;
iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I
invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V
:cond_27
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_36
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/d;
invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/d;->a(Ljava/nio/ByteBuffer;)V
goto :goto_36
:cond_46
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/coremedia/iso/boxes/e;
iget-wide v2, p0, Lcom/coremedia/iso/boxes/e;->d:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/e;->d:J
cmp-long v2, v2, v4
if-eqz v2, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget v2, p0, Lcom/coremedia/iso/boxes/e;->b:I
iget v3, p1, Lcom/coremedia/iso/boxes/e;->b:I
if-eq v2, v3, :cond_27
move v0, v1
goto :goto_4
:cond_27
iget v2, p0, Lcom/coremedia/iso/boxes/e;->c:I
iget v3, p1, Lcom/coremedia/iso/boxes/e;->c:I
if-eq v2, v3, :cond_2f
move v0, v1
goto :goto_4
:cond_2f
iget v2, p0, Lcom/coremedia/iso/boxes/e;->a:I
iget v3, p1, Lcom/coremedia/iso/boxes/e;->a:I
if-eq v2, v3, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
iget-object v3, p1, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_45
move v0, v1
goto :goto_4
:cond_47
iget-object v2, p1, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
if-eqz v2, :cond_4
goto :goto_45
.end method
.method public final hashCode()I
.registers 7
iget v0, p0, Lcom/coremedia/iso/boxes/e;->a:I
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/e;->b:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/e;->c:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/e;->d:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/e;->d:J
const/16 v5, 0x20
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
:goto_24
add-int/2addr v0, v1
return v0
:cond_26
const/4 v0, 0x0
goto :goto_24
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Item{baseOffset="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/e;->d:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", itemId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/e;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", constructionMethod="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/e;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", dataReferenceIndex="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/e;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", extents="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/coremedia/iso/boxes/e;->e:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method