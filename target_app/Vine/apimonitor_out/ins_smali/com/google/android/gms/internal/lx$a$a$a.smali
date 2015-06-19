.class public final Lcom/google/android/gms/internal/lx$a$a$a;
.super Lcom/google/android/gms/internal/mb;
.field public amA:Z
.field public amB:[Lcom/google/android/gms/internal/lx$a;
.field public amC:[Lcom/google/android/gms/internal/lx$a$a;
.field public amD:[Ljava/lang/String;
.field public amE:[J
.field public amF:[F
.field public amG:J
.field public amt:[B
.field public amu:Ljava/lang/String;
.field public amv:D
.field public amw:F
.field public amx:J
.field public amy:I
.field public amz:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/lx$a$a$a;->nv()Lcom/google/android/gms/internal/lx$a$a$a;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ma;)V
.registers 10
const-wide/16 v6, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
sget-object v2, Lcom/google/android/gms/internal/mi;->anh:[B
invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-nez v0, :cond_13
const/4 v0, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->a(I[B)V
:cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
const/4 v0, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V
:cond_23
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
const-wide/16 v4, 0x0
invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v4
cmp-long v0, v2, v4
if-eqz v0, :cond_39
const/4 v0, 0x3
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ma;->a(ID)V
:cond_39
iget v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
if-eq v0, v2, :cond_4c
const/4 v0, 0x4
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(IF)V
:cond_4c
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
cmp-long v0, v2, v6
if-eqz v0, :cond_58
const/4 v0, 0x5
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ma;->b(IJ)V
:cond_58
iget v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
if-eqz v0, :cond_62
const/4 v0, 0x6
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_62
iget v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
if-eqz v0, :cond_6c
const/4 v0, 0x7
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->q(II)V
:cond_6c
iget-boolean v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
if-eqz v0, :cond_77
const/16 v0, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->a(IZ)V
:cond_77
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
if-eqz v0, :cond_94
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v0, v0
if-lez v0, :cond_94
move v0, v1
:goto_81
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v2, v2
if-ge v0, v2, :cond_94
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
aget-object v2, v2, v0
if-eqz v2, :cond_91
const/16 v3, 0x9
invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_91
add-int/lit8 v0, v0, 0x1
goto :goto_81
:cond_94
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
if-eqz v0, :cond_b1
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v0, v0
if-lez v0, :cond_b1
move v0, v1
:goto_9e
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v2, v2
if-ge v0, v2, :cond_b1
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
aget-object v2, v2, v0
if-eqz v2, :cond_ae
const/16 v3, 0xa
invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_ae
add-int/lit8 v0, v0, 0x1
goto :goto_9e
:cond_b1
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
array-length v0, v0
if-lez v0, :cond_ce
move v0, v1
:goto_bb
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_ce
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
aget-object v2, v2, v0
if-eqz v2, :cond_cb
const/16 v3, 0xb
invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V
:cond_cb
add-int/lit8 v0, v0, 0x1
goto :goto_bb
:cond_ce
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
if-eqz v0, :cond_e9
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v0, v0
if-lez v0, :cond_e9
move v0, v1
:goto_d8
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v2, v2
if-ge v0, v2, :cond_e9
const/16 v2, 0xc
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
aget-wide v3, v3, v0
invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ma;->b(IJ)V
add-int/lit8 v0, v0, 0x1
goto :goto_d8
:cond_e9
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
cmp-long v0, v2, v6
if-eqz v0, :cond_f6
const/16 v0, 0xd
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ma;->b(IJ)V
:cond_f6
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
if-eqz v0, :cond_110
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v0, v0
if-lez v0, :cond_110
:goto_ff
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v0, v0
if-ge v1, v0, :cond_110
const/16 v0, 0xe
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
aget v2, v2, v1
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->b(IF)V
add-int/lit8 v1, v1, 0x1
goto :goto_ff
:cond_110
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lx$a$a$a;->t(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a$a$a;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 9
const-wide/16 v6, 0x0
const/4 v1, 0x0
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v0
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
sget-object v3, Lcom/google/android/gms/internal/mi;->anh:[B
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
move-result v2
if-nez v2, :cond_19
const/4 v2, 0x1
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->b(I[B)I
move-result v2
add-int/2addr v0, v2
:cond_19
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2b
const/4 v2, 0x2
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I
move-result v2
add-int/2addr v0, v2
:cond_2b
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
const-wide/16 v4, 0x0
invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v4
cmp-long v2, v2, v4
if-eqz v2, :cond_43
const/4 v2, 0x3
iget-wide v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ma;->b(ID)I
move-result v2
add-int/2addr v0, v2
:cond_43
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
const/4 v3, 0x0
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_58
const/4 v2, 0x4
iget v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->c(IF)I
move-result v2
add-int/2addr v0, v2
:cond_58
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
cmp-long v2, v2, v6
if-eqz v2, :cond_66
const/4 v2, 0x5
iget-wide v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ma;->d(IJ)I
move-result v2
add-int/2addr v0, v2
:cond_66
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
if-eqz v2, :cond_72
const/4 v2, 0x6
iget v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v2
add-int/2addr v0, v2
:cond_72
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
if-eqz v2, :cond_7e
const/4 v2, 0x7
iget v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->s(II)I
move-result v2
add-int/2addr v0, v2
:cond_7e
iget-boolean v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
if-eqz v2, :cond_8b
const/16 v2, 0x8
iget-boolean v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->b(IZ)I
move-result v2
add-int/2addr v0, v2
:cond_8b
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
if-eqz v2, :cond_ac
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v2, v2
if-lez v2, :cond_ac
move v2, v0
move v0, v1
:goto_96
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v3, v3
if-ge v0, v3, :cond_ab
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
aget-object v3, v3, v0
if-eqz v3, :cond_a8
const/16 v4, 0x9
invoke-static {v4, v3}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v3
add-int/2addr v2, v3
:cond_a8
add-int/lit8 v0, v0, 0x1
goto :goto_96
:cond_ab
move v0, v2
:cond_ac
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
if-eqz v2, :cond_cd
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v2, v2
if-lez v2, :cond_cd
move v2, v0
move v0, v1
:goto_b7
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v3, v3
if-ge v0, v3, :cond_cc
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
aget-object v3, v3, v0
if-eqz v3, :cond_c9
const/16 v4, 0xa
invoke-static {v4, v3}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v3
add-int/2addr v2, v3
:cond_c9
add-int/lit8 v0, v0, 0x1
goto :goto_b7
:cond_cc
move v0, v2
:cond_cd
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
if-eqz v2, :cond_f2
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
array-length v2, v2
if-lez v2, :cond_f2
move v2, v1
move v3, v1
move v4, v1
:goto_d9
iget-object v5, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
array-length v5, v5
if-ge v2, v5, :cond_ee
iget-object v5, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
aget-object v5, v5, v2
if-eqz v5, :cond_eb
add-int/lit8 v4, v4, 0x1
invoke-static {v5}, Lcom/google/android/gms/internal/ma;->cz(Ljava/lang/String;)I
move-result v5
add-int/2addr v3, v5
:cond_eb
add-int/lit8 v2, v2, 0x1
goto :goto_d9
:cond_ee
add-int/2addr v0, v3
mul-int/lit8 v2, v4, 0x1
add-int/2addr v0, v2
:cond_f2
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
if-eqz v2, :cond_114
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v2, v2
if-lez v2, :cond_114
move v2, v1
:goto_fc
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v3, v3
if-ge v1, v3, :cond_10d
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
aget-wide v3, v3, v1
invoke-static {v3, v4}, Lcom/google/android/gms/internal/ma;->D(J)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_fc
:cond_10d
add-int/2addr v0, v2
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v1, v1
mul-int/lit8 v1, v1, 0x1
add-int/2addr v0, v1
:cond_114
iget-wide v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
cmp-long v1, v1, v6
if-eqz v1, :cond_123
const/16 v1, 0xd
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->d(IJ)I
move-result v1
add-int/2addr v0, v1
:cond_123
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
if-eqz v1, :cond_138
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v1, v1
if-lez v1, :cond_138
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v1, v1
mul-int/lit8 v1, v1, 0x4
add-int/2addr v0, v1
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v1, v1
mul-int/lit8 v1, v1, 0x1
add-int/2addr v0, v1
:cond_138
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-ne p1, p0, :cond_6
move v0, v1
:goto_5
:cond_5
return v0
:cond_6
instance-of v2, p1, Lcom/google/android/gms/internal/lx$a$a$a;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/lx$a$a$a;
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
if-nez v2, :cond_ab
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
if-nez v2, :cond_5
:cond_1e
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
iget-wide v4, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_5
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
iget-wide v4, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
cmp-long v2, v2, v4
if-nez v2, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
iget v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
iget v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
if-ne v2, v3, :cond_5
iget-boolean v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
iget-boolean v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([J[J)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([F[F)Z
move-result v2
if-eqz v2, :cond_5
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
iget-wide v4, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
cmp-long v2, v2, v4
if-nez v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
if-eqz v2, :cond_9c
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_b7
:cond_9c
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
if-eqz v2, :cond_a8
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_a8
move v0, v1
goto/16 :goto_5
:cond_ab
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1e
goto/16 :goto_5
:cond_b7
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto/16 :goto_5
.end method
.method public hashCode()I
.registers 8
const/4 v1, 0x0
const/16 v6, 0x20
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
if-nez v0, :cond_8d
move v0, v1
:goto_12
add-int/2addr v0, v2
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
mul-int/lit8 v0, v0, 0x1f
ushr-long v4, v2, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
iget-wide v4, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
if-eqz v0, :cond_95
const/16 v0, 0x4cf
:goto_45
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
invoke-static {v2}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
invoke-static {v2}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
invoke-static {v2}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-static {v2}, Lcom/google/android/gms/internal/md;->hashCode([J)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-static {v2}, Lcom/google/android/gms/internal/md;->hashCode([F)I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
iget-wide v4, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
if-eqz v2, :cond_8b
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_98
:goto_8b
:cond_8b
add-int/2addr v0, v1
return v0
:cond_8d
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_12
:cond_95
const/16 v0, 0x4d5
goto :goto_45
:cond_98
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->hashCode()I
move-result v1
goto :goto_8b
.end method
.method public nv()Lcom/google/android/gms/internal/lx$a$a$a;
.registers 6
const-wide/16 v3, 0x0
const/4 v2, 0x0
sget-object v0, Lcom/google/android/gms/internal/mi;->anh:[B
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
iput-wide v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
iput v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
iput v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
iput-boolean v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
invoke-static {}, Lcom/google/android/gms/internal/lx$a;->nr()[Lcom/google/android/gms/internal/lx$a;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
invoke-static {}, Lcom/google/android/gms/internal/lx$a$a;->nt()[Lcom/google/android/gms/internal/lx$a$a;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
sget-object v0, Lcom/google/android/gms/internal/mi;->anf:[Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/mi;->anb:[J
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
sget-object v0, Lcom/google/android/gms/internal/mi;->anc:[F
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
iput-wide v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amY:I
return-object p0
.end method
.method public t(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a$a$a;
.registers 8
const/4 v1, 0x0
:cond_1
:goto_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_1de
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lx$a$a$a;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readBytes()[B
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
goto :goto_1
:sswitch_16
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
goto :goto_1
:sswitch_1d
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readDouble()D
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
goto :goto_1
:sswitch_24
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readFloat()F
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
goto :goto_1
:sswitch_2b
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
goto :goto_1
:sswitch_32
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
goto :goto_1
:sswitch_39
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
goto :goto_1
:sswitch_40
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
goto :goto_1
:sswitch_47
const/16 v0, 0x4a
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
if-nez v0, :cond_73
move v0, v1
:goto_52
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/lx$a;
if-eqz v0, :cond_5c
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_5c
:cond_5c
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_77
new-instance v3, Lcom/google/android/gms/internal/lx$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/lx$a;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_5c
:cond_73
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v0, v0
goto :goto_52
:cond_77
new-instance v3, Lcom/google/android/gms/internal/lx$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/lx$a;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
iput-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
goto/16 :goto_1
:sswitch_87
const/16 v0, 0x52
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
if-nez v0, :cond_b3
move v0, v1
:goto_92
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/lx$a$a;
if-eqz v0, :cond_9c
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_9c
:cond_9c
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_b7
new-instance v3, Lcom/google/android/gms/internal/lx$a$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/lx$a$a;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_9c
:cond_b3
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v0, v0
goto :goto_92
:cond_b7
new-instance v3, Lcom/google/android/gms/internal/lx$a$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/lx$a$a;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
iput-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
goto/16 :goto_1
:sswitch_c7
const/16 v0, 0x5a
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
if-nez v0, :cond_ed
move v0, v1
:goto_d2
add-int/2addr v2, v0
new-array v2, v2, [Ljava/lang/String;
if-eqz v0, :cond_dc
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_dc
:goto_dc
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_f1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_dc
:cond_ed
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
array-length v0, v0
goto :goto_d2
:cond_f1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
goto/16 :goto_1
:sswitch_fb
const/16 v0, 0x60
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
if-nez v0, :cond_121
move v0, v1
:goto_106
add-int/2addr v2, v0
new-array v2, v2, [J
if-eqz v0, :cond_110
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_110
:cond_110
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_125
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
move-result-wide v3
aput-wide v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_110
:cond_121
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v0, v0
goto :goto_106
:cond_125
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
move-result-wide v3
aput-wide v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
goto/16 :goto_1
:sswitch_12f
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I
move-result v2
move v0, v1
:goto_13c
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I
move-result v4
if-lez v4, :cond_148
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
add-int/lit8 v0, v0, 0x1
goto :goto_13c
:cond_148
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
if-nez v2, :cond_166
move v2, v1
:goto_150
add-int/2addr v0, v2
new-array v0, v0, [J
if-eqz v2, :cond_15a
iget-object v4, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_15a
:cond_15a
array-length v4, v0
if-ge v2, v4, :cond_16a
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
move-result-wide v4
aput-wide v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_15a
:cond_166
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
array-length v2, v2
goto :goto_150
:cond_16a
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
:sswitch_171
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
goto/16 :goto_1
:sswitch_179
const/16 v0, 0x75
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
if-nez v0, :cond_19f
move v0, v1
:goto_184
add-int/2addr v2, v0
new-array v2, v2, [F
if-eqz v0, :cond_18e
iget-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_18e
:goto_18e
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_1a3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readFloat()F
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_18e
:cond_19f
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v0, v0
goto :goto_184
:cond_1a3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readFloat()F
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
goto/16 :goto_1
:sswitch_1ad
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v2
div-int/lit8 v3, v0, 0x4
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
if-nez v0, :cond_1d2
move v0, v1
:goto_1bc
add-int/2addr v3, v0
new-array v3, v3, [F
if-eqz v0, :cond_1c6
iget-object v4, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_1c6
:cond_1c6
array-length v4, v3
if-ge v0, v4, :cond_1d6
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readFloat()F
move-result v4
aput v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1c6
:cond_1d2
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
array-length v0, v0
goto :goto_1bc
:cond_1d6
iput-object v3, p0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
nop
:sswitch_data_1de
.sparse-switch
0x0 -> :sswitch_e
0xa -> :sswitch_f
0x12 -> :sswitch_16
0x19 -> :sswitch_1d
0x25 -> :sswitch_24
0x28 -> :sswitch_2b
0x30 -> :sswitch_32
0x38 -> :sswitch_39
0x40 -> :sswitch_40
0x4a -> :sswitch_47
0x52 -> :sswitch_87
0x5a -> :sswitch_c7
0x60 -> :sswitch_fb
0x62 -> :sswitch_12f
0x68 -> :sswitch_171
0x72 -> :sswitch_1ad
0x75 -> :sswitch_179
.end sparse-switch
.end method