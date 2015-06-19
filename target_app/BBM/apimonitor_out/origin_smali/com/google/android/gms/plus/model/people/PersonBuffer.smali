.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tu:Lcom/google/android/gms/common/data/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/c",
            "<",
            "Lcom/google/android/gms/internal/ir;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/android/gms/common/data/c;

    sget-object v1, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/is;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->Tu:Lcom/google/android/gms/common/data/c;

    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->Tu:Lcom/google/android/gms/common/data/c;

    goto :goto_1f
.end method


# virtual methods
.method public final get(I)Lcom/google/android/gms/plus/model/people/Person;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->Tu:Lcom/google/android/gms/common/data/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->Tu:Lcom/google/android/gms/common/data/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/c;->H(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/jc;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto :goto_c
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
