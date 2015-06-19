.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "BaseLocationBox.java"
.field  baseLocation:Ljava/lang/String;
.field  purchaseLocation:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "bloc"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "bloc"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
rsub-int v0, v0, 0x100
add-int/lit8 v0, v0, -0x1
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
rsub-int v0, v0, 0x100
add-int/lit8 v0, v0, -0x1
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
const/16 v0, 0x200
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
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
check-cast p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_29
:cond_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
if-nez v2, :cond_23
:cond_29
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
if-eqz v2, :cond_39
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_37
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_37
.end method
.method public getBaseLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
rsub-int v0, v0, 0x100
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
rsub-int v0, v0, 0x100
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
const/16 v0, 0x200
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x404
return-wide v0
.end method
.method public getPurchaseLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
if-eqz v2, :cond_17
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_17
add-int/2addr v0, v1
return v0
:cond_19
move v0, v1
goto :goto_b
.end method
.method public setBaseLocation(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;
return-void
.end method
.method public setPurchaseLocation(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;
return-void
.end method