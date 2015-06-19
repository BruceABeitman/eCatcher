.class public abstract Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AbstractAppleMetaDataBox.java"
.implements Lcom/coremedia/iso/boxes/ContainerBox;
.field static final synthetic $assertionsDisabled:Z
.field private static LOG:Ljava/util/logging/Logger;
.field  appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->$assertionsDisabled:Z
const-class v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->LOG:Ljava/util/logging/Logger;
return-void
:cond_18
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method
.method public static hexStringToByteArray(Ljava/lang/String;)[B
.registers 8
const/16 v6, 0x10
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
div-int/lit8 v0, v1, 0x2
new-array v2, v0, [B
const/4 v0, 0x0
:goto_b
if-ge v0, v1, :cond_2a
div-int/lit8 v3, v0, 0x2
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I
move-result v4
shl-int/lit8 v4, v4, 0x4
add-int/lit8 v5, v0, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I
move-result v5
add-int/2addr v4, v5
int-to-byte v4, v4
aput-byte v4, v2, v3
add-int/lit8 v0, v0, 0x2
goto :goto_b
:cond_2a
return-object v2
.end method
.method static toLong(B)J
.registers 3
if-gez p0, :cond_6
add-int/lit16 v0, p0, 0x100
int-to-long v0, v0
:goto_5
return-wide v0
:cond_6
int-to-long v0, p0
goto :goto_5
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 8
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
sget-boolean v1, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->$assertionsDisabled:Z
if-nez v1, :cond_19
const-string v1, "data"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_19
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_19
new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
:try_start_20
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
new-instance v1, Lcom/googlecode/mp4parser/c/a;
invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/c/a;-><init>(Ljava/nio/ByteBuffer;)V
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v3
int-to-long v3, v3
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
:try_end_31
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_37
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, p0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
return-void
:catch_37
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public getBoxes()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
new-instance v1, Lcom/googlecode/mp4parser/c/a;
invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/c/a;-><init>(Ljava/nio/ByteBuffer;)V
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
:try_end_a
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "The Channel is based on a ByteBuffer and therefore it shouldn\'t throw any exception"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getSize()J
move-result-wide v0
return-wide v0
.end method
.method public getNumOfBytesToFirstChild()J
.registers 5
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getSize()J
move-result-wide v0
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getSize()J
move-result-wide v2
sub-long/2addr v0, v2
return-wide v0
.end method
.method public getValue()Ljava/lang/String;
.registers 11
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v2
if-ne v2, v1, :cond_15
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/k;->a([B)Ljava/lang/String;
move-result-object v0
:goto_14
return-object v0
:cond_15
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v2
const/16 v3, 0x15
if-ne v2, v3, :cond_43
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v5
const-wide/16 v2, 0x0
array-length v6, v5
array-length v7, v5
move-wide v3, v2
:goto_2a
if-ge v0, v7, :cond_3e
aget-byte v2, v5, v0
invoke-static {v2}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->toLong(B)J
move-result-wide v8
add-int/lit8 v2, v1, 0x1
sub-int v1, v6, v1
mul-int/lit8 v1, v1, 0x8
shl-long/2addr v8, v1
add-long/2addr v3, v8
add-int/lit8 v0, v0, 0x1
move v1, v2
goto :goto_2a
:cond_3e
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_43
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v2
if-nez v2, :cond_61
const-string v2, "%x"
new-array v1, v1, [Ljava/lang/Object;
new-instance v3, Ljava/math/BigInteger;
iget-object v4, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v4}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v4
invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V
aput-object v3, v1, v0
invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_61
const-string v0, "unknown"
goto :goto_14
.end method
.method public setBoxes(Ljava/util/List;)V
.registers 5
const/4 v2, 0x0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_19
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
if-eqz v0, :cond_19
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
:cond_19
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "This box only accepts one AppleDataBox child"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setValue(Ljava/lang/String;)V
.registers 8
const/16 v5, 0x15
const/4 v3, 0x1
const/4 v4, 0x4
const/4 v2, 0x0
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v0
if-ne v0, v3, :cond_2f
new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
new-array v1, v4, [B
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-static {p1}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V
:goto_2e
return-void
:cond_2f
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v0
if-ne v0, v5, :cond_9c
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v0
new-instance v1, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v1, v5}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
new-array v2, v4, [B
invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V
array-length v1, v0
invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
array-length v2, v0
if-ne v2, v3, :cond_70
invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
move-result v0
and-int/lit16 v0, v0, 0xff
invoke-static {v1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
:goto_66
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V
goto :goto_2e
:cond_70
array-length v2, v0
const/4 v3, 0x2
if-ne v2, v3, :cond_7c
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {v1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
goto :goto_66
:cond_7c
array-length v2, v0
if-ne v2, v4, :cond_87
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_66
:cond_87
array-length v0, v0
const/16 v2, 0x8
if-ne v0, v2, :cond_94
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
goto :goto_66
:cond_94
new-instance v0, Ljava/lang/Error;
const-string v1, "The content length within the appleDataBox is neither 1, 2, 4 or 8. I can\'t handle that!"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
:cond_9c
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v0
if-nez v0, :cond_c7
new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
new-array v1, v4, [B
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-static {p1}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->hexStringToByteArray(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V
goto/16 :goto_2e
:cond_c7
sget-object v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->LOG:Ljava/util/logging/Logger;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Don\'t know how to handle appleDataBox with flag="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
goto/16 :goto_2e
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "{appleDataBox="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method