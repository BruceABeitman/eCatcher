.class public Lcom/coremedia/iso/boxes/TrackBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackBox.java"
.field public static final TYPE:Ljava/lang/String; = "trak"
.method public constructor <init>()V
.registers 2
const-string v0, "trak"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/MediaBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
.registers 2
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method