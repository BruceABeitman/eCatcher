.class public Lcom/google/android/gms/drive/metadata/internal/i;
.super Lcom/google/android/gms/drive/metadata/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/util/Collection;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1f

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/i;->a(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DataHolder supplied invalid JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/i;->a(Landroid/os/Bundle;Ljava/util/Collection;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected synthetic b(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/i;->c(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/i;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
