.class public Lcom/tencent/map/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tencent/map/a/a/b;->a:I

    iput v3, p0, Lcom/tencent/map/a/a/b;->b:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/map/a/a/b;->c:I

    iput v2, p0, Lcom/tencent/map/a/a/b;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/map/a/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/a/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/a/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/b/q;->a(Ljava/lang/String;)V

    if-ltz p1, :cond_44

    if-gt p1, v2, :cond_44

    iput p1, p0, Lcom/tencent/map/a/a/b;->a:I

    :cond_44
    if-ltz p2, :cond_4a

    if-gt p2, v2, :cond_4a

    iput p2, p0, Lcom/tencent/map/a/a/b;->d:I

    :cond_4a
    if-eqz p3, :cond_55

    const/4 v0, 0x3

    if-eq p3, v0, :cond_55

    const/4 v0, 0x4

    if-eq p3, v0, :cond_55

    const/4 v0, 0x7

    if-ne p3, v0, :cond_57

    :cond_55
    iput p3, p0, Lcom/tencent/map/a/a/b;->b:I

    :cond_57
    iget v0, p0, Lcom/tencent/map/a/a/b;->d:I

    if-nez v0, :cond_5d

    iput v3, p0, Lcom/tencent/map/a/a/b;->b:I

    :cond_5d
    iput p4, p0, Lcom/tencent/map/a/a/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/map/a/a/b;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Lcom/tencent/map/a/a/d;)V
    .registers 2

    return-void
.end method

.method public a([BI)V
    .registers 3

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/tencent/map/a/a/b;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/tencent/map/a/a/b;->d:I

    return v0
.end method
