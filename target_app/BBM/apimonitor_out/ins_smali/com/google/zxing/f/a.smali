.class public final Lcom/google/zxing/f/a;
.super Ljava/lang/Object;
.source "PDF417Reader.java"
.implements Lcom/google/zxing/k;
.field private static final a:[Lcom/google/zxing/o;
.field private final b:Lcom/google/zxing/f/a/e;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/o;
sput-object v0, Lcom/google/zxing/f/a;->a:[Lcom/google/zxing/o;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/f/a/e;
invoke-direct {v0}, Lcom/google/zxing/f/a/e;-><init>()V
iput-object v0, p0, Lcom/google/zxing/f/a;->b:Lcom/google/zxing/f/a/e;
return-void
.end method
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 16
const/4 v12, 0x6
const/4 v11, 0x5
const/4 v10, 0x4
const/4 v9, 0x1
const/4 v8, 0x0
if-eqz p2, :cond_ee
sget-object v0, Lcom/google/zxing/e;->b:Lcom/google/zxing/e;
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ee
invoke-virtual {p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v5
invoke-virtual {v5}, Lcom/google/zxing/b/b;->a()[I
move-result-object v6
invoke-virtual {v5}, Lcom/google/zxing/b/b;->b()[I
move-result-object v1
if-eqz v6, :cond_1f
if-nez v1, :cond_24
:cond_1f
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_24
aget v0, v6, v8
aget v2, v6, v9
iget v3, v5, Lcom/google/zxing/b/b;->a:I
:goto_2a
if-ge v0, v3, :cond_35
invoke-virtual {v5, v0, v2}, Lcom/google/zxing/b/b;->a(II)Z
move-result v4
if-eqz v4, :cond_35
add-int/lit8 v0, v0, 0x1
goto :goto_2a
:cond_35
if-ne v0, v3, :cond_3c
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_3c
aget v2, v6, v8
sub-int/2addr v0, v2
ushr-int/lit8 v7, v0, 0x3
if-nez v7, :cond_48
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_48
aget v10, v6, v9
aget v11, v1, v9
aget v0, v6, v8
iget v12, v5, Lcom/google/zxing/b/b;->a:I
move v1, v9
move v4, v0
move v0, v8
:goto_53
add-int/lit8 v2, v12, -0x1
if-ge v4, v2, :cond_68
const/16 v2, 0x8
if-ge v0, v2, :cond_68
add-int/lit8 v3, v4, 0x1
invoke-virtual {v5, v3, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v2
if-eq v1, v2, :cond_65
add-int/lit8 v0, v0, 0x1
:cond_65
move v1, v2
move v4, v3
goto :goto_53
:cond_68
add-int/lit8 v0, v12, -0x1
if-ne v4, v0, :cond_71
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_71
aget v6, v6, v8
iget v0, v5, Lcom/google/zxing/b/b;->a:I
add-int/lit8 v0, v0, -0x1
:goto_77
if-le v0, v6, :cond_82
invoke-virtual {v5, v0, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v1
if-nez v1, :cond_82
add-int/lit8 v0, v0, -0x1
goto :goto_77
:cond_82
move v1, v9
move v2, v0
move v0, v8
:goto_85
if-le v2, v6, :cond_98
const/16 v3, 0x9
if-ge v0, v3, :cond_98
add-int/lit8 v3, v2, -0x1
invoke-virtual {v5, v3, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v2
if-eq v1, v2, :cond_95
add-int/lit8 v0, v0, 0x1
:cond_95
move v1, v2
move v2, v3
goto :goto_85
:cond_98
if-ne v2, v6, :cond_9f
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_9f
sub-int v0, v2, v4
add-int/lit8 v0, v0, 0x1
div-int v2, v0, v7
sub-int v0, v11, v10
add-int/lit8 v0, v0, 0x1
div-int v3, v0, v7
if-lez v2, :cond_af
if-gtz v3, :cond_b4
:cond_af
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_b4
shr-int/lit8 v0, v7, 0x1
add-int v6, v10, v0
add-int/2addr v4, v0
new-instance v9, Lcom/google/zxing/b/b;
invoke-direct {v9, v2, v3}, Lcom/google/zxing/b/b;-><init>(II)V
move v0, v8
:goto_bf
if-ge v0, v3, :cond_da
mul-int v1, v0, v7
add-int v10, v6, v1
move v1, v8
:goto_c6
if-ge v1, v2, :cond_d7
mul-int v11, v1, v7
add-int/2addr v11, v4
invoke-virtual {v5, v11, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v11
if-eqz v11, :cond_d4
invoke-virtual {v9, v1, v0}, Lcom/google/zxing/b/b;->b(II)V
:cond_d4
add-int/lit8 v1, v1, 0x1
goto :goto_c6
:cond_d7
add-int/lit8 v0, v0, 0x1
goto :goto_bf
:cond_da
iget-object v0, p0, Lcom/google/zxing/f/a;->b:Lcom/google/zxing/f/a/e;
invoke-virtual {v0, v9}, Lcom/google/zxing/f/a/e;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
move-result-object v1
sget-object v0, Lcom/google/zxing/f/a;->a:[Lcom/google/zxing/o;
:goto_e2
new-instance v2, Lcom/google/zxing/m;
iget-object v3, v1, Lcom/google/zxing/b/e;->b:Ljava/lang/String;
iget-object v1, v1, Lcom/google/zxing/b/e;->a:[B
sget-object v4, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;
invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
return-object v2
:cond_ee
new-instance v0, Lcom/google/zxing/f/b/a;
invoke-direct {v0, p1}, Lcom/google/zxing/f/b/a;-><init>(Lcom/google/zxing/c;)V
iget-object v0, v0, Lcom/google/zxing/f/b/a;->a:Lcom/google/zxing/c;
invoke-virtual {v0}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v0
invoke-static {v0}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;)[Lcom/google/zxing/o;
move-result-object v1
if-nez v1, :cond_110
invoke-static {v0}, Lcom/google/zxing/f/b/a;->b(Lcom/google/zxing/b/b;)[Lcom/google/zxing/o;
move-result-object v1
if-eqz v1, :cond_113
invoke-static {v1, v9}, Lcom/google/zxing/f/b/a;->a([Lcom/google/zxing/o;Z)V
move-object v7, v1
:goto_109
if-nez v7, :cond_115
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_110
invoke-static {v1, v8}, Lcom/google/zxing/f/b/a;->a([Lcom/google/zxing/o;Z)V
:cond_113
move-object v7, v1
goto :goto_109
:cond_115
invoke-static {v7}, Lcom/google/zxing/f/b/a;->a([Lcom/google/zxing/o;)F
move-result v1
const/high16 v2, 0x3f80
cmpg-float v2, v1, v2
if-gez v2, :cond_124
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_124
aget-object v2, v7, v10
aget-object v3, v7, v12
aget-object v4, v7, v11
const/4 v5, 0x7
aget-object v5, v7, v5
invoke-static {v2, v3, v4, v5, v1}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;F)I
move-result v5
if-gtz v5, :cond_138
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_138
aget-object v2, v7, v10
aget-object v3, v7, v12
aget-object v4, v7, v11
const/4 v6, 0x7
aget-object v6, v7, v6
invoke-static {v2, v3, v4, v6, v1}, Lcom/google/zxing/f/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;F)I
move-result v6
if-le v6, v5, :cond_17a
:goto_147
aget-object v1, v7, v10
aget-object v2, v7, v11
aget-object v3, v7, v12
const/4 v4, 0x7
aget-object v4, v7, v4
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;II)Lcom/google/zxing/b/b;
move-result-object v0
new-instance v2, Lcom/google/zxing/b/g;
new-array v1, v10, [Lcom/google/zxing/o;
aget-object v3, v7, v11
aput-object v3, v1, v8
aget-object v3, v7, v10
aput-object v3, v1, v9
const/4 v3, 0x2
aget-object v4, v7, v12
aput-object v4, v1, v3
const/4 v3, 0x3
const/4 v4, 0x7
aget-object v4, v7, v4
aput-object v4, v1, v3
invoke-direct {v2, v0, v1}, Lcom/google/zxing/b/g;-><init>(Lcom/google/zxing/b/b;[Lcom/google/zxing/o;)V
iget-object v0, p0, Lcom/google/zxing/f/a;->b:Lcom/google/zxing/f/a/e;
iget-object v1, v2, Lcom/google/zxing/b/g;->d:Lcom/google/zxing/b/b;
invoke-virtual {v0, v1}, Lcom/google/zxing/f/a/e;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
move-result-object v1
iget-object v0, v2, Lcom/google/zxing/b/g;->e:[Lcom/google/zxing/o;
goto/16 :goto_e2
:cond_17a
move v6, v5
goto :goto_147
.end method
.method public final a()V
.registers 1
return-void
.end method