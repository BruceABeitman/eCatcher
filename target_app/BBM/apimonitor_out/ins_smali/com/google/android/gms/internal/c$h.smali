.class public final Lcom/google/android/gms/internal/c$h;
.super Lcom/google/android/gms/internal/ka;
.field public static final fI:Lcom/google/android/gms/internal/kb;
.field private static final fJ:[Lcom/google/android/gms/internal/c$h;
.field public fK:[I
.field public fL:[I
.field public fM:[I
.field public fN:I
.field public fO:[I
.field public fP:I
.field public fQ:I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xb
const-class v1, Lcom/google/android/gms/internal/c$h;
const/16 v2, 0x32a
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/kb;->a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/kb;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/c$h;->fI:Lcom/google/android/gms/internal/kb;
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/c$h;
sput-object v0, Lcom/google/android/gms/internal/c$h;->fJ:[Lcom/google/android/gms/internal/c$h;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$h;->n()Lcom/google/android/gms/internal/c$h;
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/jz;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v0, v0
if-lez v0, :cond_1b
move v0, v1
:goto_b
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v2, v2
if-ge v0, v2, :cond_1b
const/4 v2, 0x1
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/jz;->f(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v0, v0
if-lez v0, :cond_35
move v0, v1
:goto_25
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v2, v2
if-ge v0, v2, :cond_35
const/4 v2, 0x2
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/jz;->f(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v0, v0
if-lez v0, :cond_4f
move v0, v1
:goto_3f
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v2, v2
if-ge v0, v2, :cond_4f
const/4 v2, 0x3
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
aget v3, v3, v0
invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/jz;->f(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_3f
:cond_4f
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fN:I
if-eqz v0, :cond_59
const/4 v0, 0x4
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fN:I
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->f(II)V
:cond_59
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v0, v0
if-lez v0, :cond_72
:goto_62
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v0, v0
if-ge v1, v0, :cond_72
const/4 v0, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
aget v2, v2, v1
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->f(II)V
add-int/lit8 v1, v1, 0x1
goto :goto_62
:cond_72
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fP:I
if-eqz v0, :cond_7c
const/4 v0, 0x6
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fP:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V
:cond_7c
iget v0, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
if-eqz v0, :cond_86
const/4 v0, 0x7
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V
:cond_86
invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V
return-void
.end method
.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$h;->i(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$h;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 6
const/4 v1, 0x0
invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I
move-result v3
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
if-eqz v0, :cond_b8
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v0, v0
if-lez v0, :cond_b8
move v0, v1
move v2, v1
:goto_10
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v4, v4
if-ge v0, v4, :cond_21
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
aget v4, v4, v0
invoke-static {v4}, Lcom/google/android/gms/internal/jz;->cC(I)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_21
add-int v0, v3, v2
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:goto_29
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
if-eqz v2, :cond_4c
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v2, v2
if-lez v2, :cond_4c
move v2, v1
move v3, v1
:goto_34
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v4, v4
if-ge v2, v4, :cond_45
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
aget v4, v4, v2
invoke-static {v4}, Lcom/google/android/gms/internal/jz;->cC(I)I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_34
:cond_45
add-int/2addr v0, v3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:cond_4c
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
if-eqz v2, :cond_6f
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v2, v2
if-lez v2, :cond_6f
move v2, v1
move v3, v1
:goto_57
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v4, v4
if-ge v2, v4, :cond_68
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
aget v4, v4, v2
invoke-static {v4}, Lcom/google/android/gms/internal/jz;->cC(I)I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_57
:cond_68
add-int/2addr v0, v3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v2, v2
mul-int/lit8 v2, v2, 0x1
add-int/2addr v0, v2
:cond_6f
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fN:I
if-eqz v2, :cond_7b
const/4 v2, 0x4
iget v3, p0, Lcom/google/android/gms/internal/c$h;->fN:I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(II)I
move-result v2
add-int/2addr v0, v2
:cond_7b
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
if-eqz v2, :cond_9d
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v2, v2
if-lez v2, :cond_9d
move v2, v1
:goto_85
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v3, v3
if-ge v1, v3, :cond_96
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
aget v3, v3, v1
invoke-static {v3}, Lcom/google/android/gms/internal/jz;->cC(I)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_85
:cond_96
add-int/2addr v0, v2
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v1, v1
mul-int/lit8 v1, v1, 0x1
add-int/2addr v0, v1
:cond_9d
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fP:I
if-eqz v1, :cond_a9
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fP:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I
move-result v1
add-int/2addr v0, v1
:cond_a9
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
if-eqz v1, :cond_b5
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I
move-result v1
add-int/2addr v0, v1
:cond_b5
iput v0, p0, Lcom/google/android/gms/internal/c$h;->DY:I
return v0
:cond_b8
move v0, v3
goto/16 :goto_29
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/internal/c$h;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/c$h;
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fK:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([I[I)Z
move-result v2
if-nez v2, :cond_19
move v0, v1
goto :goto_4
:cond_19
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fL:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([I[I)Z
move-result v2
if-nez v2, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fM:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([I[I)Z
move-result v2
if-nez v2, :cond_31
move v0, v1
goto :goto_4
:cond_31
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fN:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fN:I
if-eq v2, v3, :cond_39
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fO:[I
invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([I[I)Z
move-result v2
if-nez v2, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fP:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fP:I
if-eq v2, v3, :cond_4d
move v0, v1
goto :goto_4
:cond_4d
iget v2, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
iget v3, p1, Lcom/google/android/gms/internal/c$h;->fQ:I
if-eq v2, v3, :cond_55
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
if-eqz v2, :cond_61
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_6f
:cond_61
iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
if-eqz v2, :cond_4
iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
:cond_6f
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
invoke-static {v0}, Lcom/google/android/gms/internal/kc;->hashCode([I)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
invoke-static {v1}, Lcom/google/android/gms/internal/kc;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
invoke-static {v1}, Lcom/google/android/gms/internal/kc;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fN:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
invoke-static {v1}, Lcom/google/android/gms/internal/kc;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fP:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
:cond_40
const/4 v0, 0x0
:goto_41
add-int/2addr v0, v1
return v0
:cond_43
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_41
.end method
.method public final i(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$h;
.registers 7
const/4 v1, 0x0
:goto_1
:cond_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
move-result v0
sparse-switch v0, :sswitch_data_1fe
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$h;->a(Lcom/google/android/gms/internal/jy;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
const/16 v0, 0x8
invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
if-nez v0, :cond_35
move v0, v1
:goto_1a
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_24
:cond_24
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_39
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_35
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v0, v0
goto :goto_1a
:cond_39
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
goto :goto_1
:sswitch_42
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kE()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->cw(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->getPosition()I
move-result v2
move v0, v1
:goto_4f
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kJ()I
move-result v4
if-lez v4, :cond_5b
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
add-int/lit8 v0, v0, 0x1
goto :goto_4f
:cond_5b
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/jy;->cy(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
if-nez v2, :cond_79
move v2, v1
:goto_63
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_6d
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_6d
:cond_6d
array-length v4, v0
if-ge v2, v4, :cond_7d
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_6d
:cond_79
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
array-length v2, v2
goto :goto_63
:cond_7d
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->cx(I)V
goto/16 :goto_1
:sswitch_84
const/16 v0, 0x10
invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
if-nez v0, :cond_aa
move v0, v1
:goto_8f
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_99
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_99
:goto_99
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_ae
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
add-int/lit8 v0, v0, 0x1
goto :goto_99
:cond_aa
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v0, v0
goto :goto_8f
:cond_ae
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
goto/16 :goto_1
:sswitch_b8
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kE()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->cw(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->getPosition()I
move-result v2
move v0, v1
:goto_c5
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kJ()I
move-result v4
if-lez v4, :cond_d1
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
add-int/lit8 v0, v0, 0x1
goto :goto_c5
:cond_d1
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/jy;->cy(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
if-nez v2, :cond_ef
move v2, v1
:goto_d9
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_e3
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_e3
:goto_e3
array-length v4, v0
if-ge v2, v4, :cond_f3
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_e3
:cond_ef
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
array-length v2, v2
goto :goto_d9
:cond_f3
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->cx(I)V
goto/16 :goto_1
:sswitch_fa
const/16 v0, 0x18
invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
if-nez v0, :cond_120
move v0, v1
:goto_105
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_10f
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_10f
:goto_10f
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_124
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
add-int/lit8 v0, v0, 0x1
goto :goto_10f
:cond_120
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v0, v0
goto :goto_105
:cond_124
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
goto/16 :goto_1
:sswitch_12e
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kE()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->cw(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->getPosition()I
move-result v2
move v0, v1
:goto_13b
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kJ()I
move-result v4
if-lez v4, :cond_147
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
add-int/lit8 v0, v0, 0x1
goto :goto_13b
:cond_147
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/jy;->cy(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
if-nez v2, :cond_165
move v2, v1
:goto_14f
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_159
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_159
:goto_159
array-length v4, v0
if-ge v2, v4, :cond_169
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_159
:cond_165
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
array-length v2, v2
goto :goto_14f
:cond_169
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->cx(I)V
goto/16 :goto_1
:sswitch_170
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fN:I
goto/16 :goto_1
:sswitch_178
const/16 v0, 0x28
invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
if-nez v0, :cond_19e
move v0, v1
:goto_183
add-int/2addr v2, v0
new-array v2, v2, [I
if-eqz v0, :cond_18d
iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_18d
:goto_18d
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_1a2
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
add-int/lit8 v0, v0, 0x1
goto :goto_18d
:cond_19e
iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v0, v0
goto :goto_183
:cond_1a2
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v3
aput v3, v2, v0
iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
goto/16 :goto_1
:sswitch_1ac
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kE()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->cw(I)I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->getPosition()I
move-result v2
move v0, v1
:goto_1b9
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kJ()I
move-result v4
if-lez v4, :cond_1c5
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
add-int/lit8 v0, v0, 0x1
goto :goto_1b9
:cond_1c5
invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/jy;->cy(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
if-nez v2, :cond_1e3
move v2, v1
:goto_1cd
add-int/2addr v0, v2
new-array v0, v0, [I
if-eqz v2, :cond_1d7
iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_1d7
:cond_1d7
array-length v4, v0
if-ge v2, v4, :cond_1e7
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v4
aput v4, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_1d7
:cond_1e3
iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
array-length v2, v2
goto :goto_1cd
:cond_1e7
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->cx(I)V
goto/16 :goto_1
:sswitch_1ee
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fP:I
goto/16 :goto_1
:sswitch_1f6
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
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
.method public final n()Lcom/google/android/gms/internal/c$h;
.registers 3
const/4 v1, 0x0
sget-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fK:[I
sget-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fL:[I
sget-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fM:[I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fN:I
sget-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fO:[I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fP:I
iput v1, p0, Lcom/google/android/gms/internal/c$h;->fQ:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->aae:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$h;->DY:I
return-object p0
.end method