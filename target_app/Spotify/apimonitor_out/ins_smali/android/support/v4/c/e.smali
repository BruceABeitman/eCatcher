.class public final Landroid/support/v4/c/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Cloneable;
.field private static final a:Ljava/lang/Object;
.field private b:Z
.field private c:[J
.field private d:[Ljava/lang/Object;
.field private e:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/c/e;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Landroid/support/v4/c/e;->b:Z
const/16 v0, 0xa
invoke-static {v0}, Landroid/support/v4/c/b;->b(I)I
move-result v0
new-array v1, v0, [J
iput-object v1, p0, Landroid/support/v4/c/e;->c:[J
new-array v0, v0, [Ljava/lang/Object;
iput-object v0, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
iput v2, p0, Landroid/support/v4/c/e;->e:I
return-void
.end method
.method private c()Landroid/support/v4/c/e;
.registers 3
const/4 v1, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/c/e;
:try_start_7
:try_end_7
.catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c
iget-object v1, p0, Landroid/support/v4/c/e;->c:[J
invoke-virtual {v1}, [J->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [J
iput-object v1, v0, Landroid/support/v4/c/e;->c:[J
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/Object;
iput-object v1, v0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
:goto_1b
:try_end_1b
.catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1f
return-object v0
:catch_1c
move-exception v0
move-object v0, v1
goto :goto_1b
:catch_1f
move-exception v1
goto :goto_1b
.end method
.method private d()V
.registers 10
const/4 v2, 0x0
iget v3, p0, Landroid/support/v4/c/e;->e:I
iget-object v4, p0, Landroid/support/v4/c/e;->c:[J
iget-object v5, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
move v1, v2
move v0, v2
:goto_9
if-ge v1, v3, :cond_21
aget-object v6, v5, v1
sget-object v7, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
if-eq v6, v7, :cond_1e
if-eq v1, v0, :cond_1c
aget-wide v7, v4, v1
aput-wide v7, v4, v0
aput-object v6, v5, v0
const/4 v6, 0x0
aput-object v6, v5, v1
:cond_1c
add-int/lit8 v0, v0, 0x1
:cond_1e
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_21
iput-boolean v2, p0, Landroid/support/v4/c/e;->b:Z
iput v0, p0, Landroid/support/v4/c/e;->e:I
return-void
.end method
.method public final a()I
.registers 2
iget-boolean v0, p0, Landroid/support/v4/c/e;->b:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/c/e;->d()V
:cond_7
iget v0, p0, Landroid/support/v4/c/e;->e:I
return v0
.end method
.method public final a(I)J
.registers 4
iget-boolean v0, p0, Landroid/support/v4/c/e;->b:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/c/e;->d()V
:cond_7
iget-object v0, p0, Landroid/support/v4/c/e;->c:[J
aget-wide v0, v0, p1
return-wide v0
.end method
.method public final a(ILjava/lang/Object;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/c/e;->b:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/c/e;->d()V
:cond_7
iget-object v0, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aput-object p2, v0, p1
return-void
.end method
.method public final a(J)V
.registers 6
iget-object v0, p0, Landroid/support/v4/c/e;->c:[J
iget v1, p0, Landroid/support/v4/c/e;->e:I
invoke-static {v0, v1, p1, p2}, Landroid/support/v4/c/b;->a([JIJ)I
move-result v0
if-ltz v0, :cond_1b
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aget-object v1, v1, v0
sget-object v2, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
if-eq v1, v2, :cond_1b
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
sget-object v2, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
aput-object v2, v1, v0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/c/e;->b:Z
:cond_1b
return-void
.end method
.method public final a(JLjava/lang/Object;)V
.registers 10
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v4/c/e;->c:[J
iget v1, p0, Landroid/support/v4/c/e;->e:I
invoke-static {v0, v1, p1, p2}, Landroid/support/v4/c/b;->a([JIJ)I
move-result v0
if-ltz v0, :cond_10
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aput-object p3, v1, v0
:goto_f
return-void
:cond_10
xor-int/lit8 v0, v0, -0x1
iget v1, p0, Landroid/support/v4/c/e;->e:I
if-ge v0, v1, :cond_27
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aget-object v1, v1, v0
sget-object v2, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
if-ne v1, v2, :cond_27
iget-object v1, p0, Landroid/support/v4/c/e;->c:[J
aput-wide p1, v1, v0
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aput-object p3, v1, v0
goto :goto_f
:cond_27
iget-boolean v1, p0, Landroid/support/v4/c/e;->b:Z
if-eqz v1, :cond_3f
iget v1, p0, Landroid/support/v4/c/e;->e:I
iget-object v2, p0, Landroid/support/v4/c/e;->c:[J
array-length v2, v2
if-lt v1, v2, :cond_3f
invoke-direct {p0}, Landroid/support/v4/c/e;->d()V
iget-object v0, p0, Landroid/support/v4/c/e;->c:[J
iget v1, p0, Landroid/support/v4/c/e;->e:I
invoke-static {v0, v1, p1, p2}, Landroid/support/v4/c/b;->a([JIJ)I
move-result v0
xor-int/lit8 v0, v0, -0x1
:cond_3f
iget v1, p0, Landroid/support/v4/c/e;->e:I
iget-object v2, p0, Landroid/support/v4/c/e;->c:[J
array-length v2, v2
if-lt v1, v2, :cond_66
iget v1, p0, Landroid/support/v4/c/e;->e:I
add-int/lit8 v1, v1, 0x1
invoke-static {v1}, Landroid/support/v4/c/b;->b(I)I
move-result v1
new-array v2, v1, [J
new-array v1, v1, [Ljava/lang/Object;
iget-object v3, p0, Landroid/support/v4/c/e;->c:[J
iget-object v4, p0, Landroid/support/v4/c/e;->c:[J
array-length v4, v4
invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v3, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
iget-object v4, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
array-length v4, v4
invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Landroid/support/v4/c/e;->c:[J
iput-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
:cond_66
iget v1, p0, Landroid/support/v4/c/e;->e:I
sub-int/2addr v1, v0
if-eqz v1, :cond_83
iget-object v1, p0, Landroid/support/v4/c/e;->c:[J
iget-object v2, p0, Landroid/support/v4/c/e;->c:[J
add-int/lit8 v3, v0, 0x1
iget v4, p0, Landroid/support/v4/c/e;->e:I
sub-int/2addr v4, v0
invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
iget-object v2, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
add-int/lit8 v3, v0, 0x1
iget v4, p0, Landroid/support/v4/c/e;->e:I
sub-int/2addr v4, v0
invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_83
iget-object v1, p0, Landroid/support/v4/c/e;->c:[J
aput-wide p1, v1, v0
iget-object v1, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aput-object p3, v1, v0
iget v0, p0, Landroid/support/v4/c/e;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/e;->e:I
goto/16 :goto_f
.end method
.method public final b(I)Ljava/lang/Object;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/c/e;->b:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/c/e;->d()V
:cond_7
iget-object v0, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
aget-object v0, v0, p1
return-object v0
.end method
.method public final b()V
.registers 6
const/4 v1, 0x0
iget v2, p0, Landroid/support/v4/c/e;->e:I
iget-object v3, p0, Landroid/support/v4/c/e;->d:[Ljava/lang/Object;
move v0, v1
:goto_6
if-ge v0, v2, :cond_e
const/4 v4, 0x0
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_e
iput v1, p0, Landroid/support/v4/c/e;->e:I
iput-boolean v1, p0, Landroid/support/v4/c/e;->b:Z
return-void
.end method
.method public final synthetic clone()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Landroid/support/v4/c/e;->c()Landroid/support/v4/c/e;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/support/v4/c/e;->a()I
move-result v0
if-gtz v0, :cond_9
const-string v0, "{}"
:goto_8
return-object v0
:cond_9
new-instance v1, Ljava/lang/StringBuilder;
iget v0, p0, Landroid/support/v4/c/e;->e:I
mul-int/lit8 v0, v0, 0x1c
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v0, 0x7b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
:goto_18
iget v2, p0, Landroid/support/v4/c/e;->e:I
if-ge v0, v2, :cond_41
if-lez v0, :cond_23
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_23
invoke-virtual {p0, v0}, Landroid/support/v4/c/e;->a(I)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v2, 0x3d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0, v0}, Landroid/support/v4/c/e;->b(I)Ljava/lang/Object;
move-result-object v2
if-eq v2, p0, :cond_3b
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:goto_38
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_3b
const-string v2, "(this Map)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_38
:cond_41
const/16 v0, 0x7d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method