.class final Lcom/google/android/gms/internal/jq$1;
.super Lcom/google/android/gms/drive/metadata/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jq;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jq$1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/jq$1;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
