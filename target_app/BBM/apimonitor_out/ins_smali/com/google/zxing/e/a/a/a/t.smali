.class public final Lcom/google/zxing/e/a/a/a/t;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"
.field private final a:Lcom/google/zxing/b/a;
.field private final b:Lcom/google/zxing/e/a/a/a/m;
.field private final c:Ljava/lang/StringBuilder;
.method constructor <init>(Lcom/google/zxing/b/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/e/a/a/a/m;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/a/m;-><init>()V
iput-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
iput-object p1, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
return-void
.end method
.method public static a(Lcom/google/zxing/b/a;II)I
.registers 7
const/4 v0, 0x0
const/16 v1, 0x20
if-le p2, v1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
move v1, v0
:goto_e
if-ge v1, p2, :cond_22
add-int v2, p1, v1
invoke-virtual {p0, v2}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
sub-int v3, p2, v1
add-int/lit8 v3, v3, -0x1
shl-int/2addr v2, v3
or-int/2addr v0, v2
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_22
return v0
.end method
.method private a()Lcom/google/zxing/e/a/a/a/l;
.registers 9
const/4 v7, 0x4
const/16 v6, 0xa
const/4 v1, 0x0
const/4 v2, 0x1
:goto_5
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v0, v3, 0x7
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v4, v4, Lcom/google/zxing/b/a;->b:I
if-le v0, v4, :cond_62
add-int/lit8 v0, v3, 0x4
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
if-gt v0, v3, :cond_60
move v0, v2
:goto_1a
if-eqz v0, :cond_de
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v0, v3, 0x7
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v4, v4, Lcom/google/zxing/b/a;->b:I
if-le v0, v4, :cond_89
invoke-virtual {p0, v3, v7}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v3
if-nez v3, :cond_7d
new-instance v0, Lcom/google/zxing/e/a/a/a/q;
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
invoke-direct {v0, v3, v6, v6}, Lcom/google/zxing/e/a/a/a/q;-><init>(III)V
:goto_37
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v4, v0, Lcom/google/zxing/e/a/a/a/r;->d:I
iput v4, v3, Lcom/google/zxing/e/a/a/a/m;->a:I
iget v3, v0, Lcom/google/zxing/e/a/a/a/q;->a:I
if-ne v3, v6, :cond_9e
move v3, v2
:goto_42
if-eqz v3, :cond_b3
invoke-virtual {v0}, Lcom/google/zxing/e/a/a/a/q;->a()Z
move-result v1
if-eqz v1, :cond_a0
new-instance v0, Lcom/google/zxing/e/a/a/a/p;
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v1, v1, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;)V
:goto_59
new-instance v1, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v1, v0, v2}, Lcom/google/zxing/e/a/a/a/l;-><init>(Lcom/google/zxing/e/a/a/a/p;Z)V
move-object v0, v1
:goto_5f
return-object v0
:cond_60
move v0, v1
goto :goto_1a
:cond_62
move v0, v3
:goto_63
add-int/lit8 v4, v3, 0x3
if-ge v0, v4, :cond_74
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
invoke-virtual {v4, v0}, Lcom/google/zxing/b/a;->a(I)Z
move-result v4
if-eqz v4, :cond_71
move v0, v2
goto :goto_1a
:cond_71
add-int/lit8 v0, v0, 0x1
goto :goto_63
:cond_74
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
add-int/lit8 v3, v3, 0x3
invoke-virtual {v0, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v0
goto :goto_1a
:cond_7d
new-instance v0, Lcom/google/zxing/e/a/a/a/q;
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v4, v4, Lcom/google/zxing/b/a;->b:I
add-int/lit8 v3, v3, -0x1
invoke-direct {v0, v4, v3, v6}, Lcom/google/zxing/e/a/a/a/q;-><init>(III)V
goto :goto_37
:cond_89
const/4 v0, 0x7
invoke-virtual {p0, v3, v0}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v0
add-int/lit8 v4, v0, -0x8
div-int/lit8 v4, v4, 0xb
add-int/lit8 v0, v0, -0x8
rem-int/lit8 v5, v0, 0xb
new-instance v0, Lcom/google/zxing/e/a/a/a/q;
add-int/lit8 v3, v3, 0x7
invoke-direct {v0, v3, v4, v5}, Lcom/google/zxing/e/a/a/a/q;-><init>(III)V
goto :goto_37
:cond_9e
move v3, v1
goto :goto_42
:cond_a0
new-instance v1, Lcom/google/zxing/e/a/a/a/p;
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v3, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget v0, v0, Lcom/google/zxing/e/a/a/a/q;->b:I
invoke-direct {v1, v3, v4, v0}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;I)V
move-object v0, v1
goto :goto_59
:cond_b3
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
iget v4, v0, Lcom/google/zxing/e/a/a/a/q;->a:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/google/zxing/e/a/a/a/q;->a()Z
move-result v3
if-eqz v3, :cond_d5
new-instance v1, Lcom/google/zxing/e/a/a/a/p;
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v0, v3}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;)V
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/a/a/a/l;-><init>(Lcom/google/zxing/e/a/a/a/p;Z)V
goto :goto_5f
:cond_d5
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
iget v0, v0, Lcom/google/zxing/e/a/a/a/q;->b:I
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_5
:cond_de
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v0, v3, 0x1
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v4, v4, Lcom/google/zxing/b/a;->b:I
if-le v0, v4, :cond_ff
move v0, v1
:goto_eb
if-eqz v0, :cond_f8
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->b:Lcom/google/zxing/e/a/a/a/n;
iput-object v1, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
invoke-virtual {v0, v7}, Lcom/google/zxing/e/a/a/a/m;->a(I)V
:cond_f8
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/a/l;-><init>()V
goto/16 :goto_5f
:cond_ff
move v0, v1
:goto_100
if-ge v0, v7, :cond_119
add-int v4, v0, v3
iget-object v5, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v5, v5, Lcom/google/zxing/b/a;->b:I
if-ge v4, v5, :cond_119
iget-object v4, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
add-int v5, v3, v0
invoke-virtual {v4, v5}, Lcom/google/zxing/b/a;->a(I)Z
move-result v4
if-eqz v4, :cond_116
move v0, v1
goto :goto_eb
:cond_116
add-int/lit8 v0, v0, 0x1
goto :goto_100
:cond_119
move v0, v2
goto :goto_eb
.end method
.method private a(I)Z
.registers 6
const/4 v0, 0x0
add-int/lit8 v1, p1, 0x1
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v2, v2, Lcom/google/zxing/b/a;->b:I
if-le v1, v2, :cond_a
:goto_9
:cond_9
return v0
:cond_a
move v1, v0
:goto_b
const/4 v2, 0x5
if-ge v1, v2, :cond_31
add-int v2, v1, p1
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
if-ge v2, v3, :cond_31
const/4 v2, 0x2
if-ne v1, v2, :cond_26
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
add-int/lit8 v3, p1, 0x2
invoke-virtual {v2, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-eqz v2, :cond_9
:cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_26
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
add-int v3, p1, v1
invoke-virtual {v2, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-eqz v2, :cond_23
goto :goto_9
:cond_31
const/4 v0, 0x1
goto :goto_9
.end method
.method private b()Lcom/google/zxing/e/a/a/a/l;
.registers 9
const/16 v7, 0xf
const/16 v6, 0x8
const/4 v5, 0x7
const/4 v2, 0x1
const/4 v4, 0x5
:goto_7
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v1, v0, 0x5
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
if-gt v1, v3, :cond_80
invoke-virtual {p0, v0, v4}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
if-lt v1, v4, :cond_54
const/16 v3, 0x10
if-ge v1, v3, :cond_54
move v0, v2
:goto_1e
if-eqz v0, :cond_12b
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-virtual {p0, v3, v4}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
if-ne v1, v7, :cond_82
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v1, v3, 0x5
const/16 v3, 0x24
invoke-direct {v0, v1, v3}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
:goto_33
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v3, v0, Lcom/google/zxing/e/a/a/a/r;->d:I
iput v3, v1, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-virtual {v0}, Lcom/google/zxing/e/a/a/a/o;->a()Z
move-result v1
if-eqz v1, :cond_122
new-instance v1, Lcom/google/zxing/e/a/a/a/p;
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v0, v3}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;)V
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/a/a/a/l;-><init>(Lcom/google/zxing/e/a/a/a/p;Z)V
:goto_53
return-object v0
:cond_54
add-int/lit8 v1, v0, 0x7
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
if-gt v1, v3, :cond_80
invoke-virtual {p0, v0, v5}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
const/16 v3, 0x40
if-lt v1, v3, :cond_6a
const/16 v3, 0x74
if-ge v1, v3, :cond_6a
move v0, v2
goto :goto_1e
:cond_6a
add-int/lit8 v1, v0, 0x8
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v3, v3, Lcom/google/zxing/b/a;->b:I
if-gt v1, v3, :cond_80
invoke-virtual {p0, v0, v6}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v0
const/16 v1, 0xe8
if-lt v0, v1, :cond_80
const/16 v1, 0xfd
if-ge v0, v1, :cond_80
move v0, v2
goto :goto_1e
:cond_80
const/4 v0, 0x0
goto :goto_1e
:cond_82
if-lt v1, v4, :cond_93
if-ge v1, v7, :cond_93
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v3, v3, 0x5
add-int/lit8 v1, v1, 0x30
add-int/lit8 v1, v1, -0x5
int-to-char v1, v1
invoke-direct {v0, v3, v1}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
goto :goto_33
:cond_93
invoke-virtual {p0, v3, v5}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
const/16 v0, 0x40
if-lt v1, v0, :cond_aa
const/16 v0, 0x5a
if-ge v1, v0, :cond_aa
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v3, v3, 0x7
add-int/lit8 v1, v1, 0x1
int-to-char v1, v1
invoke-direct {v0, v3, v1}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
goto :goto_33
:cond_aa
const/16 v0, 0x5a
if-lt v1, v0, :cond_be
const/16 v0, 0x74
if-ge v1, v0, :cond_be
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v3, v3, 0x7
add-int/lit8 v1, v1, 0x7
int-to-char v1, v1
invoke-direct {v0, v3, v1}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
goto/16 :goto_33
:cond_be
invoke-virtual {p0, v3, v6}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v0
packed-switch v0, :pswitch_data_174
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Decoding invalid ISO/IEC 646 value: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_da
const/16 v0, 0x21
:goto_dc
new-instance v1, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v3, v3, 0x8
invoke-direct {v1, v3, v0}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
move-object v0, v1
goto/16 :goto_33
:pswitch_e6
const/16 v0, 0x22
goto :goto_dc
:pswitch_e9
const/16 v0, 0x25
goto :goto_dc
:pswitch_ec
const/16 v0, 0x26
goto :goto_dc
:pswitch_ef
const/16 v0, 0x27
goto :goto_dc
:pswitch_f2
const/16 v0, 0x28
goto :goto_dc
:pswitch_f5
const/16 v0, 0x29
goto :goto_dc
:pswitch_f8
const/16 v0, 0x2a
goto :goto_dc
:pswitch_fb
const/16 v0, 0x2b
goto :goto_dc
:pswitch_fe
const/16 v0, 0x2c
goto :goto_dc
:pswitch_101
const/16 v0, 0x2d
goto :goto_dc
:pswitch_104
const/16 v0, 0x2e
goto :goto_dc
:pswitch_107
const/16 v0, 0x2f
goto :goto_dc
:pswitch_10a
const/16 v0, 0x3a
goto :goto_dc
:pswitch_10d
const/16 v0, 0x3b
goto :goto_dc
:pswitch_110
const/16 v0, 0x3c
goto :goto_dc
:pswitch_113
const/16 v0, 0x3d
goto :goto_dc
:pswitch_116
const/16 v0, 0x3e
goto :goto_dc
:pswitch_119
const/16 v0, 0x3f
goto :goto_dc
:pswitch_11c
const/16 v0, 0x5f
goto :goto_dc
:pswitch_11f
const/16 v0, 0x20
goto :goto_dc
:cond_122
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
iget-char v0, v0, Lcom/google/zxing/e/a/a/a/o;->a:C
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_7
:cond_12b
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-direct {p0, v0}, Lcom/google/zxing/e/a/a/a/t;->b(I)Z
move-result v0
if-eqz v0, :cond_148
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/google/zxing/e/a/a/a/m;->a(I)V
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->a:Lcom/google/zxing/e/a/a/a/n;
iput-object v1, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
:goto_141
:cond_141
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/a/l;-><init>()V
goto/16 :goto_53
:cond_148
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-direct {p0, v0}, Lcom/google/zxing/e/a/a/a/t;->a(I)Z
move-result v0
if-eqz v0, :cond_141
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v0, v0, 0x5
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v1, v1, Lcom/google/zxing/b/a;->b:I
if-ge v0, v1, :cond_16a
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
invoke-virtual {v0, v4}, Lcom/google/zxing/e/a/a/a/m;->a(I)V
:goto_163
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->b:Lcom/google/zxing/e/a/a/a/n;
iput-object v1, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
goto :goto_141
:cond_16a
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v1, v1, Lcom/google/zxing/b/a;->b:I
iput v1, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
goto :goto_163
nop
:pswitch_data_174
.packed-switch 0xe8
:pswitch_da
:pswitch_e6
:pswitch_e9
:pswitch_ec
:pswitch_ef
:pswitch_f2
:pswitch_f5
:pswitch_f8
:pswitch_fb
:pswitch_fe
:pswitch_101
:pswitch_104
:pswitch_107
:pswitch_10a
:pswitch_10d
:pswitch_110
:pswitch_113
:pswitch_116
:pswitch_119
:pswitch_11c
:pswitch_11f
.end packed-switch
.end method
.method private b(I)Z
.registers 5
const/4 v0, 0x0
add-int/lit8 v1, p1, 0x3
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v2, v2, Lcom/google/zxing/b/a;->b:I
if-le v1, v2, :cond_a
:cond_9
:goto_9
return v0
:cond_a
move v1, p1
:goto_b
add-int/lit8 v2, p1, 0x3
if-ge v1, v2, :cond_1a
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
invoke-virtual {v2, v1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-nez v2, :cond_9
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_1a
const/4 v0, 0x1
goto :goto_9
.end method
.method final a(II)I
.registers 4
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
invoke-static {v0, p1, p2}, Lcom/google/zxing/e/a/a/a/t;->a(Lcom/google/zxing/b/a;II)I
move-result v0
return v0
.end method
.method final a(ILjava/lang/String;)Lcom/google/zxing/e/a/a/a/p;
.registers 12
const/16 v8, 0xf
const/4 v7, 0x6
const/4 v6, 0x5
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
if-eqz p2, :cond_12
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_12
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iput p1, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
:cond_16
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v4, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget-object v0, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->b:Lcom/google/zxing/e/a/a/a/n;
if-ne v0, v1, :cond_9a
move v0, v2
:goto_23
if-eqz v0, :cond_15e
:goto_25
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v1, v0, 0x5
iget-object v5, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v5, v5, Lcom/google/zxing/b/a;->b:I
if-gt v1, v5, :cond_b2
invoke-virtual {p0, v0, v6}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
if-lt v1, v6, :cond_9c
const/16 v5, 0x10
if-ge v1, v5, :cond_9c
move v0, v2
:goto_3c
if-eqz v0, :cond_116
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v5, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-virtual {p0, v5, v6}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
if-ne v1, v8, :cond_b4
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v1, v5, 0x5
const/16 v5, 0x24
invoke-direct {v0, v1, v5}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
:goto_51
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v5, v0, Lcom/google/zxing/e/a/a/a/r;->d:I
iput v5, v1, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-virtual {v0}, Lcom/google/zxing/e/a/a/a/o;->a()Z
move-result v1
if-eqz v1, :cond_10d
new-instance v1, Lcom/google/zxing/e/a/a/a/p;
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v5, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v0, v5}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;)V
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/a/a/a/l;-><init>(Lcom/google/zxing/e/a/a/a/p;Z)V
:goto_71
iget-boolean v1, v0, Lcom/google/zxing/e/a/a/a/l;->b:Z
:goto_73
iget-object v5, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v5, v5, Lcom/google/zxing/e/a/a/a/m;->a:I
if-eq v4, v5, :cond_17b
move v4, v2
:goto_7a
if-nez v4, :cond_7e
if-eqz v1, :cond_80
:cond_7e
if-eqz v1, :cond_16
:cond_80
iget-object v1, v0, Lcom/google/zxing/e/a/a/a/l;->a:Lcom/google/zxing/e/a/a/a/p;
if-eqz v1, :cond_17e
iget-boolean v0, v1, Lcom/google/zxing/e/a/a/a/p;->c:Z
if-eqz v0, :cond_17e
new-instance v0, Lcom/google/zxing/e/a/a/a/p;
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v2, v2, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v3, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget v1, v1, Lcom/google/zxing/e/a/a/a/p;->b:I
invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;I)V
:goto_99
return-object v0
:cond_9a
move v0, v3
goto :goto_23
:cond_9c
add-int/lit8 v1, v0, 0x6
iget-object v5, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v5, v5, Lcom/google/zxing/b/a;->b:I
if-gt v1, v5, :cond_b2
invoke-virtual {p0, v0, v7}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v0
const/16 v1, 0x10
if-lt v0, v1, :cond_b2
const/16 v1, 0x3f
if-ge v0, v1, :cond_b2
move v0, v2
goto :goto_3c
:cond_b2
move v0, v3
goto :goto_3c
:cond_b4
if-lt v1, v6, :cond_c5
if-ge v1, v8, :cond_c5
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v5, v5, 0x5
add-int/lit8 v1, v1, 0x30
add-int/lit8 v1, v1, -0x5
int-to-char v1, v1
invoke-direct {v0, v5, v1}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
goto :goto_51
:cond_c5
invoke-virtual {p0, v5, v7}, Lcom/google/zxing/e/a/a/a/t;->a(II)I
move-result v1
const/16 v0, 0x20
if-lt v1, v0, :cond_dd
const/16 v0, 0x3a
if-ge v1, v0, :cond_dd
new-instance v0, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v5, v5, 0x6
add-int/lit8 v1, v1, 0x21
int-to-char v1, v1
invoke-direct {v0, v5, v1}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
goto/16 :goto_51
:cond_dd
packed-switch v1, :pswitch_data_190
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Decoding invalid alphanumeric value: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f5
const/16 v0, 0x2a
:goto_f7
new-instance v1, Lcom/google/zxing/e/a/a/a/o;
add-int/lit8 v5, v5, 0x6
invoke-direct {v1, v5, v0}, Lcom/google/zxing/e/a/a/a/o;-><init>(IC)V
move-object v0, v1
goto/16 :goto_51
:pswitch_101
const/16 v0, 0x2c
goto :goto_f7
:pswitch_104
const/16 v0, 0x2d
goto :goto_f7
:pswitch_107
const/16 v0, 0x2e
goto :goto_f7
:pswitch_10a
const/16 v0, 0x2f
goto :goto_f7
:cond_10d
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
iget-char v0, v0, Lcom/google/zxing/e/a/a/a/o;->a:C
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_25
:cond_116
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-direct {p0, v0}, Lcom/google/zxing/e/a/a/a/t;->b(I)Z
move-result v0
if-eqz v0, :cond_133
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/google/zxing/e/a/a/a/m;->a(I)V
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->a:Lcom/google/zxing/e/a/a/a/n;
iput-object v1, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
:goto_12c
:cond_12c
new-instance v0, Lcom/google/zxing/e/a/a/a/l;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/a/l;-><init>()V
goto/16 :goto_71
:cond_133
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
invoke-direct {p0, v0}, Lcom/google/zxing/e/a/a/a/t;->a(I)Z
move-result v0
if-eqz v0, :cond_12c
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v0, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
add-int/lit8 v0, v0, 0x5
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v1, v1, Lcom/google/zxing/b/a;->b:I
if-ge v0, v1, :cond_155
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
invoke-virtual {v0, v6}, Lcom/google/zxing/e/a/a/a/m;->a(I)V
:goto_14e
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->c:Lcom/google/zxing/e/a/a/a/n;
iput-object v1, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
goto :goto_12c
:cond_155
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->a:Lcom/google/zxing/b/a;
iget v1, v1, Lcom/google/zxing/b/a;->b:I
iput v1, v0, Lcom/google/zxing/e/a/a/a/m;->a:I
goto :goto_14e
:cond_15e
iget-object v0, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget-object v0, v0, Lcom/google/zxing/e/a/a/a/m;->b:Lcom/google/zxing/e/a/a/a/n;
sget-object v1, Lcom/google/zxing/e/a/a/a/n;->c:Lcom/google/zxing/e/a/a/a/n;
if-ne v0, v1, :cond_171
move v0, v2
:goto_167
if-eqz v0, :cond_173
invoke-direct {p0}, Lcom/google/zxing/e/a/a/a/t;->b()Lcom/google/zxing/e/a/a/a/l;
move-result-object v0
iget-boolean v1, v0, Lcom/google/zxing/e/a/a/a/l;->b:Z
goto/16 :goto_73
:cond_171
move v0, v3
goto :goto_167
:cond_173
invoke-direct {p0}, Lcom/google/zxing/e/a/a/a/t;->a()Lcom/google/zxing/e/a/a/a/l;
move-result-object v0
iget-boolean v1, v0, Lcom/google/zxing/e/a/a/a/l;->b:Z
goto/16 :goto_73
:cond_17b
move v4, v3
goto/16 :goto_7a
:cond_17e
new-instance v0, Lcom/google/zxing/e/a/a/a/p;
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/t;->b:Lcom/google/zxing/e/a/a/a/m;
iget v1, v1, Lcom/google/zxing/e/a/a/a/m;->a:I
iget-object v2, p0, Lcom/google/zxing/e/a/a/a/t;->c:Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/a/a/a/p;-><init>(ILjava/lang/String;)V
goto/16 :goto_99
nop
:pswitch_data_190
.packed-switch 0x3a
:pswitch_f5
:pswitch_101
:pswitch_104
:pswitch_107
:pswitch_10a
.end packed-switch
.end method
.method final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
move-object v0, v1
:goto_2
invoke-virtual {p0, p2, v0}, Lcom/google/zxing/e/a/a/a/t;->a(ILjava/lang/String;)Lcom/google/zxing/e/a/a/a/p;
move-result-object v2
iget-object v0, v2, Lcom/google/zxing/e/a/a/a/p;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/google/zxing/e/a/a/a/s;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_11
iget-boolean v0, v2, Lcom/google/zxing/e/a/a/a/p;->c:Z
if-eqz v0, :cond_22
iget v0, v2, Lcom/google/zxing/e/a/a/a/p;->b:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
:goto_1b
iget v3, v2, Lcom/google/zxing/e/a/a/a/r;->d:I
if-eq p2, v3, :cond_24
iget p2, v2, Lcom/google/zxing/e/a/a/a/r;->d:I
goto :goto_2
:cond_22
move-object v0, v1
goto :goto_1b
:cond_24
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method