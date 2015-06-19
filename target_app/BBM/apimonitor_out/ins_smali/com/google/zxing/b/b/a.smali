.class public final Lcom/google/zxing/b/b/a;
.super Ljava/lang/Object;
.source "GenericGF.java"
.field public static final a:Lcom/google/zxing/b/b/a;
.field public static final b:Lcom/google/zxing/b/b/a;
.field public static final c:Lcom/google/zxing/b/b/a;
.field public static final d:Lcom/google/zxing/b/b/a;
.field public static final e:Lcom/google/zxing/b/b/a;
.field public static final f:Lcom/google/zxing/b/b/a;
.field public static final g:Lcom/google/zxing/b/b/a;
.field public static final h:Lcom/google/zxing/b/b/a;
.field  i:Lcom/google/zxing/b/b/b;
.field final j:I
.field private k:[I
.field private l:[I
.field private m:Lcom/google/zxing/b/b/b;
.field private final n:I
.field private o:Z
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0x100
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x1069
const/16 v2, 0x1000
invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->a:Lcom/google/zxing/b/b/a;
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x409
const/16 v2, 0x400
invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/b/b/a;
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x43
const/16 v2, 0x40
invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->c:Lcom/google/zxing/b/b/a;
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x13
const/16 v2, 0x10
invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->d:Lcom/google/zxing/b/b/a;
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x11d
invoke-direct {v0, v1, v3}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->e:Lcom/google/zxing/b/b/a;
new-instance v0, Lcom/google/zxing/b/b/a;
const/16 v1, 0x12d
invoke-direct {v0, v1, v3}, Lcom/google/zxing/b/b/a;-><init>(II)V
sput-object v0, Lcom/google/zxing/b/b/a;->f:Lcom/google/zxing/b/b/a;
sput-object v0, Lcom/google/zxing/b/b/a;->g:Lcom/google/zxing/b/b/a;
sget-object v0, Lcom/google/zxing/b/b/a;->c:Lcom/google/zxing/b/b/a;
sput-object v0, Lcom/google/zxing/b/b/a;->h:Lcom/google/zxing/b/b/a;
return-void
.end method
.method private constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/zxing/b/b/a;->o:Z
iput p1, p0, Lcom/google/zxing/b/b/a;->n:I
iput p2, p0, Lcom/google/zxing/b/b/a;->j:I
if-gtz p2, :cond_f
invoke-direct {p0}, Lcom/google/zxing/b/b/a;->c()V
:cond_f
return-void
.end method
.method static b(II)I
.registers 3
xor-int v0, p0, p1
return v0
.end method
.method private c()V
.registers 6
const/4 v3, 0x1
const/4 v1, 0x0
iget v0, p0, Lcom/google/zxing/b/b/a;->j:I
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/b/b/a;->k:[I
iget v0, p0, Lcom/google/zxing/b/b/a;->j:I
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/b/b/a;->l:[I
move v0, v1
move v2, v3
:goto_10
iget v4, p0, Lcom/google/zxing/b/b/a;->j:I
if-ge v0, v4, :cond_29
iget-object v4, p0, Lcom/google/zxing/b/b/a;->k:[I
aput v2, v4, v0
shl-int/lit8 v2, v2, 0x1
iget v4, p0, Lcom/google/zxing/b/b/a;->j:I
if-lt v2, v4, :cond_26
iget v4, p0, Lcom/google/zxing/b/b/a;->n:I
xor-int/2addr v2, v4
iget v4, p0, Lcom/google/zxing/b/b/a;->j:I
add-int/lit8 v4, v4, -0x1
and-int/2addr v2, v4
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_29
move v0, v1
:goto_2a
iget v2, p0, Lcom/google/zxing/b/b/a;->j:I
add-int/lit8 v2, v2, -0x1
if-ge v0, v2, :cond_3b
iget-object v2, p0, Lcom/google/zxing/b/b/a;->l:[I
iget-object v4, p0, Lcom/google/zxing/b/b/a;->k:[I
aget v4, v4, v0
aput v0, v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_2a
:cond_3b
new-instance v0, Lcom/google/zxing/b/b/b;
new-array v2, v3, [I
aput v1, v2, v1
invoke-direct {v0, p0, v2}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V
iput-object v0, p0, Lcom/google/zxing/b/b/a;->m:Lcom/google/zxing/b/b/b;
new-instance v0, Lcom/google/zxing/b/b/b;
new-array v2, v3, [I
aput v3, v2, v1
invoke-direct {v0, p0, v2}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V
iput-object v0, p0, Lcom/google/zxing/b/b/a;->i:Lcom/google/zxing/b/b/b;
iput-boolean v3, p0, Lcom/google/zxing/b/b/a;->o:Z
return-void
.end method
.method final a(I)I
.registers 3
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
iget-object v0, p0, Lcom/google/zxing/b/b/a;->k:[I
aget v0, v0, p1
return v0
.end method
.method final a(II)Lcom/google/zxing/b/b/b;
.registers 5
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
if-gez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
if-nez p2, :cond_10
iget-object v0, p0, Lcom/google/zxing/b/b/a;->m:Lcom/google/zxing/b/b/b;
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, p1, 0x1
new-array v1, v0, [I
const/4 v0, 0x0
aput p2, v1, v0
new-instance v0, Lcom/google/zxing/b/b/b;
invoke-direct {v0, p0, v1}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V
goto :goto_f
.end method
.method final a()V
.registers 2
iget-boolean v0, p0, Lcom/google/zxing/b/b/a;->o:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/google/zxing/b/b/a;->c()V
:cond_7
return-void
.end method
.method final b(I)I
.registers 3
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
iget-object v0, p0, Lcom/google/zxing/b/b/a;->l:[I
aget v0, v0, p1
return v0
.end method
.method final b()Lcom/google/zxing/b/b/b;
.registers 2
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
iget-object v0, p0, Lcom/google/zxing/b/b/a;->m:Lcom/google/zxing/b/b/b;
return-object v0
.end method
.method final c(I)I
.registers 5
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/ArithmeticException;
invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V
throw v0
:cond_b
iget-object v0, p0, Lcom/google/zxing/b/b/a;->k:[I
iget v1, p0, Lcom/google/zxing/b/b/a;->j:I
iget-object v2, p0, Lcom/google/zxing/b/b/a;->l:[I
aget v2, v2, p1
sub-int/2addr v1, v2
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
return v0
.end method
.method final c(II)I
.registers 6
invoke-virtual {p0}, Lcom/google/zxing/b/b/a;->a()V
if-eqz p1, :cond_7
if-nez p2, :cond_9
:cond_7
const/4 v0, 0x0
:goto_8
return v0
:cond_9
iget-object v0, p0, Lcom/google/zxing/b/b/a;->k:[I
iget-object v1, p0, Lcom/google/zxing/b/b/a;->l:[I
aget v1, v1, p1
iget-object v2, p0, Lcom/google/zxing/b/b/a;->l:[I
aget v2, v2, p2
add-int/2addr v1, v2
iget v2, p0, Lcom/google/zxing/b/b/a;->j:I
add-int/lit8 v2, v2, -0x1
rem-int/2addr v1, v2
aget v0, v0, v1
goto :goto_8
.end method