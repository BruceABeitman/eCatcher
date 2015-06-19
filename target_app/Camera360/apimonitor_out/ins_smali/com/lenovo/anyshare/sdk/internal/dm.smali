.class public Lcom/lenovo/anyshare/sdk/internal/dm;
.super Ljava/lang/Object;
.source "SampleEncoder.java"
.method private static a(Lcom/lenovo/anyshare/sdk/internal/dj;I)I
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v1, v1, p1
iget v1, v1, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
if-eqz v1, :cond_18
:goto_9
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v1, v1, p1
iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
aget-short v1, v1, v0
if-lez v1, :cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_16
add-int/lit8 v0, v0, 0x1
:cond_18
return v0
.end method
.method private static a(ILcom/lenovo/anyshare/sdk/internal/dj;Ljava/util/Map;)Z
.registers 11
if-eqz p1, :cond_4
if-nez p2, :cond_6
:cond_4
const/4 v5, 0x0
:goto_5
return v5
:cond_6
invoke-interface {p2}, Ljava/util/Map;->clear()V
const/4 v4, 0x0
:goto_a
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v5, v5, v4
iget v5, v5, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
if-eqz v5, :cond_4d
invoke-static {p1, v4}, Lcom/lenovo/anyshare/sdk/internal/dm;->a(Lcom/lenovo/anyshare/sdk/internal/dj;I)I
move-result v2
const/4 v0, 0x0
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v5, v5, v4
iget-object v5, v5, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
aget-short v1, v5, v0
:goto_1f
if-lez v1, :cond_4a
int-to-short v5, v1
invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v5
invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_3f
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/dm$a;
int-to-short v5, v1
const v6, 0x3f666666
int-to-float v7, v2
div-float/2addr v6, v7
invoke-direct {v3, p0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/dm$a;-><init>(ISF)V
int-to-short v5, v1
invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v5
invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3f
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v5, v5, v4
iget-object v5, v5, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
add-int/lit8 v0, v0, 0x1
aget-short v1, v5, v0
goto :goto_1f
:cond_4a
add-int/lit8 v4, v4, 0x1
goto :goto_a
:cond_4d
const/4 v5, 0x1
goto :goto_5
.end method
.method public static a(ILcom/lenovo/anyshare/sdk/internal/dj;)[S
.registers 15
const/4 v9, 0x0
if-nez p1, :cond_4
:cond_3
return-object v9
:cond_4
new-instance v10, Ljava/util/HashMap;
invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
invoke-static {p0, p1, v10}, Lcom/lenovo/anyshare/sdk/internal/dm;->a(ILcom/lenovo/anyshare/sdk/internal/dj;Ljava/util/Map;)Z
move-result v11
if-eqz v11, :cond_3
const/4 v8, 0x0
const/4 v1, 0x0
:goto_11
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
array-length v11, v11
if-ge v1, v11, :cond_1e
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
if-gtz v11, :cond_6f
:cond_1e
mul-int v11, p0, v8
div-int/lit16 v11, v11, 0x3e8
new-array v9, v11, [S
const/4 v0, 0x0
const/4 v1, 0x0
:goto_26
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
array-length v11, v11
if-ge v1, v11, :cond_3
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
if-lez v11, :cond_3
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
mul-int/2addr v11, p0
div-int/lit16 v5, v11, 0x3e8
const/4 v4, 0x0
const/4 v6, 0x0
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget-object v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
const/4 v12, 0x0
aget-short v11, v11, v12
if-nez v11, :cond_79
const/4 v4, 0x0
:goto_4a
if-lez v4, :cond_7b
const/4 v2, 0x0
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget-object v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
aget-short v3, v11, v2
:goto_55
if-eqz v3, :cond_7b
invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v11
invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/dm$a;
invoke-virtual {v7, v9, v0, v4, v6}, Lcom/lenovo/anyshare/sdk/internal/dm$a;->a([SIII)V
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget-object v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
add-int/lit8 v2, v2, 0x1
aget-short v3, v11, v2
goto :goto_55
:cond_6f
iget-object v11, p1, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;
aget-object v11, v11, v1
iget v11, v11, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
add-int/2addr v8, v11
add-int/lit8 v1, v1, 0x1
goto :goto_11
:cond_79
move v4, v5
goto :goto_4a
:cond_7b
add-int/2addr v0, v5
add-int/lit8 v1, v1, 0x1
goto :goto_26
.end method