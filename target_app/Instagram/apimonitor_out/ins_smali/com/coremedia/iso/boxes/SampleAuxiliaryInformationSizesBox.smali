.class public Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleAuxiliaryInformationSizesBox.java"
.field static final synthetic $assertionsDisabled:Z = false
.field public static final TYPE:Ljava/lang/String; = "saiz"
.field private auxInfoType:Ljava/lang/String;
.field private auxInfoTypeParameter:Ljava/lang/String;
.field private defaultSampleInfoSize:I
.field private sampleCount:I
.field private sampleInfoSizes:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
const-string v0, "saiz"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x1
const/4 v1, 0x1
if-ne v0, v1, :cond_18
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;
:cond_18
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-short v0, v0
iput v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
if-nez v0, :cond_48
const/4 v0, 0x0
:goto_33
iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
if-ge v0, v1, :cond_48
iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v2
int-to-short v2, v2
invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_33
:cond_48
return-void
.end method
.method public getAuxInfoType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;
return-object v0
.end method
.method public getAuxInfoTypeParameter()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x1
const/4 v1, 0x1
if-ne v0, v1, :cond_1e
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
:cond_1e
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_37
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Short;
invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
goto :goto_37
:cond_4b
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_51
return-void
.end method
.method protected getContentSize()J
.registers 4
const/4 v0, 0x4
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I
move-result v1
and-int/lit8 v1, v1, 0x1
const/4 v2, 0x1
if-ne v1, v2, :cond_c
const/16 v0, 0xc
:cond_c
add-int/lit8 v1, v0, 0x5
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_18
add-int/2addr v0, v1
int-to-long v0, v0
return-wide v0
:cond_1b
const/4 v0, 0x0
goto :goto_18
.end method
.method public getDefaultSampleInfoSize()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
return v0
.end method
.method public getSampleCount()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
return v0
.end method
.method public getSampleInfoSizes()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
return-object v0
.end method
.method public setAuxInfoType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;
return-void
.end method
.method public setAuxInfoTypeParameter(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;
return-void
.end method
.method public setDefaultSampleInfoSize(I)V
.registers 3
sget-boolean v0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->$assertionsDisabled:Z
if-nez v0, :cond_e
const/16 v0, 0xff
if-le p1, v0, :cond_e
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_e
iput p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
return-void
.end method
.method public setSampleCount(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
return-void
.end method
.method public setSampleInfoSizes(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleCount="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", auxInfoType=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", auxInfoTypeParameter=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method