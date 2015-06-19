.class public final Lcom/coremedia/iso/boxes/fragment/a;
.super Ljava/lang/Object;
.source "SampleFlags.java"
.field private a:I
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:Z
.field private g:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
.registers 6
const/4 v3, 0x2
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/a/c;
invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V
const/4 v2, 0x6
invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->a:I
invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->b:I
invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->c:I
invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->d:I
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->e:I
invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
if-ne v2, v0, :cond_3b
:goto_30
iput-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
const/16 v0, 0x10
invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->g:I
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_30
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 7
const/4 v1, 0x1
const/4 v4, 0x2
new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/a/d;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->a:I
const/4 v3, 0x6
invoke-virtual {v2, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->b:I
invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->c:I
invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->d:I
invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->e:I
const/4 v3, 0x3
invoke-virtual {v2, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
if-eqz v0, :cond_32
move v0, v1
:goto_27
invoke-virtual {v2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->g:I
const/16 v1, 0x10
invoke-virtual {v2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
return-void
:cond_32
const/4 v0, 0x0
goto :goto_27
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
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
check-cast p1, Lcom/coremedia/iso/boxes/fragment/a;
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->a:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->a:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->g:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->g:I
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->b:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->b:I
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->d:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->d:I
if-eq v2, v3, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->c:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->c:I
if-eq v2, v3, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
iget-boolean v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
if-eq v2, v3, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/a;->e:I
iget v3, p1, Lcom/coremedia/iso/boxes/fragment/a;->e:I
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->a:I
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->b:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->c:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->d:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->e:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
if-eqz v0, :cond_24
const/4 v0, 0x1
:goto_1d
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->g:I
add-int/2addr v0, v1
return v0
:cond_24
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SampleFlags{reserved="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleDependsOn="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleHasRedundancy="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->d:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", samplePaddingValue="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->e:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleIsDifferenceSample="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->f:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleDegradationPriority="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/coremedia/iso/boxes/fragment/a;->g:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method