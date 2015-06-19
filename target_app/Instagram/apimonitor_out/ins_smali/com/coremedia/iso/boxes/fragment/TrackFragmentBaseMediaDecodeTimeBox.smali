.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackFragmentBaseMediaDecodeTimeBox.java"
.field public static final TYPE:Ljava/lang/String; = "tfdt"
.field private baseMediaDecodeTime:J
.method public constructor <init>()V
.registers 2
const-string v0, "tfdt"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_11
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
:goto_10
return-void
:cond_11
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
goto :goto_10
.end method
.method public getBaseMediaDecodeTime()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
return-wide v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_10
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_f
return-void
:cond_10
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_f
.end method
.method protected getContentSize()J
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->getVersion()I
move-result v0
if-nez v0, :cond_9
const-wide/16 v0, 0x8
:goto_8
return-wide v0
:cond_9
const-wide/16 v0, 0xc
goto :goto_8
.end method
.method public setBaseMediaDecodeTime(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method