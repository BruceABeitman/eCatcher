.class final Lcom/google/android/gms/common/data/DataHolder$1;
.super Lcom/google/android/gms/common/data/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/data/c;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/c;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
