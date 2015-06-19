.class  Lcom/millennialmedia/android/cz;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final e:D = 40.0
.field private static final f:D = 80.0
.field private static final g:D = 9.99
.field private static final h:D = 4.004004004004004
.field  a:D
.field  b:D
.field  c:I
.field  d:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/millennialmedia/android/cz;->a()V
return-void
.end method
.method static synthetic b(D)D
.registers 4
invoke-static {p0, p1}, Lcom/millennialmedia/android/cz;->c(D)D
move-result-wide v0
return-wide v0
.end method
.method private static c(D)D
.registers 8
const-wide/high16 v0, 0x4044
sub-double v0, p0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
const-wide v2, 0x40100419a0290042L
div-double/2addr v0, v2
const-wide v2, 0x4023fae147ae147bL
const-wide/16 v4, 0x0
invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D
move-result-wide v0
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D
move-result-wide v0
return-wide v0
.end method
.method public a()V
.registers 4
const/4 v2, 0x0
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/millennialmedia/android/cz;->b:D
iput v2, p0, Lcom/millennialmedia/android/cz;->c:I
iput-boolean v2, p0, Lcom/millennialmedia/android/cz;->d:Z
return-void
.end method
.method public a(D)Z
.registers 10
const/4 v0, 0x0
iget-wide v1, p0, Lcom/millennialmedia/android/cz;->b:D
iget-wide v3, p0, Lcom/millennialmedia/android/cz;->a:D
iput-wide p1, p0, Lcom/millennialmedia/android/cz;->a:D
iget v5, p0, Lcom/millennialmedia/android/cz;->c:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/millennialmedia/android/cz;->c:I
iget v5, p0, Lcom/millennialmedia/android/cz;->c:I
add-int/lit8 v5, v5, -0x1
int-to-double v5, v5
mul-double/2addr v1, v5
add-double/2addr v1, p1
iget v5, p0, Lcom/millennialmedia/android/cz;->c:I
int-to-double v5, v5
div-double/2addr v1, v5
iput-wide v1, p0, Lcom/millennialmedia/android/cz;->b:D
iget-boolean v1, p0, Lcom/millennialmedia/android/cz;->d:Z
if-eqz v1, :cond_1f
:goto_1e
:cond_1e
return v0
:cond_1f
iget-wide v1, p0, Lcom/millennialmedia/android/cz;->a:D
cmpl-double v1, v1, v3
if-eqz v1, :cond_1e
const/4 v0, 0x1
goto :goto_1e
.end method
.method public b()V
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/android/cz;->a()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/cz;->d:Z
return-void
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lcom/millennialmedia/android/cz;->d:Z
return v0
.end method