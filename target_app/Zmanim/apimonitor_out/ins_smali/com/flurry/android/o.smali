.class final Lcom/flurry/android/o;
.super Lcom/flurry/android/aa;
.source "SourceFile"
.field  a:J
.field  b:J
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:J
.field  f:Ljava/lang/Long;
.field  g:[B
.field  h:Lcom/flurry/android/AdImage;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V
return-void
.end method
.method constructor <init>(Ljava/io/DataInput;)V
.registers 2
invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V
invoke-direct {p0, p1}, Lcom/flurry/android/o;->b(Ljava/io/DataInput;)V
return-void
.end method
.method private b(Ljava/io/DataInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/DataInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/o;->a:J
invoke-interface {p1}, Ljava/io/DataInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/o;->b:J
invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/o;->d:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/o;->c:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/DataInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/o;->e:J
invoke-interface {p1}, Ljava/io/DataInput;->readLong()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/o;->f:Ljava/lang/Long;
invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I
move-result v0
new-array v0, v0, [B
iput-object v0, p0, Lcom/flurry/android/o;->g:[B
iget-object v0, p0, Lcom/flurry/android/o;->g:[B
invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V
return-void
.end method
.method public final a(Ljava/io/DataInput;)V
.registers 3
invoke-direct {p0, p1}, Lcom/flurry/android/o;->b(Ljava/io/DataInput;)V
invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_11
new-instance v0, Lcom/flurry/android/AdImage;
invoke-direct {v0}, Lcom/flurry/android/AdImage;-><init>()V
invoke-virtual {v0, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V
:cond_11
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ad {id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/flurry/android/o;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", name=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/flurry/android/o;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method