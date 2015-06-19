.class public final Lcom/coremedia/iso/boxes/i;
.super Ljava/lang/Object;
.source "SubSampleInformationBox.java"
.field private a:J
.field private b:I
.field private c:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/i;->c:Ljava/util/List;
return-void
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/i;->a:J
return-wide v0
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/i;->a:J
return-void
.end method
.method public final a(Lcom/coremedia/iso/boxes/j;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/i;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v0, p0, Lcom/coremedia/iso/boxes/i;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/coremedia/iso/boxes/i;->b:I
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/i;->b:I
return v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/i;->c:Ljava/util/List;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SampleEntry{sampleDelta="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/i;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", subsampleCount="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/i;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", subsampleEntries="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/coremedia/iso/boxes/i;->c:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method