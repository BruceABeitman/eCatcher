.class public Lcom/coremedia/iso/boxes/XmlBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "XmlBox.java"
.field public static final TYPE:Ljava/lang/String; = "xml "
.field  xml:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "xml "
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
const-string v0, ""
iput-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/XmlBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/XmlBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x4
int-to-long v0, v0
return-wide v0
.end method
.method public getXml()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
return-object v0
.end method
.method public setXml(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "XmlBox{xml=\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method