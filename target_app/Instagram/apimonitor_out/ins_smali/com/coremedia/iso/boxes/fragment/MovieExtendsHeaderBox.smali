.class public Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieExtendsHeaderBox.java"
.field public static final TYPE:Ljava/lang/String; = "mehd"
.field private fragmentDuration:J
.method public constructor <init>()V
.registers 2
const-string v0, "mehd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_11
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
:goto_e
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J
return-void
:cond_11
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
goto :goto_e
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_10
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_f
return-void
:cond_10
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_f
.end method
.method protected getContentSize()J
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_a
const-wide/16 v0, 0xc
:goto_9
return-wide v0
:cond_a
const-wide/16 v0, 0x8
goto :goto_9
.end method
.method public getFragmentDuration()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J
return-wide v0
.end method
.method public setFragmentDuration(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J
return-void
.end method