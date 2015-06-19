.class public final Lcom/google/zxing/d/a;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"
.implements Lcom/google/zxing/k;
.field private static final a:[Lcom/google/zxing/o;
.field private final b:Lcom/google/zxing/d/a/c;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/o;
sput-object v0, Lcom/google/zxing/d/a;->a:[Lcom/google/zxing/o;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/d/a/c;
invoke-direct {v0}, Lcom/google/zxing/d/a/c;-><init>()V
iput-object v0, p0, Lcom/google/zxing/d/a;->b:Lcom/google/zxing/d/a/c;
return-void
.end method
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 15
if-eqz p2, :cond_181
sget-object v0, Lcom/google/zxing/e;->b:Lcom/google/zxing/e;
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_181
invoke-virtual {p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v7
iget v4, v7, Lcom/google/zxing/b/b;->a:I
iget v3, v7, Lcom/google/zxing/b/b;->b:I
const/4 v2, -0x1
const/4 v1, -0x1
const/4 v0, 0x0
:goto_15
iget v5, v7, Lcom/google/zxing/b/b;->b:I
if-ge v0, v5, :cond_6a
const/4 v5, 0x0
:goto_1a
iget v6, v7, Lcom/google/zxing/b/b;->c:I
if-ge v5, v6, :cond_67
iget-object v6, v7, Lcom/google/zxing/b/b;->d:[I
iget v8, v7, Lcom/google/zxing/b/b;->c:I
mul-int/2addr v8, v0
add-int/2addr v8, v5
aget v8, v6, v8
if-eqz v8, :cond_18e
if-ge v0, v3, :cond_2b
move v3, v0
:cond_2b
if-le v0, v1, :cond_2e
move v1, v0
:cond_2e
mul-int/lit8 v6, v5, 0x20
if-ge v6, v4, :cond_18b
const/4 v6, 0x0
:goto_33
rsub-int/lit8 v9, v6, 0x1f
shl-int v9, v8, v9
if-nez v9, :cond_3c
add-int/lit8 v6, v6, 0x1
goto :goto_33
:cond_3c
mul-int/lit8 v9, v5, 0x20
add-int/2addr v9, v6
if-ge v9, v4, :cond_18b
mul-int/lit8 v4, v5, 0x20
add-int/2addr v4, v6
move v6, v4
:goto_45
mul-int/lit8 v4, v5, 0x20
add-int/lit8 v4, v4, 0x1f
if-le v4, v2, :cond_186
const/16 v4, 0x1f
:goto_4d
ushr-int v9, v8, v4
if-nez v9, :cond_54
add-int/lit8 v4, v4, -0x1
goto :goto_4d
:cond_54
mul-int/lit8 v8, v5, 0x20
add-int/2addr v8, v4
if-le v8, v2, :cond_186
mul-int/lit8 v2, v5, 0x20
add-int/2addr v2, v4
move v4, v3
move v3, v2
move v2, v1
:goto_5f
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v2
move v2, v3
move v3, v4
move v4, v6
goto :goto_1a
:cond_67
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_6a
sub-int/2addr v2, v4
sub-int/2addr v1, v3
if-ltz v2, :cond_70
if-gez v1, :cond_78
:cond_70
const/4 v0, 0x0
:goto_71
if-nez v0, :cond_88
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_78
const/4 v0, 0x4
new-array v0, v0, [I
const/4 v5, 0x0
aput v4, v0, v5
const/4 v4, 0x1
aput v3, v0, v4
const/4 v3, 0x2
aput v2, v0, v3
const/4 v2, 0x3
aput v1, v0, v2
goto :goto_71
:cond_88
const/4 v1, 0x0
aget v2, v0, v1
const/4 v1, 0x1
aget v3, v0, v1
const/4 v1, 0x2
aget v4, v0, v1
const/4 v1, 0x3
aget v5, v0, v1
new-instance v6, Lcom/google/zxing/b/b;
const/16 v0, 0x1e
const/16 v1, 0x21
invoke-direct {v6, v0, v1}, Lcom/google/zxing/b/b;-><init>(II)V
const/4 v0, 0x0
move v1, v0
:goto_9f
const/16 v0, 0x21
if-ge v1, v0, :cond_cf
mul-int v0, v1, v5
div-int/lit8 v8, v5, 0x2
add-int/2addr v0, v8
div-int/lit8 v0, v0, 0x21
add-int v8, v3, v0
const/4 v0, 0x0
:goto_ad
const/16 v9, 0x1e
if-ge v0, v9, :cond_cb
mul-int v9, v0, v4
div-int/lit8 v10, v4, 0x2
add-int/2addr v9, v10
and-int/lit8 v10, v1, 0x1
mul-int/2addr v10, v4
div-int/lit8 v10, v10, 0x2
add-int/2addr v9, v10
div-int/lit8 v9, v9, 0x1e
add-int/2addr v9, v2
invoke-virtual {v7, v9, v8}, Lcom/google/zxing/b/b;->a(II)Z
move-result v9
if-eqz v9, :cond_c8
invoke-virtual {v6, v0, v1}, Lcom/google/zxing/b/b;->b(II)V
:cond_c8
add-int/lit8 v0, v0, 0x1
goto :goto_ad
:cond_cb
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9f
:cond_cf
iget-object v0, p0, Lcom/google/zxing/d/a;->b:Lcom/google/zxing/d/a/c;
new-instance v4, Lcom/google/zxing/d/a/a;
invoke-direct {v4, v6}, Lcom/google/zxing/d/a/a;-><init>(Lcom/google/zxing/b/b;)V
const/16 v1, 0x90
new-array v1, v1, [B
iget-object v2, v4, Lcom/google/zxing/d/a/a;->b:Lcom/google/zxing/b/b;
iget v5, v2, Lcom/google/zxing/b/b;->b:I
iget-object v2, v4, Lcom/google/zxing/d/a/a;->b:Lcom/google/zxing/b/b;
iget v6, v2, Lcom/google/zxing/b/b;->a:I
const/4 v2, 0x0
:goto_e3
if-ge v2, v5, :cond_10e
sget-object v3, Lcom/google/zxing/d/a/a;->a:[[I
aget-object v7, v3, v2
const/4 v3, 0x0
:goto_ea
if-ge v3, v6, :cond_10b
aget v8, v7, v3
if-ltz v8, :cond_108
iget-object v9, v4, Lcom/google/zxing/d/a/a;->b:Lcom/google/zxing/b/b;
invoke-virtual {v9, v3, v2}, Lcom/google/zxing/b/b;->a(II)Z
move-result v9
if-eqz v9, :cond_108
div-int/lit8 v9, v8, 0x6
aget-byte v10, v1, v9
const/4 v11, 0x1
rem-int/lit8 v8, v8, 0x6
rsub-int/lit8 v8, v8, 0x5
shl-int v8, v11, v8
int-to-byte v8, v8
or-int/2addr v8, v10
int-to-byte v8, v8
aput-byte v8, v1, v9
:cond_108
add-int/lit8 v3, v3, 0x1
goto :goto_ea
:cond_10b
add-int/lit8 v2, v2, 0x1
goto :goto_e3
:cond_10e
const/4 v2, 0x0
const/16 v3, 0xa
const/16 v4, 0xa
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d/a/c;->a([BIIII)V
const/4 v2, 0x0
aget-byte v2, v1, v2
and-int/lit8 v6, v2, 0xf
packed-switch v6, :pswitch_data_194
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_124
const/16 v2, 0x14
const/16 v3, 0x54
const/16 v4, 0x28
const/4 v5, 0x1
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d/a/c;->a([BIIII)V
const/16 v2, 0x14
const/16 v3, 0x54
const/16 v4, 0x28
const/4 v5, 0x2
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d/a/c;->a([BIIII)V
const/16 v0, 0x5e
new-array v0, v0, [B
:goto_13c
const/4 v2, 0x0
const/4 v3, 0x0
const/16 v4, 0xa
invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v2, 0x14
const/16 v3, 0xa
array-length v4, v0
add-int/lit8 v4, v4, -0xa
invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v0, v6}, Lcom/google/zxing/d/a/b;->a([BI)Lcom/google/zxing/b/e;
move-result-object v0
sget-object v1, Lcom/google/zxing/d/a;->a:[Lcom/google/zxing/o;
new-instance v2, Lcom/google/zxing/m;
iget-object v3, v0, Lcom/google/zxing/b/e;->b:Ljava/lang/String;
iget-object v4, v0, Lcom/google/zxing/b/e;->a:[B
sget-object v5, Lcom/google/zxing/a;->j:Lcom/google/zxing/a;
invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
iget-object v0, v0, Lcom/google/zxing/b/e;->d:Ljava/lang/String;
if-eqz v0, :cond_167
sget-object v1, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;
invoke-virtual {v2, v1, v0}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
:cond_167
return-object v2
:pswitch_168
const/16 v2, 0x14
const/16 v3, 0x44
const/16 v4, 0x38
const/4 v5, 0x1
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d/a/c;->a([BIIII)V
const/16 v2, 0x14
const/16 v3, 0x44
const/16 v4, 0x38
const/4 v5, 0x2
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d/a/c;->a([BIIII)V
const/16 v0, 0x4e
new-array v0, v0, [B
goto :goto_13c
:cond_181
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_186
move v4, v3
move v3, v2
move v2, v1
goto/16 :goto_5f
:cond_18b
move v6, v4
goto/16 :goto_45
:cond_18e
move v6, v4
move v4, v3
move v3, v2
move v2, v1
goto/16 :goto_5f
:pswitch_data_194
.packed-switch 0x2
:pswitch_124
:pswitch_124
:pswitch_124
:pswitch_168
.end packed-switch
.end method
.method public final a()V
.registers 1
return-void
.end method