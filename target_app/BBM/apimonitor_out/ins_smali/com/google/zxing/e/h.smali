.class public final Lcom/google/zxing/e/h;
.super Lcom/google/zxing/e/k;
.source "ITFReader.java"
.field static final a:[[I
.field private static final b:[I
.field private static final d:[I
.field private static final e:[I
.field private c:I
.method static constructor <clinit>()V
.registers 6
const/16 v1, 0xa
const/4 v5, 0x4
const/4 v4, 0x3
const/4 v3, 0x5
new-array v0, v1, [I
fill-array-data v0, :array_6e
sput-object v0, Lcom/google/zxing/e/h;->b:[I
new-array v0, v5, [I
fill-array-data v0, :array_86
sput-object v0, Lcom/google/zxing/e/h;->d:[I
new-array v0, v4, [I
fill-array-data v0, :array_92
sput-object v0, Lcom/google/zxing/e/h;->e:[I
new-array v0, v1, [[I
const/4 v1, 0x0
new-array v2, v3, [I
fill-array-data v2, :array_9c
aput-object v2, v0, v1
const/4 v1, 0x1
new-array v2, v3, [I
fill-array-data v2, :array_aa
aput-object v2, v0, v1
const/4 v1, 0x2
new-array v2, v3, [I
fill-array-data v2, :array_b8
aput-object v2, v0, v1
new-array v1, v3, [I
fill-array-data v1, :array_c6
aput-object v1, v0, v4
new-array v1, v3, [I
fill-array-data v1, :array_d4
aput-object v1, v0, v5
new-array v1, v3, [I
fill-array-data v1, :array_e2
aput-object v1, v0, v3
const/4 v1, 0x6
new-array v2, v3, [I
fill-array-data v2, :array_f0
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [I
fill-array-data v2, :array_fe
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v3, [I
fill-array-data v2, :array_10c
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v3, [I
fill-array-data v2, :array_11a
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/e/h;->a:[[I
return-void
:array_86
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_92
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_b8
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_fe
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_c6
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_e2
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_11a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_10c
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_9c
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_f0
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_d4
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_aa
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_6e
.array-data 0x4
0x2ct 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/zxing/e/h;->c:I
return-void
.end method
.method private static a(Lcom/google/zxing/b/a;)I
.registers 3
iget v0, p0, Lcom/google/zxing/b/a;->b:I
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/google/zxing/b/a;->c(I)I
move-result v1
if-ne v1, v0, :cond_e
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_e
return v1
.end method
.method private static a([I)I
.registers 7
const/16 v3, 0x6b
const/4 v0, -0x1
sget-object v1, Lcom/google/zxing/e/h;->a:[[I
array-length v4, v1
const/4 v1, 0x0
:goto_7
if-ge v1, v4, :cond_1a
sget-object v2, Lcom/google/zxing/e/h;->a:[[I
aget-object v2, v2, v1
const/16 v5, 0xcc
invoke-static {p0, v2, v5}, Lcom/google/zxing/e/h;->a([I[II)I
move-result v2
if-ge v2, v3, :cond_22
move v0, v1
:goto_16
add-int/lit8 v1, v1, 0x1
move v3, v2
goto :goto_7
:cond_1a
if-ltz v0, :cond_1d
return v0
:cond_1d
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_22
move v2, v3
goto :goto_16
.end method
.method private a(Lcom/google/zxing/b/a;I)V
.registers 6
iget v0, p0, Lcom/google/zxing/e/h;->c:I
mul-int/lit8 v0, v0, 0xa
add-int/lit8 v1, p2, -0x1
:goto_6
if-lez v0, :cond_15
if-ltz v1, :cond_15
invoke-virtual {p1, v1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-nez v2, :cond_15
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v1, -0x1
goto :goto_6
:cond_15
if-eqz v0, :cond_1c
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_1c
return-void
.end method
.method private static a(Lcom/google/zxing/b/a;IILjava/lang/StringBuilder;)V
.registers 14
const/16 v9, 0xa
const/4 v1, 0x0
const/4 v8, 0x5
new-array v3, v9, [I
new-array v4, v8, [I
new-array v5, v8, [I
move v0, p1
:goto_b
if-ge v0, p2, :cond_42
invoke-static {p0, v0, v3}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;I[I)V
move v2, v1
:goto_11
if-ge v2, v8, :cond_22
shl-int/lit8 v6, v2, 0x1
aget v7, v3, v6
aput v7, v4, v2
add-int/lit8 v6, v6, 0x1
aget v6, v3, v6
aput v6, v5, v2
add-int/lit8 v2, v2, 0x1
goto :goto_11
:cond_22
invoke-static {v4}, Lcom/google/zxing/e/h;->a([I)I
move-result v2
add-int/lit8 v2, v2, 0x30
int-to-char v2, v2
invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {v5}, Lcom/google/zxing/e/h;->a([I)I
move-result v2
add-int/lit8 v2, v2, 0x30
int-to-char v2, v2
invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v0
move v0, v1
:goto_38
if-ge v0, v9, :cond_40
aget v6, v3, v0
add-int/2addr v2, v6
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_40
move v0, v2
goto :goto_b
:cond_42
return-void
.end method
.method private b(Lcom/google/zxing/b/a;)[I
.registers 7
invoke-virtual {p1}, Lcom/google/zxing/b/a;->b()V
:try_start_3
invoke-static {p1}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;)I
move-result v0
sget-object v1, Lcom/google/zxing/e/h;->e:[I
invoke-static {p1, v0, v1}, Lcom/google/zxing/e/h;->c(Lcom/google/zxing/b/a;I[I)[I
move-result-object v0
const/4 v1, 0x0
aget v1, v0, v1
invoke-direct {p0, p1, v1}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;I)V
const/4 v1, 0x0
aget v1, v0, v1
const/4 v2, 0x0
iget v3, p1, Lcom/google/zxing/b/a;->b:I
const/4 v4, 0x1
aget v4, v0, v4
sub-int/2addr v3, v4
aput v3, v0, v2
const/4 v2, 0x1
iget v3, p1, Lcom/google/zxing/b/a;->b:I
sub-int v1, v3, v1
aput v1, v0, v2
:try_end_26
.catchall {:try_start_3 .. :try_end_26} :catchall_2a
invoke-virtual {p1}, Lcom/google/zxing/b/a;->b()V
return-object v0
:catchall_2a
move-exception v0
invoke-virtual {p1}, Lcom/google/zxing/b/a;->b()V
throw v0
.end method
.method private static c(Lcom/google/zxing/b/a;I[I)[I
.registers 14
const/4 v10, 0x2
const/4 v3, 0x1
const/4 v4, 0x0
array-length v5, p2
new-array v6, v5, [I
iget v7, p0, Lcom/google/zxing/b/a;->b:I
move v0, p1
move v1, v4
move v2, v4
:goto_b
if-ge p1, v7, :cond_52
invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v8
xor-int/2addr v8, v2
if-eqz v8, :cond_1d
aget v8, v6, v1
add-int/lit8 v8, v8, 0x1
aput v8, v6, v1
:goto_1a
add-int/lit8 p1, p1, 0x1
goto :goto_b
:cond_1d
add-int/lit8 v8, v5, -0x1
if-ne v1, v8, :cond_4d
const/16 v8, 0xcc
invoke-static {v6, p2, v8}, Lcom/google/zxing/e/h;->a([I[II)I
move-result v8
const/16 v9, 0x6b
if-ge v8, v9, :cond_32
new-array v1, v10, [I
aput v0, v1, v4
aput p1, v1, v3
return-object v1
:cond_32
aget v8, v6, v4
aget v9, v6, v3
add-int/2addr v8, v9
add-int/2addr v0, v8
add-int/lit8 v8, v5, -0x2
invoke-static {v6, v10, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v8, v5, -0x2
aput v4, v6, v8
add-int/lit8 v8, v5, -0x1
aput v4, v6, v8
add-int/lit8 v1, v1, -0x1
:goto_47
aput v3, v6, v1
if-nez v2, :cond_50
move v2, v3
goto :goto_1a
:cond_4d
add-int/lit8 v1, v1, 0x1
goto :goto_47
:cond_50
move v2, v4
goto :goto_1a
:cond_52
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 15
const/4 v4, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p2}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;)I
move-result v0
sget-object v3, Lcom/google/zxing/e/h;->d:[I
invoke-static {p2, v0, v3}, Lcom/google/zxing/e/h;->c(Lcom/google/zxing/b/a;I[I)[I
move-result-object v5
aget v0, v5, v1
aget v3, v5, v2
sub-int/2addr v0, v3
shr-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/google/zxing/e/h;->c:I
aget v0, v5, v2
invoke-direct {p0, p2, v0}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;I)V
invoke-direct {p0, p2}, Lcom/google/zxing/e/h;->b(Lcom/google/zxing/b/a;)[I
move-result-object v6
new-instance v0, Ljava/lang/StringBuilder;
const/16 v3, 0x14
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V
aget v3, v5, v1
aget v7, v6, v2
invoke-static {p2, v3, v7, v0}, Lcom/google/zxing/e/h;->a(Lcom/google/zxing/b/a;IILjava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
if-eqz p3, :cond_7b
sget-object v0, Lcom/google/zxing/e;->f:Lcom/google/zxing/e;
invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
check-cast v0, [I
:goto_3d
if-nez v0, :cond_41
sget-object v0, Lcom/google/zxing/e/h;->b:[I
:cond_41
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v8
array-length v9, v0
move v3, v2
:goto_47
if-ge v3, v9, :cond_79
aget v10, v0, v3
if-ne v8, v10, :cond_55
move v0, v1
:goto_4e
if-nez v0, :cond_58
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_55
add-int/lit8 v3, v3, 0x1
goto :goto_47
:cond_58
new-instance v0, Lcom/google/zxing/m;
const/4 v3, 0x2
new-array v3, v3, [Lcom/google/zxing/o;
new-instance v8, Lcom/google/zxing/o;
aget v5, v5, v1
int-to-float v5, v5
int-to-float v9, p1
invoke-direct {v8, v5, v9}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v8, v3, v2
new-instance v5, Lcom/google/zxing/o;
aget v2, v6, v2
int-to-float v2, v2
int-to-float v6, p1
invoke-direct {v5, v2, v6}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v5, v3, v1
sget-object v1, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;
invoke-direct {v0, v7, v4, v3, v1}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
return-object v0
:cond_79
move v0, v2
goto :goto_4e
:cond_7b
move-object v0, v4
goto :goto_3d
.end method