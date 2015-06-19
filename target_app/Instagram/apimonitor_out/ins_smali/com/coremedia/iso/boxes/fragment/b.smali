.class public final Lcom/coremedia/iso/boxes/fragment/b;
.super Ljava/lang/Object;
.source "TrackFragmentRandomAccessBox.java"
.field private a:J
.field private b:J
.field private c:J
.field private d:J
.field private e:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/b;)J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
return-wide v0
.end method
.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/b;J)J
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
return-wide p1
.end method
.method static synthetic b(Lcom/coremedia/iso/boxes/fragment/b;)J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
return-wide v0
.end method
.method static synthetic b(Lcom/coremedia/iso/boxes/fragment/b;J)J
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
return-wide p1
.end method
.method static synthetic c(Lcom/coremedia/iso/boxes/fragment/b;)J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
return-wide v0
.end method
.method static synthetic c(Lcom/coremedia/iso/boxes/fragment/b;J)J
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
return-wide p1
.end method
.method static synthetic d(Lcom/coremedia/iso/boxes/fragment/b;)J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
return-wide v0
.end method
.method static synthetic d(Lcom/coremedia/iso/boxes/fragment/b;J)J
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
return-wide p1
.end method
.method static synthetic e(Lcom/coremedia/iso/boxes/fragment/b;)J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
return-wide v0
.end method
.method static synthetic e(Lcom/coremedia/iso/boxes/fragment/b;J)J
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
return-wide p1
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
check-cast p1, Lcom/coremedia/iso/boxes/fragment/b;
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/b;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/b;->e:J
cmp-long v2, v2, v4
if-eqz v2, :cond_29
move v0, v1
goto :goto_4
:cond_29
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/b;->a:J
cmp-long v2, v2, v4
if-eqz v2, :cond_33
move v0, v1
goto :goto_4
:cond_33
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/b;->c:J
cmp-long v2, v2, v4
if-eqz v2, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/b;->d:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 7
const/16 v5, 0x20
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
ushr-long/2addr v2, v5
xor-long/2addr v0, v2
long-to-int v0, v0
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Entry{time="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", moofOffset="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", trafNumber="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", trunNumber="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->d:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleNumber="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/b;->e:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method