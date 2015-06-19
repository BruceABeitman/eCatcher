.class public abstract Lcom/google/android/gms/drive/metadata/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;

.field private final c:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->b:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/drive/metadata/b;->c:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->b:Ljava/util/Set;

    iput p3, p0, Lcom/google/android/gms/drive/metadata/b;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/b;->b(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public final a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V
    .registers 6

    const-string v0, "dataHolder"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/drive/metadata/b;->c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/drive/metadata/b;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected abstract b(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method protected abstract b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/drive/metadata/b;->c:I

    return v0
.end method

.method public final c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/b;->b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/b;->a:Ljava/lang/String;

    return-object v0
.end method
