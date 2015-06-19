.class public abstract Lcom/google/android/gms/drive/metadata/internal/h;
.super Lcom/google/android/gms/drive/metadata/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/google/android/gms/drive/metadata/f",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const v0, 0x432380

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/metadata/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/f;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
