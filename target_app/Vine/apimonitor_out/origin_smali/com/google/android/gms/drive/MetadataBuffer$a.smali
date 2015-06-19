.class Lcom/google/android/gms/drive/MetadataBuffer$a;
.super Lcom/google/android/gms/drive/Metadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DD:Lcom/google/android/gms/common/data/DataHolder;

.field private final EA:I

.field private final HR:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DD:Lcom/google/android/gms/common/data/DataHolder;

    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HR:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->EA:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/drive/MetadataBuffer$a;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HR:I

    return v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DD:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HR:I

    iget v2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->EA:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataBuffer$a;->gg()Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public gg()Lcom/google/android/gms/drive/Metadata;
    .registers 7

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gA()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/e;->gz()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    instance-of v3, v0, Lcom/google/android/gms/drive/metadata/b;

    if-nez v3, :cond_c

    sget-object v3, Lcom/google/android/gms/internal/ir;->Kn:Lcom/google/android/gms/drive/metadata/MetadataField;

    if-eq v0, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DD:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HR:I

    iget v5, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->EA:I

    invoke-interface {v0, v3, v1, v4, v5}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V

    goto :goto_c

    :cond_2a
    new-instance v0, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DD:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
