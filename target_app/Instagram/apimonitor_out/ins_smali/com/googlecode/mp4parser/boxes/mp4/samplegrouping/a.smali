.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "CencSampleEncryptionInformationGroupEntry.java"
.field static final synthetic a:Z
.field private b:I
.field private c:B
.field private d:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
return-void
.end method
.method public final a()Ljava/nio/ByteBuffer;
.registers 3
const/16 v0, 0x14
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
invoke-static {v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
invoke-static {v0, v1}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
return-object v0
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-byte v0, v0
iput-byte v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
const/16 v0, 0x10
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-byte v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
iget-byte v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
mul-int/lit8 v0, v0, 0x1f
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
move-result v0
:goto_13
add-int/2addr v0, v1
return v0
:cond_15
const/4 v0, 0x0
goto :goto_13
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "CencSampleEncryptionInformationGroupEntry{isEncrypted="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", ivSize="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->c:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", kid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->d:[B
invoke-static {v1}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
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