.class public Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "QuicktimeTextSampleEntry.java"
.field public static final TYPE:Ljava/lang/String; = "text"
.field  backgroundB:I
.field  backgroundG:I
.field  backgroundR:I
.field  defaultTextBox:J
.field  displayFlags:I
.field  fontFace:S
.field  fontName:Ljava/lang/String;
.field  fontNumber:S
.field  foregroundB:I
.field  foregroundG:I
.field  foregroundR:I
.field  reserved1:J
.field  reserved2:B
.field  reserved3:S
.field  textJustification:I
.method public constructor <init>()V
.registers 3
const v1, 0xffff
const-string v0, "text"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V
iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I
iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I
iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S
move-result v0
iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S
move-result v0
iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B
move-result v0
iput-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S
move-result v0
iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_6e
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
:goto_6d
return-void
:cond_6e
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
goto :goto_6d
.end method
.method public getBackgroundB()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I
return v0
.end method
.method public getBackgroundG()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I
return v0
.end method
.method public getBackgroundR()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I
return v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
:cond_5f
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
:goto_a
add-int/lit8 v0, v0, 0x34
int-to-long v0, v0
return-wide v0
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public getDefaultTextBox()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J
return-wide v0
.end method
.method public getDisplayFlags()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I
return v0
.end method
.method public getFontFace()S
.registers 2
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S
return v0
.end method
.method public getFontName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
return-object v0
.end method
.method public getFontNumber()S
.registers 2
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S
return v0
.end method
.method public getForegroundB()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I
return v0
.end method
.method public getForegroundG()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I
return v0
.end method
.method public getForegroundR()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I
return v0
.end method
.method public getReserved1()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J
return-wide v0
.end method
.method public getReserved2()B
.registers 2
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B
return v0
.end method
.method public getReserved3()S
.registers 2
iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S
return v0
.end method
.method public getTextJustification()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I
return v0
.end method
.method public setBackgroundB(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I
return-void
.end method
.method public setBackgroundG(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I
return-void
.end method
.method public setBackgroundR(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I
return-void
.end method
.method public setDefaultTextBox(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J
return-void
.end method
.method public setDisplayFlags(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I
return-void
.end method
.method public setFontFace(S)V
.registers 2
iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S
return-void
.end method
.method public setFontName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;
return-void
.end method
.method public setFontNumber(S)V
.registers 2
iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S
return-void
.end method
.method public setForegroundB(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I
return-void
.end method
.method public setForegroundG(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I
return-void
.end method
.method public setForegroundR(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I
return-void
.end method
.method public setReserved1(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J
return-void
.end method
.method public setReserved2(B)V
.registers 2
iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B
return-void
.end method
.method public setReserved3(S)V
.registers 2
iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S
return-void
.end method
.method public setTextJustification(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I
return-void
.end method