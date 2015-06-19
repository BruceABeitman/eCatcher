.class public final Lcom/fasterxml/jackson/a/e/d;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"
.field static final a:Lcom/fasterxml/jackson/a/e/d;
.field protected b:Lcom/fasterxml/jackson/a/e/d;
.field protected final c:Z
.field protected final d:Z
.field protected e:[Ljava/lang/String;
.field protected f:[Lcom/fasterxml/jackson/a/e/e;
.field protected g:I
.field protected h:I
.field protected i:I
.field protected j:I
.field protected k:Z
.field private final l:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/a/e/d;
invoke-direct {v0}, Lcom/fasterxml/jackson/a/e/d;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/a/e/d;->a:Lcom/fasterxml/jackson/a/e/d;
return-void
.end method
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->d:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->c:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->d()V
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/a/e/d;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/a/e/e;III)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/a/e/d;->b:Lcom/fasterxml/jackson/a/e/d;
iput-boolean p2, p0, Lcom/fasterxml/jackson/a/e/d;->d:Z
iput-boolean p3, p0, Lcom/fasterxml/jackson/a/e/d;->c:Z
iput-object p4, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iput-object p5, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iput p6, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iput p7, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
array-length v0, p4
invoke-static {v0}, Lcom/fasterxml/jackson/a/e/d;->b(I)I
move-result v1
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->h:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->i:I
iput p8, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
return-void
.end method
.method private a(Ljava/lang/String;)I
.registers 7
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
iget v1, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
const/4 v0, 0x0
move v4, v0
move v0, v1
move v1, v4
:goto_a
if-ge v1, v3, :cond_18
mul-int/lit8 v0, v0, 0x21
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
add-int/2addr v2, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v2
goto :goto_a
:cond_18
if-nez v0, :cond_1b
const/4 v0, 0x1
:cond_1b
return v0
.end method
.method private a([CI)I
.registers 7
iget v1, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
const/4 v0, 0x0
move v3, v0
move v0, v1
move v1, v3
:goto_6
if-ge v1, p2, :cond_12
mul-int/lit8 v0, v0, 0x21
aget-char v2, p1, v1
add-int/2addr v2, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v2
goto :goto_6
:cond_12
if-nez v0, :cond_15
const/4 v0, 0x1
:cond_15
return v0
.end method
.method public static a()Lcom/fasterxml/jackson/a/e/d;
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
long-to-int v2, v0
const/16 v3, 0x20
ushr-long/2addr v0, v3
long-to-int v0, v0
add-int/2addr v0, v2
or-int/lit8 v0, v0, 0x1
invoke-static {v0}, Lcom/fasterxml/jackson/a/e/d;->a(I)Lcom/fasterxml/jackson/a/e/d;
move-result-object v0
return-object v0
.end method
.method private static a(I)Lcom/fasterxml/jackson/a/e/d;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/e/d;->a:Lcom/fasterxml/jackson/a/e/d;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/e/d;->c(I)Lcom/fasterxml/jackson/a/e/d;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/fasterxml/jackson/a/e/d;)V
.registers 4
invoke-direct {p1}, Lcom/fasterxml/jackson/a/e/d;->e()I
move-result v0
const/16 v1, 0x2ee0
if-gt v0, v1, :cond_e
iget v0, p1, Lcom/fasterxml/jackson/a/e/d;->j:I
const/16 v1, 0x3f
if-le v0, v1, :cond_1a
:cond_e
monitor-enter p0
:try_start_f
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->d()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
monitor-exit p0
:cond_16
:goto_16
:try_end_16
.catchall {:try_start_f .. :try_end_16} :catchall_17
return-void
:catchall_17
move-exception v0
monitor-exit p0
throw v0
:cond_1a
invoke-direct {p1}, Lcom/fasterxml/jackson/a/e/d;->e()I
move-result v0
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->e()I
move-result v1
if-le v0, v1, :cond_16
monitor-enter p0
:try_start_25
iget-object v0, p1, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iget-object v0, p1, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iget v0, p1, Lcom/fasterxml/jackson/a/e/d;->g:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/d;->h:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->h:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/d;->i:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->i:I
iget v0, p1, Lcom/fasterxml/jackson/a/e/d;->j:I
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
monitor-exit p0
:try_end_41
.catchall {:try_start_25 .. :try_end_41} :catchall_42
goto :goto_16
:catchall_42
move-exception v0
monitor-exit p0
throw v0
.end method
.method private static b(I)I
.registers 2
shr-int/lit8 v0, p0, 0x2
sub-int v0, p0, v0
return v0
.end method
.method private c(I)Lcom/fasterxml/jackson/a/e/d;
.registers 11
const/4 v2, 0x1
new-instance v0, Lcom/fasterxml/jackson/a/e/d;
const/4 v1, 0x0
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iget-object v5, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iget v6, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget v8, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
move v3, v2
move v7, p1
invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/a/e/d;-><init>(Lcom/fasterxml/jackson/a/e/d;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/a/e/e;III)V
return-object v0
.end method
.method private d(I)I
.registers 4
ushr-int/lit8 v0, p1, 0xf
add-int/2addr v0, p1
iget v1, p0, Lcom/fasterxml/jackson/a/e/d;->i:I
and-int/2addr v0, v1
return v0
.end method
.method private d()V
.registers 4
const/16 v2, 0x40
const/4 v1, 0x0
new-array v0, v2, [Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
const/16 v0, 0x20
new-array v0, v0, [Lcom/fasterxml/jackson/a/e/e;
iput-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
const/16 v0, 0x3f
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->i:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
invoke-static {v2}, Lcom/fasterxml/jackson/a/e/d;->b(I)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->h:I
return-void
.end method
.method private e()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
return v0
.end method
.method private f()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
return v0
.end method
.method private g()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
array-length v1, v0
new-array v2, v1, [Ljava/lang/String;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/a/e/e;
iput-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private h()V
.registers 13
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
array-length v4, v0
add-int v0, v4, v4
const/high16 v1, 0x1
if-le v0, v1, :cond_1b
iput v2, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
:cond_1a
return-void
:cond_1b
iget-object v5, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iget-object v6, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
new-array v1, v0, [Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
shr-int/lit8 v1, v0, 0x1
new-array v1, v1, [Lcom/fasterxml/jackson/a/e/e;
iput-object v1, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
add-int/lit8 v1, v0, -0x1
iput v1, p0, Lcom/fasterxml/jackson/a/e/d;->i:I
invoke-static {v0}, Lcom/fasterxml/jackson/a/e/d;->b(I)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->h:I
move v3, v2
move v0, v2
move v1, v2
:goto_36
if-ge v3, v4, :cond_6b
aget-object v7, v5, v3
if-eqz v7, :cond_50
add-int/lit8 v1, v1, 0x1
invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/e/d;->a(Ljava/lang/String;)I
move-result v8
invoke-direct {p0, v8}, Lcom/fasterxml/jackson/a/e/d;->d(I)I
move-result v8
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aget-object v9, v9, v8
if-nez v9, :cond_53
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aput-object v7, v9, v8
:goto_50
:cond_50
add-int/lit8 v3, v3, 0x1
goto :goto_36
:cond_53
shr-int/lit8 v8, v8, 0x1
new-instance v9, Lcom/fasterxml/jackson/a/e/e;
iget-object v10, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aget-object v10, v10, v8
invoke-direct {v9, v7, v10}, Lcom/fasterxml/jackson/a/e/e;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/e/e;)V
iget-object v7, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aput-object v9, v7, v8
invoke-virtual {v9}, Lcom/fasterxml/jackson/a/e/e;->c()I
move-result v7
invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_50
:cond_6b
shr-int/lit8 v5, v4, 0x1
move v11, v2
move v2, v1
move v1, v11
:goto_70
if-ge v1, v5, :cond_b0
aget-object v3, v6, v1
:goto_74
if-eqz v3, :cond_ad
add-int/lit8 v4, v2, 0x1
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/e/e;->a()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/e/d;->a(Ljava/lang/String;)I
move-result v7
invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/e/d;->d(I)I
move-result v7
iget-object v8, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aget-object v8, v8, v7
if-nez v8, :cond_95
iget-object v8, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aput-object v2, v8, v7
:goto_8e
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/e/e;->b()Lcom/fasterxml/jackson/a/e/e;
move-result-object v2
move-object v3, v2
move v2, v4
goto :goto_74
:cond_95
shr-int/lit8 v7, v7, 0x1
new-instance v8, Lcom/fasterxml/jackson/a/e/e;
iget-object v9, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aget-object v9, v9, v7
invoke-direct {v8, v2, v9}, Lcom/fasterxml/jackson/a/e/e;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/e/e;)V
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aput-object v8, v2, v7
invoke-virtual {v8}, Lcom/fasterxml/jackson/a/e/e;->c()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_8e
:cond_ad
add-int/lit8 v1, v1, 0x1
goto :goto_70
:cond_b0
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
iget v0, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
if-eq v2, v0, :cond_1a
new-instance v0, Ljava/lang/Error;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Internal error on SymbolTable.rehash(): had "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " entries; now have "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private i()V
.registers 4
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Longest collision chain in symbol table (of size "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
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
.method public final a(ZZ)Lcom/fasterxml/jackson/a/e/d;
.registers 12
monitor-enter p0
:try_start_1
iget-object v4, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
iget-object v5, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
iget v6, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget v7, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
iget v8, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
monitor-exit p0
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_15
new-instance v0, Lcom/fasterxml/jackson/a/e/d;
move-object v1, p0
move v2, p1
move v3, p2
invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/a/e/d;-><init>(Lcom/fasterxml/jackson/a/e/d;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/a/e/e;III)V
return-object v0
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a([CIII)Ljava/lang/String;
.registers 10
if-gtz p3, :cond_5
const-string v1, ""
:goto_4
:cond_4
return-object v1
:cond_5
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->d:Z
if-nez v0, :cond_f
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
goto :goto_4
:cond_f
invoke-direct {p0, p4}, Lcom/fasterxml/jackson/a/e/d;->d(I)I
move-result v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aget-object v2, v0, v1
if-eqz v2, :cond_42
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-ne v0, p3, :cond_32
const/4 v0, 0x0
:cond_20
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
add-int v4, p2, v0
aget-char v4, p1, v4
if-ne v3, v4, :cond_2e
add-int/lit8 v0, v0, 0x1
if-lt v0, p3, :cond_20
:cond_2e
if-ne v0, p3, :cond_32
move-object v1, v2
goto :goto_4
:cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
shr-int/lit8 v2, v1, 0x1
aget-object v0, v0, v2
if-eqz v0, :cond_42
invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e/e;->a([CII)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_42
move-object v1, v0
goto :goto_4
:cond_42
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
if-nez v0, :cond_6d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->g()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
move v0, v1
:goto_4d
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
iget-boolean v2, p0, Lcom/fasterxml/jackson/a/e/d;->c:Z
if-eqz v2, :cond_5c
sget-object v2, Lcom/fasterxml/jackson/a/g/k;->a:Lcom/fasterxml/jackson/a/g/k;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/g/k;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_5c
iget v2, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aget-object v2, v2, v0
if-nez v2, :cond_7f
iget-object v2, p0, Lcom/fasterxml/jackson/a/e/d;->e:[Ljava/lang/String;
aput-object v1, v2, v0
goto :goto_4
:cond_6d
iget v0, p0, Lcom/fasterxml/jackson/a/e/d;->g:I
iget v2, p0, Lcom/fasterxml/jackson/a/e/d;->h:I
if-lt v0, v2, :cond_a5
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->h()V
invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/a/e/d;->a([CI)I
move-result v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/e/d;->d(I)I
move-result v0
goto :goto_4d
:cond_7f
shr-int/lit8 v0, v0, 0x1
new-instance v2, Lcom/fasterxml/jackson/a/e/e;
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aget-object v3, v3, v0
invoke-direct {v2, v1, v3}, Lcom/fasterxml/jackson/a/e/e;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/e/e;)V
iget-object v3, p0, Lcom/fasterxml/jackson/a/e/d;->f:[Lcom/fasterxml/jackson/a/e/e;
aput-object v2, v3, v0
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/e/e;->c()I
move-result v0
iget v2, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
iget v0, p0, Lcom/fasterxml/jackson/a/e/d;->j:I
const/16 v2, 0xff
if-le v0, v2, :cond_4
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->i()V
goto/16 :goto_4
:cond_a5
move v0, v1
goto :goto_4d
.end method
.method public final b()V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/a/e/d;->f()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->b:Lcom/fasterxml/jackson/a/e/d;
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/a/e/d;->b:Lcom/fasterxml/jackson/a/e/d;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/e/d;->a(Lcom/fasterxml/jackson/a/e/d;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/e/d;->k:Z
goto :goto_6
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/a/e/d;->l:I
return v0
.end method