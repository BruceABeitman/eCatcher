.class public Lcom/googlecode/mp4parser/boxes/piff/PiffSampleEncryptionBox;
.super Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.source "PiffSampleEncryptionBox.java"
.method public constructor <init>()V
.registers 2
const-string v0, "uuid"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getUserType()[B
.registers 2
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_8
return-object v0
:array_8
.array-data 0x1
0xa2t
0x39t
0x4ft
0x52t
0x5at
0x9bt
0x4ft
0x14t
0xa2t
0x44t
0x6ct
0x42t
0x7ct
0x64t
0x8dt
0xf4t
.end array-data
.end method