.class public final Lcom/coremedia/iso/boxes/j;
.super Ljava/lang/Object;
.source "SubSampleInformationBox.java"
.field private a:J
.field private b:I
.field private c:I
.field private d:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/j;->a:J
return-wide v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/j;->b:I
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/j;->a:J
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/j;->b:I
return v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/j;->c:I
return-void
.end method
.method public final b(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/j;->d:J
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/j;->c:I
return v0
.end method
.method public final d()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/j;->d:J
return-wide v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SubsampleEntry{subsampleSize="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/j;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", subsamplePriority="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/j;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", discardable="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/j;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", reserved="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/j;->d:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method