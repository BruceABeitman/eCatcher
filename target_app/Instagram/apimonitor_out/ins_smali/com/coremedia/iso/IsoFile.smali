.class public Lcom/coremedia/iso/IsoFile;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "IsoFile.java"
.implements Ljava/io/Closeable;
.field static final synthetic $assertionsDisabled:Z
.field protected boxParser:Lcom/coremedia/iso/b;
.field  byteChannel:Ljava/nio/channels/ReadableByteChannel;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/IsoFile;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/IsoFile;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
const-string v0, ""
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/i;
invoke-direct {v0}, Lcom/coremedia/iso/i;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
return-void
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 3
const-string v0, ""
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/i;
invoke-direct {v0}, Lcom/coremedia/iso/i;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;
invoke-virtual {p0}, Lcom/coremedia/iso/IsoFile;->createBoxParser()Lcom/coremedia/iso/b;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V
return-void
.end method
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
.registers 3
const-string v0, ""
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/i;
invoke-direct {v0}, Lcom/coremedia/iso/i;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;
invoke-virtual {p0}, Lcom/coremedia/iso/IsoFile;->createBoxParser()Lcom/coremedia/iso/b;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V
return-void
.end method
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/b;)V
.registers 4
const-string v0, ""
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/i;
invoke-direct {v0}, Lcom/coremedia/iso/i;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;
iput-object p2, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V
return-void
.end method
.method public static bytesToFourCC([B)Ljava/lang/String;
.registers 5
const/4 v3, 0x4
const/4 v2, 0x0
new-array v0, v3, [B
fill-array-data v0, :array_22
if-eqz p0, :cond_11
array-length v1, p0
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_11
:try_start_11
new-instance v1, Ljava/lang/String;
const-string v2, "ISO-8859-1"
invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_18
.catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_18} :catch_19
return-object v1
:catch_19
move-exception v0
new-instance v1, Ljava/lang/Error;
const-string v2, "Required character encoding is missing"
invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:array_22
.array-data 0x1
0x0t
0x0t
0x0t
0x0t
.end array-data
.end method
.method public static fourCCtoBytes(Ljava/lang/String;)[B
.registers 5
const/4 v3, 0x4
new-array v1, v3, [B
if-eqz p0, :cond_1a
const/4 v0, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I
move-result v2
if-ge v0, v2, :cond_1a
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1a
return-object v1
.end method
.method private parse()V
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
:goto_2
if-nez v0, :cond_19
:try_start_4
iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/b;
iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;
invoke-interface {v2, v3, p0}, Lcom/coremedia/iso/b;->a(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/a;
move-result-object v2
if-eqz v2, :cond_17
iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_13
.catch Ljava/io/EOFException; {:try_start_4 .. :try_end_13} :catch_14
goto :goto_2
:catch_14
move-exception v0
move v0, v1
goto :goto_2
:cond_17
move v0, v1
goto :goto_2
:cond_19
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;
invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
return-void
.end method
.method protected createBoxParser()Lcom/coremedia/iso/b;
.registers 2
new-instance v0, Lcom/coremedia/iso/i;
invoke-direct {v0}, Lcom/coremedia/iso/i;-><init>()V
return-object v0
.end method
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
.registers 9
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v1, p1, Ljava/nio/channels/FileChannel;
if-eqz v1, :cond_3b
move-object v1, p1
check-cast v1, Ljava/nio/channels/FileChannel;
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v3
invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V
move-object v1, p1
check-cast v1, Ljava/nio/channels/FileChannel;
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v5
sub-long v3, v5, v3
sget-boolean v1, Lcom/coremedia/iso/IsoFile;->$assertionsDisabled:Z
if-nez v1, :cond_6
invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J
move-result-wide v0
cmp-long v0, v3, v0
if-eqz v0, :cond_6
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_3b
invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V
goto :goto_6
:cond_3f
return-void
.end method
.method public getIsoFile()Lcom/coremedia/iso/IsoFile;
.registers 1
return-object p0
.end method
.method public getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/MovieBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/MovieBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getNumOfBytesToFirstChild()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getSize()J
.registers 7
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J
move-result-wide v4
add-long v0, v1, v4
move-wide v1, v0
goto :goto_9
:cond_1d
return-wide v1
.end method
.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/a;)V
.registers 8
new-instance v0, Ljava/io/IOException;
const-string v1, "This method is not meant to be called. Use #parse() directly."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "IsoFile["
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
if-nez v0, :cond_1d
const-string v0, "unparsed"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13
const-string v0, "]"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1d
const/4 v0, 0x0
move v1, v0
:goto_1f
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_13
if-lez v1, :cond_2e
const-string v0, ";"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2e
iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1f
.end method