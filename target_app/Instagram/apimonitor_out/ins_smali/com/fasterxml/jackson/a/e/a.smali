.class public final Lcom/fasterxml/jackson/a/e/a;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"
.field protected final a:Lcom/fasterxml/jackson/a/e/a;
.field protected final b:Ljava/util/concurrent/atomic/AtomicReference;
.field protected final c:Z
.field protected d:I
.field protected e:I
.field protected f:I
.field protected g:[I
.field protected h:[Lcom/fasterxml/jackson/a/e/f;
.field protected i:[Lcom/fasterxml/jackson/a/e/b;
.field protected j:I
.field protected k:I
.field private final l:I
.field private transient m:Z
.field private n:Z
.field private o:Z
.field private p:Z
.method private constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->a:Lcom/fasterxml/jackson/a/e/a;
iput p1, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->c:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
const/16 v1, 0x40
invoke-static {v1}, Lcom/fasterxml/jackson/a/e/a;->b(I)Lcom/fasterxml/jackson/a/e/c;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/a/e/a;ZILcom/fasterxml/jackson/a/e/c;)V
.registers 7
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/a/e/a;->a:Lcom/fasterxml/jackson/a/e/a;
iput p3, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
iput-boolean p2, p0, Lcom/fasterxml/jackson/a/e/a;->c:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;
iget v0, p4, Lcom/fasterxml/jackson/a/e/c;->a:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
iget v0, p4, Lcom/fasterxml/jackson/a/e/c;->b:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
iget-object v0, p4, Lcom/fasterxml/jackson/a/e/c;->c:[I
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
iget-object v0, p4, Lcom/fasterxml/jackson/a/e/c;->d:[Lcom/fasterxml/jackson/a/e/f;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
iget-object v0, p4, Lcom/fasterxml/jackson/a/e/c;->e:[Lcom/fasterxml/jackson/a/e/b;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
iget v0, p4, Lcom/fasterxml/jackson/a/e/c;->f:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
iget v0, p4, Lcom/fasterxml/jackson/a/e/c;->g:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iget v0, p4, Lcom/fasterxml/jackson/a/e/c;->h:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->m:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->n:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->o:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->p:Z
return-void
.end method
.method public static a()Lcom/fasterxml/jackson/a/e/a;
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
long-to-int v2, v0
const/16 v3, 0x20
ushr-long/2addr v0, v3
long-to-int v0, v0
add-int/2addr v0, v2
or-int/lit8 v0, v0, 0x1
invoke-static {v0}, Lcom/fasterxml/jackson/a/e/a;->c(I)Lcom/fasterxml/jackson/a/e/a;
move-result-object v0
return-object v0
.end method
.method private static a(ILjava/lang/String;[II)Lcom/fasterxml/jackson/a/e/f;
.registers 10
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x4
if-ge p3, v0, :cond_8
packed-switch p3, :pswitch_data_3c
:cond_8
new-array v2, p3, [I
move v0, v1
:goto_b
if-ge v0, p3, :cond_35
aget v1, p2, v0
aput v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_b
:pswitch_14
new-instance v0, Lcom/fasterxml/jackson/a/e/g;
aget v1, p2, v1
invoke-direct {v0, p1, p0, v1}, Lcom/fasterxml/jackson/a/e/g;-><init>(Ljava/lang/String;II)V
:goto_1b
return-object v0
:pswitch_1c
new-instance v0, Lcom/fasterxml/jackson/a/e/h;
aget v1, p2, v1
aget v2, p2, v2
invoke-direct {v0, p1, p0, v1, v2}, Lcom/fasterxml/jackson/a/e/h;-><init>(Ljava/lang/String;III)V
goto :goto_1b
:pswitch_26
new-instance v0, Lcom/fasterxml/jackson/a/e/i;
aget v3, p2, v1
aget v4, p2, v2
const/4 v1, 0x2
aget v5, p2, v1
move-object v1, p1
move v2, p0
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/e/i;-><init>(Ljava/lang/String;IIII)V
goto :goto_1b
:cond_35
new-instance v0, Lcom/fasterxml/jackson/a/e/j;
invoke-direct {v0, p1, p0, v2, p3}, Lcom/fasterxml/jackson/a/e/j;-><init>(Ljava/lang/String;I[II)V
goto :goto_1b
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_14
:pswitch_1c
:pswitch_26
.end packed-switch
.end method
.method private a(ILcom/fasterxml/jackson/a/e/f;)V
.registers 9
const/4 v5, 0x1
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->n:Z
if-eqz v0, :cond_8
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->h()V
:cond_8
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->m:Z
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->e()V
:cond_f
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int v1, p1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aget-object v0, v0, v1
if-nez v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
shl-int/lit8 v2, p1, 0x8
aput v2, v0, v1
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->o:Z
if-eqz v0, :cond_2c
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->j()V
:cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aput-object p2, v0, v1
:goto_30
:cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
array-length v0, v0
iget v1, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
shr-int/lit8 v2, v0, 0x1
if-le v1, v2, :cond_42
shr-int/lit8 v1, v0, 0x2
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
sub-int/2addr v0, v1
if-le v2, v0, :cond_a2
iput-boolean v5, p0, Lcom/fasterxml/jackson/a/e/a;->m:Z
:goto_42
:cond_42
return-void
:cond_43
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->p:Z
if-eqz v0, :cond_4a
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->i()V
:cond_4a
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
aget v2, v0, v1
and-int/lit16 v0, v2, 0xff
if-nez v0, :cond_9f
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
const/16 v3, 0xfe
if-gt v0, v3, :cond_9a
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iget v3, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
array-length v3, v3
if-lt v0, v3, :cond_6e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->k()V
:goto_6e
:cond_6e
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
and-int/lit16 v2, v2, -0x100
add-int/lit8 v4, v0, 0x1
or-int/2addr v2, v4
aput v2, v3, v1
:goto_77
new-instance v1, Lcom/fasterxml/jackson/a/e/b;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aget-object v2, v2, v0
invoke-direct {v1, p2, v2}, Lcom/fasterxml/jackson/a/e/b;-><init>(Lcom/fasterxml/jackson/a/e/f;Lcom/fasterxml/jackson/a/e/b;)V
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aput-object v1, v2, v0
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/e/b;->a()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
const/16 v1, 0xff
if-le v0, v1, :cond_30
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->l()V
goto :goto_30
:cond_9a
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->g()I
move-result v0
goto :goto_6e
:cond_9f
add-int/lit8 v0, v0, -0x1
goto :goto_77
:cond_a2
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
if-lt v0, v1, :cond_42
iput-boolean v5, p0, Lcom/fasterxml/jackson/a/e/a;->m:Z
goto :goto_42
.end method
.method private a(Lcom/fasterxml/jackson/a/e/c;)V
.registers 5
iget v1, p1, Lcom/fasterxml/jackson/a/e/c;->a:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/a/e/c;
iget v2, v0, Lcom/fasterxml/jackson/a/e/c;->a:I
if-gt v1, v2, :cond_f
:goto_e
return-void
:cond_f
const/16 v2, 0x1770
if-gt v1, v2, :cond_19
iget v1, p1, Lcom/fasterxml/jackson/a/e/c;->h:I
const/16 v2, 0x3f
if-le v1, v2, :cond_1f
:cond_19
const/16 v1, 0x40
invoke-static {v1}, Lcom/fasterxml/jackson/a/e/a;->b(I)Lcom/fasterxml/jackson/a/e/c;
move-result-object p1
:cond_1f
iget-object v1, p0, Lcom/fasterxml/jackson/a/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
goto :goto_e
.end method
.method private b(II)I
.registers 5
ushr-int/lit8 v0, p1, 0xf
xor-int/2addr v0, p1
mul-int/lit8 v1, p2, 0x21
add-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
xor-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x7
add-int/2addr v0, v1
return v0
.end method
.method private b([II)I
.registers 6
const/4 v0, 0x3
if-ge p2, v0, :cond_9
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_9
const/4 v1, 0x0
aget v1, p1, v1
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x9
add-int/2addr v1, v2
mul-int/lit8 v1, v1, 0x21
const/4 v2, 0x1
aget v2, p1, v2
add-int/2addr v1, v2
const v2, 0x1003f
mul-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0xf
add-int/2addr v1, v2
const/4 v2, 0x2
aget v2, p1, v2
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x11
add-int/2addr v1, v2
:goto_26
if-ge v0, p2, :cond_36
mul-int/lit8 v1, v1, 0x1f
aget v2, p1, v0
xor-int/2addr v1, v2
ushr-int/lit8 v2, v1, 0x3
add-int/2addr v1, v2
shl-int/lit8 v2, v1, 0x7
xor-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_36
ushr-int/lit8 v0, v1, 0xf
add-int/2addr v0, v1
shl-int/lit8 v1, v0, 0x9
xor-int/2addr v0, v1
return v0
.end method
.method private static b(I)Lcom/fasterxml/jackson/a/e/c;
.registers 5
const/16 v3, 0x40
new-instance v0, Lcom/fasterxml/jackson/a/e/c;
const/16 v1, 0x3f
new-array v2, v3, [I
new-array v3, v3, [Lcom/fasterxml/jackson/a/e/f;
invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/e/c;-><init>(I[I[Lcom/fasterxml/jackson/a/e/f;)V
return-object v0
.end method
.method private static c(I)Lcom/fasterxml/jackson/a/e/a;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/a/e/a;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/e/a;-><init>(I)V
return-object v0
.end method
.method public static c()Lcom/fasterxml/jackson/a/e/f;
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/a/e/g;->b()Lcom/fasterxml/jackson/a/e/g;
move-result-object v0
return-object v0
.end method
.method private d(I)I
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
xor-int/2addr v0, p1
ushr-int/lit8 v1, v0, 0xf
add-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x9
xor-int/2addr v0, v1
return v0
.end method
.method private d()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->n:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private e()V
.registers 13
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->m:Z
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->o:Z
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
array-length v3, v0
add-int v0, v3, v3
const/high16 v2, 0x1
if-le v0, v2, :cond_12
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->f()V
:cond_11
:goto_11
return-void
:cond_12
new-array v2, v0, [I
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
add-int/lit8 v2, v0, -0x1
iput v2, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
new-array v0, v0, [Lcom/fasterxml/jackson/a/e/f;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
move v2, v1
move v0, v1
:goto_22
if-ge v2, v3, :cond_3e
aget-object v5, v4, v2
if-eqz v5, :cond_3b
add-int/lit8 v0, v0, 0x1
invoke-virtual {v5}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I
move-result v6
iget v7, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int/2addr v7, v6
iget-object v8, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aput-object v5, v8, v7
iget-object v5, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
shl-int/lit8 v6, v6, 0x8
aput v6, v5, v7
:cond_3b
add-int/lit8 v2, v2, 0x1
goto :goto_22
:cond_3e
iget v5, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
if-nez v5, :cond_45
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
goto :goto_11
:cond_45
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/e/a;->p:Z
iget-object v6, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
array-length v2, v6
new-array v2, v2, [Lcom/fasterxml/jackson/a/e/b;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
move v2, v1
:goto_53
if-ge v2, v5, :cond_cc
aget-object v3, v6, v2
move-object v4, v3
move v3, v0
:goto_59
if-eqz v4, :cond_c7
add-int/lit8 v3, v3, 0x1
iget-object v7, v4, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;
invoke-virtual {v7}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I
move-result v0
iget v8, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int/2addr v8, v0
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
aget v9, v9, v8
iget-object v10, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aget-object v10, v10, v8
if-nez v10, :cond_80
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
shl-int/lit8 v0, v0, 0x8
aput v0, v9, v8
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aput-object v7, v0, v8
move v0, v1
:goto_7b
iget-object v1, v4, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;
move-object v4, v1
move v1, v0
goto :goto_59
:cond_80
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
and-int/lit16 v0, v9, 0xff
if-nez v0, :cond_c4
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
const/16 v10, 0xfe
if-gt v0, v10, :cond_bf
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iget v10, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
add-int/lit8 v10, v10, 0x1
iput v10, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
iget-object v10, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
array-length v10, v10
if-lt v0, v10, :cond_a0
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->k()V
:goto_a0
:cond_a0
iget-object v10, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
and-int/lit16 v9, v9, -0x100
add-int/lit8 v11, v0, 0x1
or-int/2addr v9, v11
aput v9, v10, v8
:goto_a9
new-instance v8, Lcom/fasterxml/jackson/a/e/b;
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aget-object v9, v9, v0
invoke-direct {v8, v7, v9}, Lcom/fasterxml/jackson/a/e/b;-><init>(Lcom/fasterxml/jackson/a/e/f;Lcom/fasterxml/jackson/a/e/b;)V
iget-object v7, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aput-object v8, v7, v0
invoke-virtual {v8}, Lcom/fasterxml/jackson/a/e/b;->a()I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_7b
:cond_bf
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->g()I
move-result v0
goto :goto_a0
:cond_c4
add-int/lit8 v0, v0, -0x1
goto :goto_a9
:cond_c7
add-int/lit8 v0, v2, 0x1
move v2, v0
move v0, v3
goto :goto_53
:cond_cc
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
iget v1, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
if-eq v0, v1, :cond_11
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Internal error: count after rehash "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "; should be "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private f()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->e:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->j:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
return-void
.end method
.method private g()I
.registers 7
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
const v3, 0x7fffffff
const/4 v0, -0x1
const/4 v1, 0x0
iget v5, p0, Lcom/fasterxml/jackson/a/e/a;->k:I
:goto_9
if-ge v1, v5, :cond_1c
aget-object v2, v4, v1
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/e/b;->a()I
move-result v2
if-ge v2, v3, :cond_1e
const/4 v0, 0x1
if-ne v2, v0, :cond_17
:goto_16
return v1
:cond_17
move v0, v1
:goto_18
add-int/lit8 v1, v1, 0x1
move v3, v2
goto :goto_9
:cond_1c
move v1, v0
goto :goto_16
:cond_1e
move v2, v3
goto :goto_18
.end method
.method private h()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
iget-object v1, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
array-length v1, v1
new-array v2, v1, [I
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lcom/fasterxml/jackson/a/e/a;->n:Z
return-void
.end method
.method private i()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
if-nez v0, :cond_e
const/16 v0, 0x20
new-array v0, v0, [Lcom/fasterxml/jackson/a/e/b;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
:goto_b
iput-boolean v3, p0, Lcom/fasterxml/jackson/a/e/a;->p:Z
return-void
:cond_e
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/a/e/b;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_b
.end method
.method private j()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/a/e/f;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean v3, p0, Lcom/fasterxml/jackson/a/e/a;->o:Z
return-void
.end method
.method private k()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
array-length v1, v0
add-int v2, v1, v1
new-array v2, v2, [Lcom/fasterxml/jackson/a/e/b;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private l()V
.registers 4
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Longest collision chain in symbol table (of size "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->d:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(Z)Lcom/fasterxml/jackson/a/e/a;
.registers 5
new-instance v1, Lcom/fasterxml/jackson/a/e/a;
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->l:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/a/e/c;
invoke-direct {v1, p0, p1, v2, v0}, Lcom/fasterxml/jackson/a/e/a;-><init>(Lcom/fasterxml/jackson/a/e/a;ZILcom/fasterxml/jackson/a/e/c;)V
return-object v1
.end method
.method public final a(I)Lcom/fasterxml/jackson/a/e/f;
.registers 7
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/e/a;->d(I)I
move-result v2
iget v1, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int/2addr v1, v2
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
aget v3, v3, v1
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v2
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_22
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aget-object v1, v4, v1
if-nez v1, :cond_1a
:goto_19
:cond_19
return-object v0
:cond_1a
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/e/f;->a(I)Z
move-result v4
if-eqz v4, :cond_24
move-object v0, v1
goto :goto_19
:cond_22
if-eqz v3, :cond_19
:cond_24
and-int/lit16 v1, v3, 0xff
if-lez v1, :cond_19
add-int/lit8 v1, v1, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aget-object v1, v3, v1
if-eqz v1, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v2, p1, v0}, Lcom/fasterxml/jackson/a/e/b;->a(III)Lcom/fasterxml/jackson/a/e/f;
move-result-object v0
goto :goto_19
.end method
.method public final a(II)Lcom/fasterxml/jackson/a/e/f;
.registers 8
const/4 v1, 0x0
if-nez p2, :cond_1d
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/e/a;->d(I)I
move-result v0
:goto_7
iget v2, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int/2addr v2, v0
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
aget v3, v3, v2
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v0
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_2a
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aget-object v2, v4, v2
if-nez v2, :cond_22
move-object v0, v1
:goto_1c
return-object v0
:cond_1d
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->b(II)I
move-result v0
goto :goto_7
:cond_22
invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/a/e/f;->a(II)Z
move-result v4
if-eqz v4, :cond_2e
move-object v0, v2
goto :goto_1c
:cond_2a
if-nez v3, :cond_2e
move-object v0, v1
goto :goto_1c
:cond_2e
and-int/lit16 v2, v3, 0xff
if-lez v2, :cond_3f
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aget-object v2, v3, v2
if-eqz v2, :cond_3f
invoke-virtual {v2, v0, p1, p2}, Lcom/fasterxml/jackson/a/e/b;->a(III)Lcom/fasterxml/jackson/a/e/f;
move-result-object v0
goto :goto_1c
:cond_3f
move-object v0, v1
goto :goto_1c
.end method
.method public final a(Ljava/lang/String;[II)Lcom/fasterxml/jackson/a/e/f;
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/a;->c:Z
if-eqz v0, :cond_c
sget-object v0, Lcom/fasterxml/jackson/a/g/k;->a:Lcom/fasterxml/jackson/a/g/k;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/g/k;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_c
const/4 v0, 0x3
if-ge p3, v0, :cond_28
if-ne p3, v2, :cond_1f
aget v0, p2, v1
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/e/a;->d(I)I
move-result v0
:goto_17
invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e/a;->a(ILjava/lang/String;[II)Lcom/fasterxml/jackson/a/e/f;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/e/a;->a(ILcom/fasterxml/jackson/a/e/f;)V
return-object v1
:cond_1f
aget v0, p2, v1
aget v1, p2, v2
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/e/a;->b(II)I
move-result v0
goto :goto_17
:cond_28
invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/a/e/a;->b([II)I
move-result v0
goto :goto_17
.end method
.method public final a([II)Lcom/fasterxml/jackson/a/e/f;
.registers 8
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v2, 0x3
if-ge p2, v2, :cond_13
aget v1, p1, v0
const/4 v2, 0x2
if-ge p2, v2, :cond_f
:goto_a
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/e/a;->a(II)Lcom/fasterxml/jackson/a/e/f;
move-result-object v0
:cond_e
:goto_e
return-object v0
:cond_f
const/4 v0, 0x1
aget v0, p1, v0
goto :goto_a
:cond_13
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->b([II)I
move-result v2
iget v0, p0, Lcom/fasterxml/jackson/a/e/a;->f:I
and-int/2addr v0, v2
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->g:[I
aget v3, v3, v0
shr-int/lit8 v4, v3, 0x8
xor-int/2addr v4, v2
shl-int/lit8 v4, v4, 0x8
if-nez v4, :cond_42
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;
aget-object v0, v4, v0
if-eqz v0, :cond_e
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e/f;->a([II)Z
move-result v4
if-nez v4, :cond_e
:cond_31
and-int/lit16 v0, v3, 0xff
if-lez v0, :cond_46
add-int/lit8 v0, v0, -0x1
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;
aget-object v0, v3, v0
if-eqz v0, :cond_46
invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/a/e/b;->a(I[II)Lcom/fasterxml/jackson/a/e/f;
move-result-object v0
goto :goto_e
:cond_42
if-nez v3, :cond_31
move-object v0, v1
goto :goto_e
:cond_46
move-object v0, v1
goto :goto_e
.end method
.method public final b()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->a:Lcom/fasterxml/jackson/a/e/a;
if-eqz v0, :cond_1b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/a;->d()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/a;->a:Lcom/fasterxml/jackson/a/e/a;
new-instance v1, Lcom/fasterxml/jackson/a/e/c;
invoke-direct {v1, p0}, Lcom/fasterxml/jackson/a/e/c;-><init>(Lcom/fasterxml/jackson/a/e/a;)V
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/e/a;->a(Lcom/fasterxml/jackson/a/e/c;)V
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/e/a;->n:Z
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/e/a;->o:Z
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/e/a;->p:Z
:cond_1b
return-void
.end method