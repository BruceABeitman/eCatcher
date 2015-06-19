.class public final Lcom/spotify/mobile/android/util/soft/SoftObject;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:Z
.field private h:[I
.field private i:[I
.field private j:[I
.field private k:[Lcom/spotify/mobile/android/util/soft/SoftObject;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/util/soft/SoftObject;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->b:I
invoke-direct {p0, p2, v1, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(IIZ)I
return-void
.end method
.method private a(IIZ)I
.registers 12
const/16 v4, 0x2d
const/16 v7, 0x39
const/16 v6, 0x30
const/4 v0, 0x0
const/4 v5, 0x1
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->j(I)I
move-result v1
sparse-switch v1, :sswitch_data_17e
new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;
const-string v1, "invalid or broken soft object"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_17
add-int/lit8 v1, p1, 0x1
if-eqz p3, :cond_29
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v2, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v1, v2, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v0, v2, p2
move v0, v1
:goto_28
return v0
:cond_29
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
iput v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
move v0, v1
goto :goto_28
:sswitch_33
add-int/lit8 v1, p1, 0x1
add-int/lit8 v0, v1, 0x1
if-eqz p3, :cond_46
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v2, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v1, v2, p2
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v5, v1, p2
goto :goto_28
:cond_46
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
iput v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
goto :goto_28
:sswitch_4f
add-int/lit8 v2, p1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
move v1, v0
move v0, v2
:goto_59
if-lt v1, v6, :cond_5d
if-le v1, v7, :cond_5f
:cond_5d
if-ne v1, v4, :cond_6c
:cond_5f
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->b:I
if-ge v0, v1, :cond_6c
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
goto :goto_59
:cond_6c
sub-int v1, v0, v2
if-eqz p3, :cond_7d
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v3, p2
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v2, v3, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v1, v2, p2
goto :goto_28
:cond_7d
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
iput v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
goto :goto_28
:sswitch_86
add-int/lit8 v2, p1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
move v1, v0
move v0, v2
:goto_90
if-lt v1, v6, :cond_94
if-le v1, v7, :cond_9a
:cond_94
if-eq v1, v4, :cond_9a
const/16 v3, 0x2e
if-ne v1, v3, :cond_a7
:cond_9a
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->b:I
if-ge v0, v1, :cond_a7
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
goto :goto_90
:cond_a7
sub-int v1, v0, v2
if-eqz p3, :cond_b9
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v3, p2
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v2, v3, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v1, v2, p2
goto/16 :goto_28
:cond_b9
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
iput v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
goto/16 :goto_28
:sswitch_c3
add-int/lit8 v1, p1, 0x1
:goto_c5
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
add-int/lit8 v2, v1, 0x1
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
if-lt v1, v6, :cond_da
if-gt v1, v7, :cond_da
mul-int/lit8 v0, v0, 0xa
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x30
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->b:I
if-lt v2, v1, :cond_17a
:cond_da
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Ljava/lang/String;->offsetByCodePoints(II)I
move-result v0
sub-int v1, v0, v2
add-int v0, v2, v1
if-eqz p3, :cond_f4
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v3, p2
iget-object v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v2, v3, p2
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v1, v2, p2
goto/16 :goto_28
:cond_f4
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
iput v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
goto/16 :goto_28
:sswitch_fe
add-int/lit8 v1, p1, 0x1
move v2, v1
move v1, v0
:goto_102
iget-object v4, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
add-int/lit8 v3, v2, 0x1
invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-lt v2, v6, :cond_117
if-gt v2, v7, :cond_117
mul-int/lit8 v1, v1, 0xa
add-int/2addr v1, v2
add-int/lit8 v1, v1, -0x30
iget v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->b:I
if-lt v3, v2, :cond_178
:cond_117
move v4, v1
if-eqz p3, :cond_13a
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aput p1, v0, p2
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aput v3, v0, p2
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->k:[Lcom/spotify/mobile/android/util/soft/SoftObject;
new-instance v1, Lcom/spotify/mobile/android/util/soft/SoftObject;
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-direct {v1, v2, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;-><init>(Ljava/lang/String;I)V
aput-object v1, v0, p2
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->k:[Lcom/spotify/mobile/android/util/soft/SoftObject;
aget-object v0, v0, p2
iget v0, v0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
add-int/2addr v0, v3
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aput v0, v1, p2
goto/16 :goto_28
:cond_13a
iput p1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
iput v3, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iput v4, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
iput-boolean v5, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
if-eqz v1, :cond_14d
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
array-length v1, v1
iget v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
if-ge v1, v2, :cond_15d
:cond_14d
new-array v1, v4, [I
iput-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
new-array v1, v4, [I
iput-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
new-array v1, v4, [I
iput-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
new-array v1, v4, [Lcom/spotify/mobile/android/util/soft/SoftObject;
iput-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->k:[Lcom/spotify/mobile/android/util/soft/SoftObject;
:cond_15d
move v1, v0
move v0, v3
:goto_15f
if-ge v1, v4, :cond_16a
invoke-direct {p0, v0, v1, v5}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(IIZ)I
move-result v2
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v2
goto :goto_15f
:cond_16a
sub-int v1, v0, v3
iput v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
goto/16 :goto_28
:sswitch_170
new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;
const-string v1, "dictionaries are not supported yet"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_178
move v2, v3
goto :goto_102
:cond_17a
move v1, v2
goto/16 :goto_c5
nop
:sswitch_data_17e
.sparse-switch
0x21 -> :sswitch_33
0x23 -> :sswitch_4f
0x28 -> :sswitch_c3
0x40 -> :sswitch_17
0x5b -> :sswitch_fe
0x7b -> :sswitch_170
0x7e -> :sswitch_86
.end sparse-switch
.end method
.method private f(I)Z
.registers 4
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iget-boolean v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v1, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aget v0, v0, p1
:cond_a
iget-object v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x31
if-ne v0, v1, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private g(I)J
.registers 13
const-wide/16 v6, 0xa
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
add-int/2addr v0, v1
iget-boolean v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v2, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aget v1, v0, p1
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aget v0, v0, p1
add-int/2addr v0, v1
:cond_14
const-wide/16 v2, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x2d
if-ne v4, v5, :cond_3c
const/4 v4, 0x1
:goto_21
if-eqz v4, :cond_54
add-int/lit8 v1, v1, 0x1
move v8, v1
move-wide v9, v2
move-wide v1, v9
move v3, v8
:goto_29
if-ge v3, v0, :cond_52
mul-long/2addr v1, v6
iget-object v4, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C
move-result v4
add-int/lit8 v4, v4, -0x30
int-to-long v4, v4
sub-long v4, v1, v4
add-int/lit8 v1, v3, 0x1
move v3, v1
move-wide v1, v4
goto :goto_29
:cond_3c
const/4 v4, 0x0
goto :goto_21
:goto_3e
if-ge v3, v0, :cond_52
mul-long/2addr v1, v6
iget-object v4, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C
move-result v4
int-to-long v4, v4
add-long/2addr v1, v4
const-wide/16 v4, 0x30
sub-long v4, v1, v4
add-int/lit8 v1, v3, 0x1
move v3, v1
move-wide v1, v4
goto :goto_3e
:cond_52
move-wide v0, v1
return-wide v0
:cond_54
move v8, v1
move-wide v9, v2
move-wide v1, v9
move v3, v8
goto :goto_3e
.end method
.method private h(I)D
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aget v1, v0, p1
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aget v0, v0, p1
add-int/2addr v0, v1
:goto_d
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
return-wide v0
:cond_18
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
add-int/2addr v0, v1
goto :goto_d
.end method
.method private i(I)Ljava/lang/String;
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->i:[I
aget v1, v0, p1
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->j:[I
aget v0, v0, p1
add-int/2addr v0, v1
:goto_d
iget-object v2, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_14
iget v1, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->e:I
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->f:I
add-int/2addr v0, v1
goto :goto_d
.end method
.method private j(I)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->a:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
return v0
.end method
.method public final a(I)I
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->h:[I
aget v0, v0, p1
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/soft/SoftObject;->j(I)I
move-result v0
:goto_c
return v0
:cond_d
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->d:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/soft/SoftObject;->j(I)I
move-result v0
goto :goto_c
.end method
.method public final b(I)J
.registers 4
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(I)I
move-result v0
sparse-switch v0, :sswitch_data_32
new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;
const-string v1, "can\'t get as number"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_f
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->f(I)Z
move-result v0
if-eqz v0, :cond_18
const-wide/16 v0, 0x1
:goto_17
return-wide v0
:cond_18
const-wide/16 v0, 0x0
goto :goto_17
:sswitch_1b
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->g(I)J
move-result-wide v0
goto :goto_17
:sswitch_20
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->h(I)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
goto :goto_17
:sswitch_29
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->i(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_17
:sswitch_data_32
.sparse-switch
0x21 -> :sswitch_f
0x23 -> :sswitch_1b
0x28 -> :sswitch_29
0x7e -> :sswitch_20
.end sparse-switch
.end method
.method public final c(I)D
.registers 4
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(I)I
move-result v0
sparse-switch v0, :sswitch_data_30
new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;
const-string v1, "can\'t get as float"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_f
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->f(I)Z
move-result v0
if-eqz v0, :cond_18
const-wide/high16 v0, 0x3ff0
:goto_17
return-wide v0
:cond_18
const-wide/16 v0, 0x0
goto :goto_17
:sswitch_1b
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->g(I)J
move-result-wide v0
long-to-double v0, v0
goto :goto_17
:sswitch_21
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->h(I)D
move-result-wide v0
goto :goto_17
:sswitch_26
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->i(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
goto :goto_17
nop
:sswitch_data_30
.sparse-switch
0x21 -> :sswitch_f
0x23 -> :sswitch_1b
0x28 -> :sswitch_26
0x7e -> :sswitch_21
.end sparse-switch
.end method
.method public final d(I)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(I)I
move-result v0
sparse-switch v0, :sswitch_data_2e
new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;
const-string v1, "can\'t get as string"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/soft/SoftObject$InvalidTypeException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_f
const-string v0, "null"
:goto_11
return-object v0
:sswitch_12
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->f(I)Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "true"
goto :goto_11
:cond_1b
const-string v0, "false"
goto :goto_11
:sswitch_1e
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->i(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:sswitch_23
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->i(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:sswitch_28
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->i(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
nop
:sswitch_data_2e
.sparse-switch
0x21 -> :sswitch_12
0x23 -> :sswitch_1e
0x28 -> :sswitch_28
0x40 -> :sswitch_f
0x7e -> :sswitch_23
.end sparse-switch
.end method
.method public final e(I)Lcom/spotify/mobile/android/util/soft/SoftObject;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->g:Z
if-eqz v0, :cond_8
iget v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->c:I
if-lt p1, v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/util/soft/SoftObject;->k:[Lcom/spotify/mobile/android/util/soft/SoftObject;
aget-object v0, v0, p1
goto :goto_9
.end method