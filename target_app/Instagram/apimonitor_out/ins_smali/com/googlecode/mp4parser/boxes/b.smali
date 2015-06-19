.class public final Lcom/googlecode/mp4parser/boxes/b;
.super Ljava/lang/Object;
.source "AbstractSampleEncryptionBox.java"
.field public a:I
.field public b:J
.field final synthetic c:Lcom/googlecode/mp4parser/boxes/a;
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/a;IJ)V
.registers 5
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/b;->c:Lcom/googlecode/mp4parser/boxes/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/googlecode/mp4parser/boxes/b;->a:I
iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/b;->b:J
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
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
check-cast p1, Lcom/googlecode/mp4parser/boxes/b;
iget v2, p0, Lcom/googlecode/mp4parser/boxes/b;->a:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/b;->a:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/b;->b:J
iget-wide v4, p1, Lcom/googlecode/mp4parser/boxes/b;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 7
iget v0, p0, Lcom/googlecode/mp4parser/boxes/b;->a:I
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/b;->b:J
iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/b;->b:J
const/16 v5, 0x20
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "clr:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/b;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " enc:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/b;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method