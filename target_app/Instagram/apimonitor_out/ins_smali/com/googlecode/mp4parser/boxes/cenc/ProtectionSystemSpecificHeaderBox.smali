.class public Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ProtectionSystemSpecificHeaderBox.java"
.field static final synthetic $assertionsDisabled:Z = false
.field public static OMA2_SYSTEM_ID:[B = null
.field public static PLAYREADY_SYSTEM_ID:[B = null
.field public static final TYPE:Ljava/lang/String; = "pssh"
.field  content:[B
.field  systemId:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_24
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z
const-string v0, "A2B55680-6F43-11E0-9A3F-0002A5D5C51B"
invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
move-result-object v0
invoke-static {v0}, Lcom/googlecode/mp4parser/c/d;->a(Ljava/util/UUID;)[B
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->OMA2_SYSTEM_ID:[B
const-string v0, "9A04F079-9840-4286-AB92-E65BE0885F95"
invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
move-result-object v0
invoke-static {v0}, Lcom/googlecode/mp4parser/c/d;->a(Ljava/util/UUID;)[B
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->PLAYREADY_SYSTEM_ID:[B
return-void
:cond_24
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
const-string v0, "pssh"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
const/16 v0, 0x10
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v2
new-array v2, v2, [B
iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
sget-boolean v2, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z
if-nez v2, :cond_31
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
array-length v2, v2
int-to-long v2, v2
cmp-long v0, v0, v2
if-eqz v0, :cond_31
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_31
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 5
const/16 v2, 0x10
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
sget-boolean v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z
if-nez v0, :cond_14
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
array-length v0, v0
if-eq v0, v2, :cond_14
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_14
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
const/4 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
array-length v0, v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public getContent()[B
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
return-object v0
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
array-length v0, v0
add-int/lit8 v0, v0, 0x18
int-to-long v0, v0
return-wide v0
.end method
.method public getSystemId()[B
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
return-object v0
.end method
.method public setContent([B)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B
return-void
.end method
.method public setSystemId([B)V
.registers 4
sget-boolean v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z
if-nez v0, :cond_f
array-length v0, p1
const/16 v1, 0x10
if-eq v0, v1, :cond_f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B
return-void
.end method