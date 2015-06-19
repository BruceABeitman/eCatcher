.class public Lcom/googlecode/mp4parser/boxes/piff/PiffTrackEncryptionBox;
.super Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
.source "PiffTrackEncryptionBox.java"
.method public constructor <init>()V
.registers 2
const-string v0, "uuid"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getFlags()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getUserType()[B
.registers 2
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_8
return-object v0
:array_8
.array-data 0x1
0x89t
0x74t
0xdbt
0xcet
0x7bt
0xe7t
0x4ct
0x51t
0x84t
0xf9t
0x71t
0x48t
0xf9t
0x88t
0x25t
0x54t
.end array-data
.end method