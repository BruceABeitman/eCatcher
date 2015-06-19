.class public Lcom/coremedia/iso/boxes/OriginalFormatBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "OriginalFormatBox.java"
.field static final synthetic $assertionsDisabled:Z = false
.field public static final TYPE:Ljava/lang/String; = "frma"
.field private dataFormat:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/boxes/OriginalFormatBox;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
const-string v0, "frma"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
const-string v0, "    "
iput-object v0, p0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->dataFormat:Ljava/lang/String;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->dataFormat:Ljava/lang/String;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->dataFormat:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x4
return-wide v0
.end method
.method public getDataFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->dataFormat:Ljava/lang/String;
return-object v0
.end method
.method public setDataFormat(Ljava/lang/String;)V
.registers 4
sget-boolean v0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->$assertionsDisabled:Z
if-nez v0, :cond_11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x4
if-eq v0, v1, :cond_11
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_11
iput-object p1, p0, Lcom/coremedia/iso/boxes/OriginalFormatBox;->dataFormat:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "OriginalFormatBox[dataFormat="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/OriginalFormatBox;->getDataFormat()Ljava/lang/String;
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