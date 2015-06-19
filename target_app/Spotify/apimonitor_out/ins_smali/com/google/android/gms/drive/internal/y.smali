.class public final Lcom/google/android/gms/drive/internal/y;
.super Lcom/google/android/gms/internal/lb;
.field public a:I
.field public b:Ljava/lang/String;
.field public c:J
.field public d:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
invoke-direct {p0}, Lcom/google/android/gms/internal/lb;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/drive/internal/y;->a:I
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->c:J
iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->d:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/drive/internal/y;->n:I
return-void
.end method
.method public final a()I
.registers 5
invoke-super {p0}, Lcom/google/android/gms/internal/lb;->a()I
move-result v0
iget v1, p0, Lcom/google/android/gms/drive/internal/y;->a:I
invoke-static {v1}, Lcom/google/android/gms/internal/ko;->a(I)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->c:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->c(IJ)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x4
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->d:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->c(IJ)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/drive/internal/y;->n:I
return v0
.end method
.method public final a(Lcom/google/android/gms/internal/ko;)V
.registers 5
const/4 v0, 0x1
iget v1, p0, Lcom/google/android/gms/drive/internal/y;->a:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(II)V
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(ILjava/lang/String;)V
const/4 v0, 0x3
iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->c:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V
const/4 v0, 0x4
iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->d:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V
invoke-super {p0, p1}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/internal/ko;)V
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/drive/internal/y;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/drive/internal/y;
iget v2, p0, Lcom/google/android/gms/drive/internal/y;->a:I
iget v3, p1, Lcom/google/android/gms/drive/internal/y;->a:I
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
if-nez v2, :cond_1f
iget-object v2, p1, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
if-eqz v2, :cond_2b
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2b
move v0, v1
goto :goto_4
:cond_2b
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->c:J
iget-wide v4, p1, Lcom/google/android/gms/drive/internal/y;->c:J
cmp-long v2, v2, v4
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->d:J
iget-wide v4, p1, Lcom/google/android/gms/drive/internal/y;->d:J
cmp-long v2, v2, v4
if-eqz v2, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
if-eqz v2, :cond_4b
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_59
:cond_4b
iget-object v2, p1, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
if-eqz v2, :cond_4
iget-object v2, p1, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
:cond_59
iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final hashCode()I
.registers 8
const/16 v6, 0x20
const/4 v1, 0x0
iget v0, p0, Lcom/google/android/gms/drive/internal/y;->a:I
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
if-nez v0, :cond_33
move v0, v1
:goto_e
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->c:J
iget-wide v4, p0, Lcom/google/android/gms/drive/internal/y;->c:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->d:J
iget-wide v4, p0, Lcom/google/android/gms/drive/internal/y;->d:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_3a
:cond_31
:goto_31
add-int/2addr v0, v1
return v0
:cond_33
iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_e
:cond_3a
iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->m:Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_31
.end method