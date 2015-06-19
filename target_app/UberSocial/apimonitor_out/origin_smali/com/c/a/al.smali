.class Lcom/c/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/y;


# static fields
.field static final a:Z


# instance fields
.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/a/dq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/a/al;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/c/a/bv;F)V
    .registers 5

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/c/a/al;->a:Z

    if-nez v0, :cond_18

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_12

    cmpg-float v0, p2, v1

    if-lez v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/al;->b:Ljava/util/List;

    sub-float v0, v1, p2

    iget-object v1, p0, Lcom/c/a/al;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/c/a/al;->c:I

    return-void
.end method

.method constructor <init>(Lcom/c/a/bv;FLcom/c/a/du;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/c/a/al;-><init>(Lcom/c/a/bv;F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/c/a/al;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map$Entry;)Z
    .registers 5

    iget-object v1, p0, Lcom/c/a/al;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/bv;

    invoke-virtual {v0}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/c/bi;->a:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Lcom/c/br;->b(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    iget v1, p0, Lcom/c/a/al;->c:I

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
