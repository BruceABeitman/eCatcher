.class public Lcom/coremedia/iso/boxes/dece/TrickPlayBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrickPlayBox.java"
.field public static final TYPE:Ljava/lang/String; = "trik"
.field private entries:Ljava/util/List;
.method public constructor <init>()V
.registers 2
const-string v0, "trik"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
:goto_3
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_18
iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
new-instance v1, Lcom/coremedia/iso/boxes/dece/a;
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v2
invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/dece/a;-><init>(I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_3
:cond_18
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/dece/a;
invoke-static {v0}, Lcom/coremedia/iso/boxes/dece/a;->a(Lcom/coremedia/iso/boxes/dece/a;)I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
goto :goto_9
:cond_1d
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x4
int-to-long v0, v0
return-wide v0
.end method
.method public getEntries()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
return-object v0
.end method
.method public setEntries(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "TrickPlayBox"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{entries="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method