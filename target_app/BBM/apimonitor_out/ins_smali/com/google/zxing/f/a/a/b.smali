.class public final Lcom/google/zxing/f/a/a/b;
.super Ljava/lang/Object;
.source "ModulusGF.java"
.field public static final a:Lcom/google/zxing/f/a/a/b;
.field public final b:[I
.field public final c:[I
.field public final d:Lcom/google/zxing/f/a/a/c;
.field public final e:Lcom/google/zxing/f/a/a/c;
.field final f:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/zxing/f/a/a/b;
invoke-direct {v0}, Lcom/google/zxing/f/a/a/b;-><init>()V
sput-object v0, Lcom/google/zxing/f/a/a/b;->a:Lcom/google/zxing/f/a/a/b;
return-void
.end method
.method private constructor <init>()V
.registers 7
const/16 v5, 0x3a1
const/4 v3, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v5, p0, Lcom/google/zxing/f/a/a/b;->f:I
new-array v0, v5, [I
iput-object v0, p0, Lcom/google/zxing/f/a/a/b;->b:[I
new-array v0, v5, [I
iput-object v0, p0, Lcom/google/zxing/f/a/a/b;->c:[I
move v0, v1
move v2, v3
:goto_13
if-ge v0, v5, :cond_20
iget-object v4, p0, Lcom/google/zxing/f/a/a/b;->b:[I
aput v2, v4, v0
mul-int/lit8 v2, v2, 0x3
rem-int/lit16 v2, v2, 0x3a1
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_20
move v0, v1
:goto_21
const/16 v2, 0x3a0
if-ge v0, v2, :cond_30
iget-object v2, p0, Lcom/google/zxing/f/a/a/b;->c:[I
iget-object v4, p0, Lcom/google/zxing/f/a/a/b;->b:[I
aget v4, v4, v0
aput v0, v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_30
new-instance v0, Lcom/google/zxing/f/a/a/c;
new-array v2, v3, [I
aput v1, v2, v1
invoke-direct {v0, p0, v2}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
iput-object v0, p0, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
new-instance v0, Lcom/google/zxing/f/a/a/c;
new-array v2, v3, [I
aput v3, v2, v1
invoke-direct {v0, p0, v2}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
iput-object v0, p0, Lcom/google/zxing/f/a/a/b;->e:Lcom/google/zxing/f/a/a/c;
return-void
.end method
.method public final a(I)I
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/lang/ArithmeticException;
invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V
throw v0
:cond_8
iget-object v0, p0, Lcom/google/zxing/f/a/a/b;->b:[I
iget v1, p0, Lcom/google/zxing/f/a/a/b;->f:I
iget-object v2, p0, Lcom/google/zxing/f/a/a/b;->c:[I
aget v2, v2, p1
sub-int/2addr v1, v2
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
return v0
.end method
.method public final a(II)Lcom/google/zxing/f/a/a/c;
.registers 5
if-gez p1, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
if-nez p2, :cond_d
iget-object v0, p0, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
:goto_c
return-object v0
:cond_d
add-int/lit8 v0, p1, 0x1
new-array v1, v0, [I
const/4 v0, 0x0
aput p2, v1, v0
new-instance v0, Lcom/google/zxing/f/a/a/c;
invoke-direct {v0, p0, v1}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
goto :goto_c
.end method
.method final b(II)I
.registers 5
add-int v0, p1, p2
iget v1, p0, Lcom/google/zxing/f/a/a/b;->f:I
rem-int/2addr v0, v1
return v0
.end method
.method public final c(II)I
.registers 5
iget v0, p0, Lcom/google/zxing/f/a/a/b;->f:I
add-int/2addr v0, p1
sub-int/2addr v0, p2
iget v1, p0, Lcom/google/zxing/f/a/a/b;->f:I
rem-int/2addr v0, v1
return v0
.end method
.method public final d(II)I
.registers 6
if-eqz p1, :cond_4
if-nez p2, :cond_6
:cond_4
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/google/zxing/f/a/a/b;->b:[I
iget-object v1, p0, Lcom/google/zxing/f/a/a/b;->c:[I
aget v1, v1, p1
iget-object v2, p0, Lcom/google/zxing/f/a/a/b;->c:[I
aget v2, v2, p2
add-int/2addr v1, v2
iget v2, p0, Lcom/google/zxing/f/a/a/b;->f:I
add-int/lit8 v2, v2, -0x1
rem-int/2addr v1, v2
aget v0, v0, v1
goto :goto_5
.end method