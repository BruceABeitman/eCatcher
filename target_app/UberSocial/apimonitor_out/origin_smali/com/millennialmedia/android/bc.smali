.class Lcom/millennialmedia/android/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z

.field n:Z

.field o:Z

.field p:F

.field q:I

.field r:Z

.field s:Z

.field t:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/bc;->o:Z

    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->a:I

    :cond_1d
    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->c:I

    :cond_34
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->f:I

    :cond_4b
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->g:I

    :cond_62
    const-string v0, "streamVideoURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/bc;->i:Ljava/lang/String;

    const-string v0, "cachedVideoURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/bc;->j:Ljava/lang/String;

    const-string v0, "cachedVideoID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/bc;->k:Ljava/lang/String;

    const-string v0, "autoPlay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_96

    const-string v0, "autoPlay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/bc;->m:Z

    :cond_96
    const-string v0, "showControls"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ac

    const-string v0, "showControls"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/bc;->n:Z

    :cond_ac
    const-string v0, "bodyWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c3

    const-string v0, "bodyWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->d:I

    :cond_c3
    const-string v0, "bodyHeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_da

    const-string v0, "bodyHeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/bc;->e:I

    :cond_da
    const-string v0, "touchCallback"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/bc;->l:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/millennialmedia/android/bc;->p:F

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/bc;
    .registers 3

    new-instance v0, Lcom/millennialmedia/a/a/f;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/f;-><init>()V

    const-class v1, Lcom/millennialmedia/android/bc;

    invoke-virtual {v0, p0, v1}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bc;

    return-object v0
.end method


# virtual methods
.method b(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/millennialmedia/a/a/f;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/f;-><init>()V

    const-class v1, Lcom/millennialmedia/android/bc;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bc;

    iget v1, v0, Lcom/millennialmedia/android/bc;->a:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->a:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->c:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->c:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->d:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->d:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->e:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->e:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->f:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->f:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->g:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->g:I

    iget v1, v0, Lcom/millennialmedia/android/bc;->h:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->h:I

    iget-object v1, v0, Lcom/millennialmedia/android/bc;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/bc;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/bc;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/bc;->j:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/bc;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/bc;->k:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/bc;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/bc;->l:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/millennialmedia/android/bc;->m:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/bc;->m:Z

    iget-boolean v1, v0, Lcom/millennialmedia/android/bc;->n:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/bc;->n:Z

    iget-boolean v1, v0, Lcom/millennialmedia/android/bc;->o:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/bc;->o:Z

    iget v1, v0, Lcom/millennialmedia/android/bc;->p:F

    iput v1, p0, Lcom/millennialmedia/android/bc;->p:F

    iget-boolean v1, v0, Lcom/millennialmedia/android/bc;->b:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/bc;->b:Z

    iget v1, v0, Lcom/millennialmedia/android/bc;->q:I

    iput v1, p0, Lcom/millennialmedia/android/bc;->q:I

    iget-boolean v1, v0, Lcom/millennialmedia/android/bc;->r:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/bc;->r:Z

    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gson*****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAMS*****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/bc;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/bc;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/millennialmedia/android/bc;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/millennialmedia/android/bc;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/millennialmedia/android/bc;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/millennialmedia/android/bc;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/millennialmedia/android/bc;->m:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
