.class public final Lcom/googlecode/mp4parser/boxes/threegpp26244/a;
.super Ljava/lang/Object;
.source "SegmentIndexBox.java"
.field  a:B
.field  b:I
.field  c:J
.field  d:B
.field  e:B
.field  f:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()B
.registers 2
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
return v0
.end method
.method public final a(B)V
.registers 2
iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
return v0
.end method
.method public final b(B)V
.registers 2
iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
return-void
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
return-wide v0
.end method
.method public final c(B)V
.registers 2
iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
return-void
.end method
.method public final d()B
.registers 2
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
return v0
.end method
.method public final e()B
.registers 2
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
return v0
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
check-cast p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;
iget-byte v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
iget-byte v3, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-byte v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
iget-byte v3, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
if-eq v2, v3, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-byte v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
iget-byte v3, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
if-eq v2, v3, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
iget-wide v4, p1, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
return v0
.end method
.method public final hashCode()I
.registers 7
iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
const/16 v5, 0x20
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Entry{referenceType="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", referencedSize="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", subsegmentDuration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", startsWithSap="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sapType="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sapDeltaTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method