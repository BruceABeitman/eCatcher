.class public Lcom/coremedia/iso/boxes/HandlerBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "HandlerBox.java"
.field public static final TYPE:Ljava/lang/String; = "hdlr"
.field public static final readableTypes:Ljava/util/Map;
.field private a:J
.field private b:J
.field private c:J
.field private handlerType:Ljava/lang/String;
.field private name:Ljava/lang/String;
.field private shouldBeZeroButAppleWritesHereSomeValue:J
.field private zeroTerm:Z
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "odsm"
const-string v2, "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "crsm"
const-string v2, "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "sdsm"
const-string v2, "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "m7sm"
const-string v2, "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "ocsm"
const-string v2, "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "ipsm"
const-string v2, "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mjsm"
const-string v2, "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mdir"
const-string v2, "Apple Meta Data iTunes Reader"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mp7b"
const-string v2, "MPEG-7 binary XML"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mp7t"
const-string v2, "MPEG-7 XML"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "vide"
const-string v2, "Video Track"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "soun"
const-string v2, "Sound Track"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "hint"
const-string v2, "Hint Track"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "appl"
const-string v2, "Apple specific"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "meta"
const-string v2, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
sput-object v0, Lcom/coremedia/iso/boxes/HandlerBox;->readableTypes:Ljava/util/Map;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-string v0, "hdlr"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HandlerBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->shouldBeZeroButAppleWritesHereSomeValue:J
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->a:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->b:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->c:J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_53
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
const-string v1, "\u0000"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
iget-object v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
:goto_4f
return-void
:cond_50
iput-boolean v2, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
goto :goto_4f
:cond_53
iput-boolean v2, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
goto :goto_4f
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HandlerBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->shouldBeZeroButAppleWritesHereSomeValue:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->a:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->b:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->c:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
:cond_2d
iget-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
if-eqz v0, :cond_35
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
:cond_35
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x19
int-to-long v0, v0
:goto_d
return-wide v0
:cond_e
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x18
int-to-long v0, v0
goto :goto_d
.end method
.method public getHandlerType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
return-object v0
.end method
.method public getHumanReadableTrackType()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/coremedia/iso/boxes/HandlerBox;->readableTypes:Ljava/util/Map;
iget-object v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_15
sget-object v0, Lcom/coremedia/iso/boxes/HandlerBox;->readableTypes:Ljava/util/Map;
iget-object v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_14
return-object v0
:cond_15
const-string v0, "Unknown Handler Type"
goto :goto_14
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
return-object v0
.end method
.method public setHandlerType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "HandlerBox[handlerType="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";name="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/HandlerBox;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method