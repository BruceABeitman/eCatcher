.class public final Lcom/google/zxing/e/d;
.super Lcom/google/zxing/e/k;
.source "Code93Reader.java"
.field private static final a:[C
.field private static final b:[I
.field private static final c:I
.method static constructor <clinit>()V
.registers 2
const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/google/zxing/e/d;->a:[C
const/16 v0, 0x30
new-array v0, v0, [I
fill-array-data v0, :array_18
sput-object v0, Lcom/google/zxing/e/d;->b:[I
const/16 v1, 0x2f
aget v0, v0, v1
sput v0, Lcom/google/zxing/e/d;->c:I
return-void
:array_18
.array-data 0x4
0x14t 0x1t 0x0t 0x0t
0x48t 0x1t 0x0t 0x0t
0x44t 0x1t 0x0t 0x0t
0x42t 0x1t 0x0t 0x0t
0x28t 0x1t 0x0t 0x0t
0x24t 0x1t 0x0t 0x0t
0x22t 0x1t 0x0t 0x0t
0x50t 0x1t 0x0t 0x0t
0x12t 0x1t 0x0t 0x0t
0xat 0x1t 0x0t 0x0t
0xa8t 0x1t 0x0t 0x0t
0xa4t 0x1t 0x0t 0x0t
0xa2t 0x1t 0x0t 0x0t
0x94t 0x1t 0x0t 0x0t
0x92t 0x1t 0x0t 0x0t
0x8at 0x1t 0x0t 0x0t
0x68t 0x1t 0x0t 0x0t
0x64t 0x1t 0x0t 0x0t
0x62t 0x1t 0x0t 0x0t
0x34t 0x1t 0x0t 0x0t
0x1at 0x1t 0x0t 0x0t
0x58t 0x1t 0x0t 0x0t
0x4ct 0x1t 0x0t 0x0t
0x46t 0x1t 0x0t 0x0t
0x2ct 0x1t 0x0t 0x0t
0x16t 0x1t 0x0t 0x0t
0xb4t 0x1t 0x0t 0x0t
0xb2t 0x1t 0x0t 0x0t
0xact 0x1t 0x0t 0x0t
0xa6t 0x1t 0x0t 0x0t
0x96t 0x1t 0x0t 0x0t
0x9at 0x1t 0x0t 0x0t
0x6ct 0x1t 0x0t 0x0t
0x66t 0x1t 0x0t 0x0t
0x36t 0x1t 0x0t 0x0t
0x3at 0x1t 0x0t 0x0t
0x2et 0x1t 0x0t 0x0t
0xd4t 0x1t 0x0t 0x0t
0xd2t 0x1t 0x0t 0x0t
0xcat 0x1t 0x0t 0x0t
0x6et 0x1t 0x0t 0x0t
0x76t 0x1t 0x0t 0x0t
0xaet 0x1t 0x0t 0x0t
0x26t 0x1t 0x0t 0x0t
0xdat 0x1t 0x0t 0x0t
0xd6t 0x1t 0x0t 0x0t
0x32t 0x1t 0x0t 0x0t
0x5et 0x1t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
return-void
.end method
.method private static a(I)C
.registers 3
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/google/zxing/e/d;->b:[I
array-length v1, v1
if-ge v0, v1, :cond_14
sget-object v1, Lcom/google/zxing/e/d;->b:[I
aget v1, v1, v0
if-ne v1, p0, :cond_11
sget-object v1, Lcom/google/zxing/e/d;->a:[C
aget-char v0, v1, v0
return v0
:cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method private static a([I)I
.registers 9
const/4 v7, 0x6
const/4 v2, 0x0
move v0, v2
move v6, v2
:goto_4
if-ge v0, v7, :cond_d
aget v1, p0, v0
add-int/2addr v1, v6
add-int/lit8 v0, v0, 0x1
move v6, v1
goto :goto_4
:cond_d
move v5, v2
move v0, v2
:goto_f
if-ge v5, v7, :cond_2a
aget v1, p0, v5
shl-int/lit8 v1, v1, 0x8
mul-int/lit8 v1, v1, 0x9
div-int v3, v1, v6
shr-int/lit8 v1, v3, 0x8
and-int/lit16 v3, v3, 0xff
const/16 v4, 0x7f
if-le v3, v4, :cond_40
add-int/lit8 v1, v1, 0x1
move v4, v1
:goto_24
if-lez v4, :cond_29
const/4 v1, 0x4
if-le v4, v1, :cond_2b
:cond_29
const/4 v0, -0x1
:cond_2a
return v0
:cond_2b
and-int/lit8 v1, v5, 0x1
if-nez v1, :cond_3b
move v1, v2
:goto_30
if-ge v1, v4, :cond_3c
shl-int/lit8 v0, v0, 0x1
or-int/lit8 v3, v0, 0x1
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v3
goto :goto_30
:cond_3b
shl-int/2addr v0, v4
:cond_3c
add-int/lit8 v1, v5, 0x1
move v5, v1
goto :goto_f
:cond_40
move v4, v1
goto :goto_24
.end method
.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
.registers 9
const/4 v1, 0x0
const/16 v7, 0x5a
const/16 v6, 0x41
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V
move v2, v1
:goto_f
if-ge v2, v3, :cond_86
invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const/16 v5, 0x61
if-lt v0, v5, :cond_81
const/16 v5, 0x64
if-gt v0, v5, :cond_81
add-int/lit8 v5, v3, -0x1
if-lt v2, v5, :cond_26
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_26
add-int/lit8 v5, v2, 0x1
invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
packed-switch v0, :pswitch_data_8c
move v0, v1
:goto_30
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v2, 0x1
:goto_35
add-int/lit8 v2, v0, 0x1
goto :goto_f
:pswitch_38
if-lt v5, v6, :cond_40
if-gt v5, v7, :cond_40
add-int/lit8 v0, v5, 0x20
int-to-char v0, v0
goto :goto_30
:cond_40
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_45
if-lt v5, v6, :cond_4d
if-gt v5, v7, :cond_4d
add-int/lit8 v0, v5, -0x40
int-to-char v0, v0
goto :goto_30
:cond_4d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_52
if-lt v5, v6, :cond_5c
const/16 v0, 0x45
if-gt v5, v0, :cond_5c
add-int/lit8 v0, v5, -0x26
int-to-char v0, v0
goto :goto_30
:cond_5c
const/16 v0, 0x46
if-lt v5, v0, :cond_68
const/16 v0, 0x57
if-gt v5, v0, :cond_68
add-int/lit8 v0, v5, -0xb
int-to-char v0, v0
goto :goto_30
:cond_68
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_6d
if-lt v5, v6, :cond_77
const/16 v0, 0x4f
if-gt v5, v0, :cond_77
add-int/lit8 v0, v5, -0x20
int-to-char v0, v0
goto :goto_30
:cond_77
if-ne v5, v7, :cond_7c
const/16 v0, 0x3a
goto :goto_30
:cond_7c
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_81
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v2
goto :goto_35
:cond_86
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
nop
:pswitch_data_8c
.packed-switch 0x61
:pswitch_45
:pswitch_52
:pswitch_6d
:pswitch_38
.end packed-switch
.end method
.method private static a(Ljava/lang/CharSequence;II)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
add-int/lit8 v0, p1, -0x1
move v4, v1
move v6, v2
move v2, v0
move v0, v6
:goto_8
if-ltz v2, :cond_20
const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"
invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I
move-result v3
mul-int/2addr v3, v4
add-int/2addr v3, v0
add-int/lit8 v0, v4, 0x1
if-le v0, p2, :cond_1b
move v0, v1
:cond_1b
add-int/lit8 v2, v2, -0x1
move v4, v0
move v0, v3
goto :goto_8
:cond_20
invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
sget-object v2, Lcom/google/zxing/e/d;->a:[C
rem-int/lit8 v0, v0, 0x2f
aget-char v0, v2, v0
if-eq v1, v0, :cond_31
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v0
throw v0
:cond_31
return-void
.end method
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 13
iget v4, p2, Lcom/google/zxing/b/a;->b:I
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->c(I)I
move-result v0
const/4 v1, 0x0
const/4 v2, 0x6
new-array v5, v2, [I
const/4 v2, 0x0
move v3, v0
:goto_d
if-ge v3, v4, :cond_78
invoke-virtual {p2, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v6
xor-int/2addr v6, v2
if-eqz v6, :cond_1f
aget v6, v5, v1
add-int/lit8 v6, v6, 0x1
aput v6, v5, v1
:goto_1c
add-int/lit8 v3, v3, 0x1
goto :goto_d
:cond_1f
const/4 v6, 0x5
if-ne v1, v6, :cond_73
invoke-static {v5}, Lcom/google/zxing/e/d;->a([I)I
move-result v6
sget v7, Lcom/google/zxing/e/d;->c:I
if-ne v6, v7, :cond_54
const/4 v1, 0x2
new-array v4, v1, [I
const/4 v1, 0x0
aput v0, v4, v1
const/4 v0, 0x1
aput v3, v4, v0
const/4 v0, 0x1
aget v0, v4, v0
invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->c(I)I
move-result v0
iget v3, p2, Lcom/google/zxing/b/a;->b:I
new-instance v5, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v1, 0x6
new-array v6, v1, [I
:goto_46
invoke-static {p2, v0, v6}, Lcom/google/zxing/e/d;->a(Lcom/google/zxing/b/a;I[I)V
invoke-static {v6}, Lcom/google/zxing/e/d;->a([I)I
move-result v1
if-gez v1, :cond_7d
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_54
const/4 v6, 0x0
aget v6, v5, v6
const/4 v7, 0x1
aget v7, v5, v7
add-int/2addr v6, v7
add-int/2addr v0, v6
const/4 v6, 0x2
const/4 v7, 0x0
const/4 v8, 0x4
invoke-static {v5, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v6, 0x4
const/4 v7, 0x0
aput v7, v5, v6
const/4 v6, 0x5
const/4 v7, 0x0
aput v7, v5, v6
add-int/lit8 v1, v1, -0x1
:goto_6c
const/4 v6, 0x1
aput v6, v5, v1
if-nez v2, :cond_76
const/4 v2, 0x1
goto :goto_1c
:cond_73
add-int/lit8 v1, v1, 0x1
goto :goto_6c
:cond_76
const/4 v2, 0x0
goto :goto_1c
:cond_78
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_7d
invoke-static {v1}, Lcom/google/zxing/e/d;->a(I)C
move-result v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v1, 0x0
move v2, v0
:goto_86
const/4 v8, 0x6
if-ge v1, v8, :cond_8f
aget v8, v6, v1
add-int/2addr v2, v8
add-int/lit8 v1, v1, 0x1
goto :goto_86
:cond_8f
invoke-virtual {p2, v2}, Lcom/google/zxing/b/a;->c(I)I
move-result v1
const/16 v2, 0x2a
if-ne v7, v2, :cond_106
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
if-eq v1, v3, :cond_a8
invoke-virtual {p2, v1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-nez v2, :cond_ad
:cond_a8
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_ad
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v2
const/4 v3, 0x2
if-ge v2, v3, :cond_b9
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_b9
invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
move-result v2
add-int/lit8 v3, v2, -0x2
const/16 v6, 0x14
invoke-static {v5, v3, v6}, Lcom/google/zxing/e/d;->a(Ljava/lang/CharSequence;II)V
add-int/lit8 v2, v2, -0x1
const/16 v3, 0xf
invoke-static {v5, v2, v3}, Lcom/google/zxing/e/d;->a(Ljava/lang/CharSequence;II)V
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v2
add-int/lit8 v2, v2, -0x2
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V
invoke-static {v5}, Lcom/google/zxing/e/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
aget v3, v4, v3
const/4 v5, 0x0
aget v4, v4, v5
add-int/2addr v3, v4
int-to-float v3, v3
const/high16 v4, 0x4000
div-float/2addr v3, v4
add-int/2addr v0, v1
int-to-float v0, v0
const/high16 v1, 0x4000
div-float/2addr v0, v1
new-instance v1, Lcom/google/zxing/m;
const/4 v4, 0x0
const/4 v5, 0x2
new-array v5, v5, [Lcom/google/zxing/o;
const/4 v6, 0x0
new-instance v7, Lcom/google/zxing/o;
int-to-float v8, p1
invoke-direct {v7, v3, v8}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v7, v5, v6
const/4 v3, 0x1
new-instance v6, Lcom/google/zxing/o;
int-to-float v7, p1
invoke-direct {v6, v0, v7}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v6, v5, v3
sget-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;
invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
return-object v1
:cond_106
move v0, v1
goto/16 :goto_46
.end method