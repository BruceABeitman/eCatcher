.class public Lcom/pinguo/camera360/shop/model/tri/TryEffectDict$TryEffectComparator;
.super Ljava/lang/Object;
.source "TryEffectDict.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TryEffectComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pinguo/camera360/effect/model/entity/Effect;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pinguo/camera360/effect/model/entity/Effect;Lcom/pinguo/camera360/effect/model/entity/Effect;)I
    .registers 5

    iget v0, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I

    iget v1, p2, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/pinguo/camera360/effect/model/entity/Effect;

    check-cast p2, Lcom/pinguo/camera360/effect/model/entity/Effect;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict$TryEffectComparator;->compare(Lcom/pinguo/camera360/effect/model/entity/Effect;Lcom/pinguo/camera360/effect/model/entity/Effect;)I

    move-result v0

    return v0
.end method
