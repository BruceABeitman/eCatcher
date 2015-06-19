.class public Lcom/coremedia/iso/boxes/AlbumBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AlbumBox.java"
.field public static final TYPE:Ljava/lang/String; = "albm"
.field private albumTitle:Ljava/lang/String;
.field private language:Ljava/lang/String;
.field private trackNumber:I
.method public constructor <init>()V
.registers 2
const-string v0, "albm"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/AlbumBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->k(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_1c
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
:goto_1b
return-void
:cond_1c
const/4 v0, -0x1
iput v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
goto :goto_1b
.end method
.method public getAlbumTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/AlbumBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
const/4 v1, -0x1
if-eq v0, v1, :cond_1f
iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
:cond_1f
return-void
.end method
.method protected getContentSize()J
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x6
add-int/lit8 v1, v0, 0x1
iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
const/4 v2, -0x1
if-ne v0, v2, :cond_13
const/4 v0, 0x0
:goto_10
add-int/2addr v0, v1
int-to-long v0, v0
return-wide v0
:cond_13
const/4 v0, 0x1
goto :goto_10
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;
return-object v0
.end method
.method public getTrackNumber()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
return v0
.end method
.method public setAlbumTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;
return-void
.end method
.method public setLanguage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;
return-void
.end method
.method public setTrackNumber(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "AlbumBox[language="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "albumTitle="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getAlbumTitle()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I
if-ltz v1, :cond_36
const-string v1, ";trackNumber="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getTrackNumber()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_36
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method