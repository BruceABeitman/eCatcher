.class public final Lcom/flurry/android/AdImage;
.super Lcom/flurry/android/aa;
.source "SourceFile"
.field  a:J
.field  b:I
.field  c:I
.field  d:[B
.field private e:Ljava/lang/String;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V
return-void
.end method
.method constructor <init>(Ljava/io/DataInput;)V
.registers 2
invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V
invoke-virtual {p0, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V
return-void
.end method
.method public final getHeight()I
.registers 2
iget v0, p0, Lcom/flurry/android/AdImage;->c:I
return v0
.end method
.method public final getId()J
.registers 3
iget-wide v0, p0, Lcom/flurry/android/AdImage;->a:J
return-wide v0
.end method
.method public final getImageData()[B
.registers 2
iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B
return-object v0
.end method
.method public final getMimeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;
return-object v0
.end method
.method public final getWidth()I
.registers 2
iget v0, p0, Lcom/flurry/android/AdImage;->b:I
return v0
.end method
.method public final load(Ljava/io/DataInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/DataInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/AdImage;->a:J
invoke-interface {p1}, Ljava/io/DataInput;->readInt()I
move-result v0
iput v0, p0, Lcom/flurry/android/AdImage;->b:I
invoke-interface {p1}, Ljava/io/DataInput;->readInt()I
move-result v0
iput v0, p0, Lcom/flurry/android/AdImage;->c:I
invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/DataInput;->readInt()I
move-result v0
new-array v0, v0, [B
iput-object v0, p0, Lcom/flurry/android/AdImage;->d:[B
iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B
invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V
return-void
.end method
.method public final persist(Ljava/io/DataOutput;)V
.registers 4
iget-wide v0, p0, Lcom/flurry/android/AdImage;->a:J
invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V
iget v0, p0, Lcom/flurry/android/AdImage;->b:I
invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V
iget v0, p0, Lcom/flurry/android/AdImage;->c:I
invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V
iget-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B
array-length v0, v0
invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V
iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B
invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V
return-void
.end method