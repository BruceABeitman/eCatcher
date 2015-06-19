.class public final Lcom/google/android/gms/internal/c$h;
.super Lcom/google/android/gms/internal/mb;
.field public static final fx:Lcom/google/android/gms/internal/mc;
.field private static final fy:[Lcom/google/android/gms/internal/c$h;
.field public fA:[I
.field public fB:[I
.field public fC:I
.field public fD:[I
.field public fE:I
.field public fF:I
.field public fz:[I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xb
const-class v1, Lcom/google/android/gms/internal/c$h;
const/16 v2, 0x32a
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mc;->a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/mc;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/c$h;->fx:Lcom/google/android/gms/internal/mc;
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/c$h;
sput-object v0, Lcom/google/android/gms/internal/c$h;->fy:[Lcom/google/android/gms/internal/c$h;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$h;->n()Lcom/google/android/gms/internal/c$h;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ma;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v0, v0
if-lez v0, :cond_1b
move v0, v1
:goto_b
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v2, v2
if-ge v0, v2, :cond_1b
const/4 v2, 0x1
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v0, v0
if-lez v0, :cond_35
move v0, v1
:goto_25
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v2, v2
if-ge v0, v2, :cond_35
const/4 v2, 0x2
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v0, v0
if-lez v0, :cond_4f
move v0, v1
:goto_3f
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v2, v2
if-ge v0, v2, :cond_4f
const/4 v2, 0x3
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ma;->p(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_3f
:cond_4f
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I
if-eqz v0, :cond_59
const/4 v0, 0x4
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_59
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v0, v0
if-lez v0, :cond_72
:goto_62
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v0, v0
if-ge v1, v0, :cond_72
const/4 v0, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
aget v2, v2, v1
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ma;->p(II)V
add-int/lit8 v1, v1, 0x1
goto :goto_62
:cond_72
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I
if-eqz v0, :cond_7c
const/4 v0, 0x6
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_7c
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I
if-eqz v0, :cond_86
const/4 v0, 0x7
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_86
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$h;->i(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$h;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 6
const/4 v1, 0x0
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v3
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
if-eqz v0, :cond_b6
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v0, v0
if-lez v0, :cond_b6
move v0, v1
move v2, v1
:goto_10
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v4, v4
if-ge v0, v4, :cond_21
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
aget v4, v4, v0
invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_21
add-int v0, v3, v2
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:goto_29
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
if-eqz v2, :cond_4c
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v2, v2
if-lez v2, :cond_4c
move v2, v1
move v3, v1
:goto_34
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v4, v4
if-ge v2, v4, :cond_45
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
aget v4, v4, v2
invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_34
:cond_45
add-int/2addr v0, v3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:cond_4c
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
if-eqz v2, :cond_6f
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v2, v2
if-lez v2, :cond_6f
move v2, v1
move v3, v1
:goto_57
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v4, v4
if-ge v2, v4, :cond_68
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
aget v4, v4, v2
invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eE(I)I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_57
:cond_68
add-int/2addr v0, v3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:cond_6f
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I
if-eqz v2, :cond_7b
const/4 v2, 0x4
iget v3, p0, Lcom/google/android/gms/internal/c$h;->fC:I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v2
add-int/2addr v0, v2
:cond_7b
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
if-eqz v2, :cond_9d
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v2, v2
if-lez v2, :cond_9d
move v2, v1
:goto_85
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v3, v3
if-ge v1, v3, :cond_96
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
aget v3, v3, v1
invoke-static {v3}, Lcom/google/android/gms/internal/ma;->eE(I)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_85
:cond_96
add-int/2addr v0, v2
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v1, v1
mul-int/lit8 v1, v1, 0x1
add-int/2addr v0, v1
:cond_9d
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I
if-eqz v1, :cond_a9
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fE:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v1
add-int/2addr v0, v1
:cond_a9
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I
if-eqz v1, :cond_b5
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fF:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v1
add-int/2addr v0, v1
:cond_b5
return v0
:cond_b6
move v0, v3
goto/16 :goto_29
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
if-ne p1, p0, :cond_6
move v0, v1
:goto_5
:cond_5
return v0
:cond_6
instance-of v2, p1, Lcom/google/android/gms/internal/c$h;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/c$h;
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fz:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fA:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fB:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fC:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fD:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fE:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fE:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fF:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fF:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
if-eqz v2, :cond_52
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_60
:cond_52
iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
if-eqz v2, :cond_5e
iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_5e
move v0, v1
goto :goto_5
:cond_60
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
invoke-static {v0}, Lcom/google/android/gms/internal/md;->hashCode([I)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
invoke-static {v1}, Lcom/google/android/gms/internal/md;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
:cond_40
const/4 v0, 0x0
:goto_41
add-int/2addr v0, v1
return v0
:cond_43
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_41
.end method
.method public i(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$h;
.registers 7
const/4 v1, 0x0
:goto_1
:cond_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_1fe
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$h;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
const/16 v0, 0x8
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
if-nez v0, :cond_35
move v0, v1
:goto_1a
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_24
:cond_24
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_39
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v0, v0
goto :goto_1a
:cond_39
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
goto :goto_1
:sswitch_42
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I
move-result v2
move v0, v1
:goto_4f
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I
move-result v4
if-lez v4, :cond_5b
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
add-int/lit8 v0, v0, 0x1
goto :goto_4f
:cond_5b
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
if-nez v2, :cond_79
move v2, v1
:goto_63
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_6d
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_6d
:cond_6d
array-length v4, v0
if-ge v2, v4, :cond_7d
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_6d
:cond_79
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
array-length v2, v2
goto :goto_63
:cond_7d
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
:sswitch_84
const/16 v0, 0x10
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
if-nez v0, :cond_aa
move v0, v1
:goto_8f
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_99
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_99
:goto_99
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_ae
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_99
:cond_aa
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v0, v0
goto :goto_8f
:cond_ae
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
goto/16 :goto_1
:sswitch_b8
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I
move-result v2
move v0, v1
:goto_c5
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I
move-result v4
if-lez v4, :cond_d1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
add-int/lit8 v0, v0, 0x1
goto :goto_c5
:cond_d1
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
if-nez v2, :cond_ef
move v2, v1
:goto_d9
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_e3
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_e3
:goto_e3
array-length v4, v0
if-ge v2, v4, :cond_f3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_e3
:cond_ef
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
array-length v2, v2
goto :goto_d9
:cond_f3
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
:sswitch_fa
const/16 v0, 0x18
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
if-nez v0, :cond_120
move v0, v1
:goto_105
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_10f
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_10f
:goto_10f
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_124
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_10f
:cond_120
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v0, v0
goto :goto_105
:cond_124
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
goto/16 :goto_1
:sswitch_12e
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I
move-result v2
move v0, v1
:goto_13b
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I
move-result v4
if-lez v4, :cond_147
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
add-int/lit8 v0, v0, 0x1
goto :goto_13b
:cond_147
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
if-nez v2, :cond_165
move v2, v1
:goto_14f
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_159
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_159
:goto_159
array-length v4, v0
if-ge v2, v4, :cond_169
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_159
:cond_165
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
array-length v2, v2
goto :goto_14f
:cond_169
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
:sswitch_170
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I
goto/16 :goto_1
:sswitch_178
const/16 v0, 0x28
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
if-nez v0, :cond_19e
move v0, v1
:goto_183
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_18d
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_18d
:goto_18d
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_1a2
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_18d
:cond_19e
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v0, v0
goto :goto_183
:cond_1a2
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
goto/16 :goto_1
:sswitch_1ac
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I
move-result v2
move v0, v1
:goto_1b9
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I
move-result v4
if-lez v4, :cond_1c5
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
add-int/lit8 v0, v0, 0x1
goto :goto_1b9
:cond_1c5
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
if-nez v2, :cond_1e3
move v2, v1
:goto_1cd
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_1d7
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_1d7
:cond_1d7
array-length v4, v0
if-ge v2, v4, :cond_1e7
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_1d7
:cond_1e3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
array-length v2, v2
goto :goto_1cd
:cond_1e7
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V
goto/16 :goto_1
:sswitch_1ee
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I
goto/16 :goto_1
:sswitch_1f6
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I
goto/16 :goto_1
:sswitch_data_1fe
.sparse-switch
0x0 -> :sswitch_e
0x8 -> :sswitch_f
0xa -> :sswitch_42
0x10 -> :sswitch_84
0x12 -> :sswitch_b8
0x18 -> :sswitch_fa
0x1a -> :sswitch_12e
0x20 -> :sswitch_170
0x28 -> :sswitch_178
0x2a -> :sswitch_1ac
0x30 -> :sswitch_1ee
0x38 -> :sswitch_1f6
.end sparse-switch
.end method
.method public n()Lcom/google/android/gms/internal/c$h;
.registers 3
const/4 v1, 0x0
sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I
sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I
sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I
sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$h;->amY:I
return-object p0
.end method