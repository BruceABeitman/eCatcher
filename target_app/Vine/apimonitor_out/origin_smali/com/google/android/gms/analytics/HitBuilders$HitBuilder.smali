.class public Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HitBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field wA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;"
        }
    .end annotation
.end field

.field private ww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wx:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

.field wy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;>;"
        }
    .end annotation
.end field

.field wz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wy:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_8

    const-string v0, "product should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    :goto_7
    return-object p0

    :cond_8
    if-nez p2, :cond_c

    const-string p2, ""

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wy:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wy:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wy:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_8

    const-string v0, "product should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    :goto_7
    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_8

    const-string v0, "promotion should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    :goto_7
    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public build()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wx:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wx:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-static {v1}, Lcom/google/android/gms/analytics/o;->v(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->X(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v1}, Lcom/google/android/gms/analytics/o;->u(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Product;->X(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/analytics/o;->x(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    :goto_7f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/google/android/gms/analytics/o;->w(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/ecommerce/Product;->X(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7f

    :cond_ab
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "nm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_64

    :cond_d5
    return-object v5
.end method

.method protected get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uT:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-object p0

    :cond_11
    const-string v0, " HitBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public final setAll(Ljava/util/Map;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uU:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    if-nez p1, :cond_c

    :goto_b
    return-object p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_b
.end method

.method public setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uW:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-object p0

    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->U(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_13
.end method

.method public setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->s(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method protected setHitType(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "&t"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "&sc"

    const-string v1, "start"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setNonInteraction(Z)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const-string v0, "&ni"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/ProductAction;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wx:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    return-object p0
.end method

.method public setPromotionAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->ww:Ljava/util/Map;

    const-string v1, "&promoa"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
