.class public abstract Lcom/google/android/gms/drive/metadata/internal/j;
.super Lcom/google/android/gms/drive/metadata/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/google/android/gms/drive/metadata/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/j;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/j;->a(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/j;->l(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected l(Landroid/os/Bundle;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/j;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
