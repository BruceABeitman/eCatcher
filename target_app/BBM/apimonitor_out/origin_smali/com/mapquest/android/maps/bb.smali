.class final Lcom/mapquest/android/maps/bb;
.super Ljava/util/LinkedHashMap;
.source "MemoryTileCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field final synthetic b:Lcom/mapquest/android/maps/ba;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ba;I)V
    .registers 5

    iput-object p1, p0, Lcom/mapquest/android/maps/bb;->b:Lcom/mapquest/android/maps/ba;

    const v0, 0x3f19999a

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/mapquest/android/maps/bb;->a:I

    iput p2, p0, Lcom/mapquest/android/maps/bb;->a:I

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mapquest/android/maps/bb;->size()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/bb;->a:I

    if-le v0, v1, :cond_17

    iget-object v0, p0, Lcom/mapquest/android/maps/bb;->b:Lcom/mapquest/android/maps/ba;

    iget-object v1, v0, Lcom/mapquest/android/maps/ba;->a:Lcom/mapquest/android/maps/bc;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bc;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
