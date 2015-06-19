.class public Lcom/lenovo/anyshare/sdk/internal/db;
.super Ljava/lang/Object;
.source "FrequencyDecoder.java"
.field public static final a:D
.method static constructor <clinit>()V
.registers 2
const/16 v0, 0x3e80
const/16 v1, 0x50
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/de;->a(II)D
move-result-wide v0
sput-wide v0, Lcom/lenovo/anyshare/sdk/internal/db;->a:D
return-void
.end method
.method private static a(Ljava/util/List;Ljava/util/List;)V
.registers 14
const/16 v11, 0xe
const/4 v3, 0x0
:goto_3
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v7
if-ge v3, v7, :cond_81
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
const/4 v8, 0x4
if-ge v7, v8, :cond_17
:cond_14
:goto_14
add-int/lit8 v3, v3, 0x1
goto :goto_3
:cond_17
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
if-ge v7, v11, :cond_29
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_14
:cond_29
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
if-lt v7, v11, :cond_14
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
int-to-double v7, v7
sget-wide v9, Lcom/lenovo/anyshare/sdk/internal/db;->a:D
div-double/2addr v7, v9
invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J
move-result-wide v7
long-to-int v6, v7
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
div-int v0, v7, v6
const/4 v4, 0x0
:goto_4f
if-ge v4, v6, :cond_14
move v1, v0
add-int/lit8 v7, v6, -0x1
if-ne v4, v7, :cond_62
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
mul-int v8, v0, v4
sub-int v1, v7, v8
:cond_62
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I
mul-int v8, v0, v4
add-int v2, v7, v8
new-instance v5, Lcom/lenovo/anyshare/sdk/internal/db$a;
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget-object v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;
invoke-direct {v5, v7, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/db$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/cv;II)V
invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_4f
:cond_81
return-void
.end method
.method private static a([Lcom/lenovo/anyshare/sdk/internal/cv;Ljava/util/List;)V
.registers 10
const/4 v7, 0x1
const/4 v5, 0x0
aget-object v4, p0, v5
const/4 v2, 0x0
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/db$a;
invoke-direct {v3, v4, v7, v5}, Lcom/lenovo/anyshare/sdk/internal/db$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/cv;II)V
invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v1, 0x1
:goto_e
array-length v5, p0
if-ge v1, v5, :cond_34
aget-object v0, p0, v1
invoke-virtual {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/cv;->a(Lcom/lenovo/anyshare/sdk/internal/cv;)Z
move-result v5
if-eqz v5, :cond_28
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/lenovo/anyshare/sdk/internal/db$a;
iget v6, v5, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
add-int/lit8 v6, v6, 0x1
iput v6, v5, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I
:goto_25
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_28
add-int/lit8 v2, v2, 0x1
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/db$a;
invoke-direct {v3, v0, v7, v1}, Lcom/lenovo/anyshare/sdk/internal/db$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/cv;II)V
invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v4, v0
goto :goto_25
:cond_34
return-void
.end method
.method public static a([Lcom/lenovo/anyshare/sdk/internal/cv;)[Lcom/lenovo/anyshare/sdk/internal/db$a;
.registers 7
const/4 v3, 0x0
const-string/jumbo v4, "FrequencyDecoder::doDecode(): Input buffer is null."
invoke-static {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V
if-nez p0, :cond_a
:cond_9
:goto_9
return-object v3
:cond_a
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/db;->a([Lcom/lenovo/anyshare/sdk/internal/cv;Ljava/util/List;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/db;->a(Ljava/util/List;Ljava/util/List;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
const/4 v5, 0x1
if-ge v4, v5, :cond_2b
const-string/jumbo v4, "FrequencyDecoder"
const-string/jumbo v5, "doDecode(): There is no decoded keys."
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
:cond_2b
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
new-array v3, v4, [Lcom/lenovo/anyshare/sdk/internal/db$a;
const/4 v1, 0x0
:goto_32
array-length v4, v3
if-ge v1, v4, :cond_9
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/anyshare/sdk/internal/db$a;
aput-object v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_32
.end method