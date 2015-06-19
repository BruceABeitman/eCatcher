.class final Lcom/mapquest/android/maps/ca;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mapquest/android/maps/ca;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final b:I

.field c:J

.field final d:I

.field final e:I

.field f:Lcom/mapquest/android/maps/cf;

.field g:Landroid/graphics/Bitmap;

.field h:[B

.field final i:Ljava/lang/String;

.field j:Landroid/graphics/Rect;

.field k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private n:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/cf;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mapquest/android/maps/ca;->d:I

    iput p2, p0, Lcom/mapquest/android/maps/ca;->e:I

    iput p3, p0, Lcom/mapquest/android/maps/ca;->l:I

    iput p4, p0, Lcom/mapquest/android/maps/ca;->m:I

    iput p5, p0, Lcom/mapquest/android/maps/ca;->b:I

    iput-object p6, p0, Lcom/mapquest/android/maps/ca;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapquest/android/maps/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapquest/android/maps/ca;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapquest/android/maps/ca;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->h:[B

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->h:[B

    array-length v1, v1

    if-gtz v1, :cond_d

    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/mapquest/android/maps/ca;

    iget v0, p0, Lcom/mapquest/android/maps/ca;->n:I

    iget v1, p1, Lcom/mapquest/android/maps/ca;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Lcom/mapquest/android/maps/ca;

    iget-object v0, p0, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tile [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mapquest/android/maps/ca;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/ca;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/ca;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/ca;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/ca;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/ca;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
