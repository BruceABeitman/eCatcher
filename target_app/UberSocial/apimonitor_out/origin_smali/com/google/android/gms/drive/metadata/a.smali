.class public abstract Lcom/google/android/gms/drive/metadata/a;
.super Lcom/google/android/gms/drive/metadata/b;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot read collections from a dataHolder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/a;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
