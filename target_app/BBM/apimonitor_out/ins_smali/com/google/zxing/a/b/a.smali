.class public final Lcom/google/zxing/a/b/a;
.super Ljava/lang/Object;
.source "Detector.java"
.field public final a:Lcom/google/zxing/b/b;
.field public b:Z
.field public c:I
.field public d:I
.field public e:I
.field public f:I
.method public constructor <init>(Lcom/google/zxing/b/b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
return-void
.end method
.method public static b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F
.registers 6
iget v0, p0, Lcom/google/zxing/a/b/b;->a:I
iget v1, p0, Lcom/google/zxing/a/b/b;->b:I
iget v2, p1, Lcom/google/zxing/a/b/b;->a:I
iget v3, p1, Lcom/google/zxing/a/b/b;->b:I
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/b/a/a;->a(IIII)F
move-result v0
return v0
.end method
.method public final a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I
.registers 15
invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F
move-result v4
iget v0, p2, Lcom/google/zxing/a/b/b;->a:I
iget v1, p1, Lcom/google/zxing/a/b/b;->a:I
sub-int/2addr v0, v1
int-to-float v0, v0
div-float v5, v0, v4
iget v0, p2, Lcom/google/zxing/a/b/b;->b:I
iget v1, p1, Lcom/google/zxing/a/b/b;->b:I
sub-int/2addr v0, v1
int-to-float v0, v0
div-float v6, v0, v4
const/4 v3, 0x0
iget v0, p1, Lcom/google/zxing/a/b/b;->a:I
int-to-float v2, v0
iget v0, p1, Lcom/google/zxing/a/b/b;->b:I
int-to-float v1, v0
iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
iget v7, p1, Lcom/google/zxing/a/b/b;->a:I
iget v8, p1, Lcom/google/zxing/a/b/b;->b:I
invoke-virtual {v0, v7, v8}, Lcom/google/zxing/b/b;->a(II)Z
move-result v7
const/4 v0, 0x0
move v11, v0
move v0, v3
move v3, v2
move v2, v1
move v1, v11
:goto_2b
int-to-float v8, v1
cmpg-float v8, v8, v4
if-gez v8, :cond_47
add-float/2addr v3, v5
add-float/2addr v2, v6
iget-object v8, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
const/high16 v9, 0x3f00
add-float/2addr v9, v3
float-to-int v9, v9
const/high16 v10, 0x3f00
add-float/2addr v10, v2
float-to-int v10, v10
invoke-virtual {v8, v9, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v8
if-eq v8, v7, :cond_44
add-int/lit8 v0, v0, 0x1
:cond_44
add-int/lit8 v1, v1, 0x1
goto :goto_2b
:cond_47
int-to-float v0, v0
div-float/2addr v0, v4
float-to-double v1, v0
const-wide v3, 0x3fb999999999999aL
cmpl-double v1, v1, v3
if-lez v1, :cond_5f
float-to-double v1, v0
const-wide v3, 0x3feccccccccccccdL
cmpg-double v1, v1, v3
if-gez v1, :cond_5f
const/4 v0, 0x0
:goto_5e
return v0
:cond_5f
float-to-double v0, v0
const-wide v2, 0x3fb999999999999aL
cmpg-double v0, v0, v2
if-gtz v0, :cond_6f
if-eqz v7, :cond_6d
const/4 v0, 0x1
goto :goto_5e
:cond_6d
const/4 v0, -0x1
goto :goto_5e
:cond_6f
if-eqz v7, :cond_73
const/4 v0, -0x1
goto :goto_5e
:cond_73
const/4 v0, 0x1
goto :goto_5e
.end method
.method public final a()Lcom/google/zxing/a/b/b;
.registers 13
const/high16 v11, 0x4080
const/high16 v10, 0x3f00
const/4 v9, -0x1
const/4 v8, 0x1
const/4 v7, 0x0
:try_start_7
new-instance v0, Lcom/google/zxing/b/a/b;
iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
invoke-direct {v0, v1}, Lcom/google/zxing/b/a/b;-><init>(Lcom/google/zxing/b/b;)V
invoke-virtual {v0}, Lcom/google/zxing/b/a/b;->a()[Lcom/google/zxing/o;
move-result-object v0
const/4 v1, 0x0
aget-object v3, v0, v1
const/4 v1, 0x1
aget-object v2, v0, v1
const/4 v1, 0x2
aget-object v1, v0, v1
const/4 v4, 0x3
aget-object v0, v0, v4
:try_end_1e
.catch Lcom/google/zxing/i; {:try_start_7 .. :try_end_1e} :catch_73
:goto_1e
iget v4, v3, Lcom/google/zxing/o;->a:F
iget v5, v0, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
iget v5, v2, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
iget v5, v1, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
div-float/2addr v4, v11
add-float/2addr v4, v10
float-to-int v4, v4
iget v3, v3, Lcom/google/zxing/o;->b:F
iget v0, v0, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v3
iget v2, v2, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v2
iget v1, v1, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v1
div-float/2addr v0, v11
add-float/2addr v0, v10
float-to-int v0, v0
:try_start_3a
new-instance v1, Lcom/google/zxing/b/a/b;
iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
invoke-direct {v1, v2, v4, v0}, Lcom/google/zxing/b/a/b;-><init>(Lcom/google/zxing/b/b;II)V
invoke-virtual {v1}, Lcom/google/zxing/b/a/b;->a()[Lcom/google/zxing/o;
move-result-object v5
const/4 v1, 0x0
aget-object v3, v5, v1
const/4 v1, 0x1
aget-object v2, v5, v1
const/4 v1, 0x2
aget-object v1, v5, v1
const/4 v6, 0x3
aget-object v0, v5, v6
:try_end_51
.catch Lcom/google/zxing/i; {:try_start_3a .. :try_end_51} :catch_c6
:goto_51
iget v4, v3, Lcom/google/zxing/o;->a:F
iget v5, v0, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
iget v5, v2, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
iget v5, v1, Lcom/google/zxing/o;->a:F
add-float/2addr v4, v5
div-float/2addr v4, v11
add-float/2addr v4, v10
float-to-int v4, v4
iget v3, v3, Lcom/google/zxing/o;->b:F
iget v0, v0, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v3
iget v2, v2, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v2
iget v1, v1, Lcom/google/zxing/o;->b:F
add-float/2addr v0, v1
div-float/2addr v0, v11
add-float/2addr v0, v10
float-to-int v0, v0
new-instance v1, Lcom/google/zxing/a/b/b;
invoke-direct {v1, v4, v0, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
return-object v1
:catch_73
move-exception v0
iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
iget v0, v0, Lcom/google/zxing/b/b;->a:I
div-int/lit8 v0, v0, 0x2
iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
iget v1, v1, Lcom/google/zxing/b/b;->b:I
div-int/lit8 v4, v1, 0x2
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v2, v0, 0x7
add-int/lit8 v3, v4, -0x7
invoke-direct {v1, v2, v3, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v8, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v3
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v2, v0, 0x7
add-int/lit8 v5, v4, 0x7
invoke-direct {v1, v2, v5, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v8, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v2
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v5, v0, -0x7
add-int/lit8 v6, v4, 0x7
invoke-direct {v1, v5, v6, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v9, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v1
new-instance v5, Lcom/google/zxing/a/b/b;
add-int/lit8 v0, v0, -0x7
add-int/lit8 v4, v4, -0x7
invoke-direct {v5, v0, v4, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v5, v7, v9, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v0
goto/16 :goto_1e
:catch_c6
move-exception v1
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v2, v4, 0x7
add-int/lit8 v3, v0, -0x7
invoke-direct {v1, v2, v3, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v8, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v3
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v2, v4, 0x7
add-int/lit8 v5, v0, 0x7
invoke-direct {v1, v2, v5, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v8, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v2
new-instance v1, Lcom/google/zxing/a/b/b;
add-int/lit8 v5, v4, -0x7
add-int/lit8 v6, v0, 0x7
invoke-direct {v1, v5, v6, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v1, v7, v9, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v1
new-instance v5, Lcom/google/zxing/a/b/b;
add-int/lit8 v4, v4, -0x7
add-int/lit8 v0, v0, -0x7
invoke-direct {v5, v4, v0, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
invoke-virtual {p0, v5, v7, v9, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/o;
move-result-object v0
goto/16 :goto_51
.end method
.method public final a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
.registers 9
iget v0, p1, Lcom/google/zxing/a/b/b;->a:I
add-int/2addr v0, p3
iget v1, p1, Lcom/google/zxing/a/b/b;->b:I
add-int/2addr v1, p4
:goto_6
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/a/b/a;->a(II)Z
move-result v2
if-eqz v2, :cond_17
iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/b/b;->a(II)Z
move-result v2
if-ne v2, p2, :cond_17
add-int/2addr v0, p3
add-int/2addr v1, p4
goto :goto_6
:cond_17
sub-int/2addr v0, p3
sub-int/2addr v1, p4
:goto_19
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/a/b/a;->a(II)Z
move-result v2
if-eqz v2, :cond_29
iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/b/b;->a(II)Z
move-result v2
if-ne v2, p2, :cond_29
add-int/2addr v0, p3
goto :goto_19
:cond_29
sub-int v2, v0, p3
move v0, v1
:goto_2c
invoke-virtual {p0, v2, v0}, Lcom/google/zxing/a/b/a;->a(II)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
invoke-virtual {v1, v2, v0}, Lcom/google/zxing/b/b;->a(II)Z
move-result v1
if-ne v1, p2, :cond_3c
add-int/2addr v0, p4
goto :goto_2c
:cond_3c
sub-int/2addr v0, p4
new-instance v1, Lcom/google/zxing/a/b/b;
const/4 v3, 0x0
invoke-direct {v1, v2, v0, v3}, Lcom/google/zxing/a/b/b;-><init>(IIB)V
return-object v1
.end method
.method public final a(II)Z
.registers 4
if-ltz p1, :cond_12
iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
iget v0, v0, Lcom/google/zxing/b/b;->a:I
if-ge p1, v0, :cond_12
if-lez p2, :cond_12
iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
iget v0, v0, Lcom/google/zxing/b/b;->b:I
if-ge p2, v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z
.registers 14
const/high16 v9, 0x3f00
new-array v3, p3, [Z
invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F
move-result v0
add-int/lit8 v1, p3, -0x1
int-to-float v1, v1
div-float v1, v0, v1
iget v2, p2, Lcom/google/zxing/a/b/b;->a:I
iget v4, p1, Lcom/google/zxing/a/b/b;->a:I
sub-int/2addr v2, v4
int-to-float v2, v2
mul-float/2addr v2, v1
div-float v4, v2, v0
iget v2, p2, Lcom/google/zxing/a/b/b;->b:I
iget v5, p1, Lcom/google/zxing/a/b/b;->b:I
sub-int/2addr v2, v5
int-to-float v2, v2
mul-float/2addr v1, v2
div-float v5, v1, v0
iget v0, p1, Lcom/google/zxing/a/b/b;->a:I
int-to-float v1, v0
iget v0, p1, Lcom/google/zxing/a/b/b;->b:I
int-to-float v2, v0
const/4 v0, 0x0
:goto_26
if-ge v0, p3, :cond_3b
iget-object v6, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;
add-float v7, v1, v9
float-to-int v7, v7
add-float v8, v2, v9
float-to-int v8, v8
invoke-virtual {v6, v7, v8}, Lcom/google/zxing/b/b;->a(II)Z
move-result v6
aput-boolean v6, v3, v0
add-float/2addr v1, v4
add-float/2addr v2, v5
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_3b
return-object v3
.end method