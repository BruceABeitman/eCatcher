.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackFragmentBox.java"
.field public static final TYPE:Ljava/lang/String; = "traf"
.method public constructor <init>()V
.registers 2
const-string v0, "traf"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
.registers 4
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
if-eqz v2, :cond_8
check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
:goto_1a
return-object v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method