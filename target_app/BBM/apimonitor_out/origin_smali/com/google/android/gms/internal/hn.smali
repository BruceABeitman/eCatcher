.class public final Lcom/google/android/gms/internal/hn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ho;


# instance fields
.field final LA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;"
        }
    .end annotation
.end field

.field private final LB:Ljava/lang/String;

.field private final LC:Z

.field private final LD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;"
        }
    .end annotation
.end field

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ho;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/ho;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hn;->wj:I

    if-nez p2, :cond_24

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->LA:Ljava/util/List;

    if-nez p3, :cond_11

    const-string p3, ""

    :cond_11
    iput-object p3, p0, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hn;->LC:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->LA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    :goto_23
    return-void

    :cond_24
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_29
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/hn;->LA:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    goto :goto_23
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/ho;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/hn;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/hn;

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    if-ne v2, v3, :cond_23

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->LC:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/hn;->LC:Z

    if-eq v2, v3, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public final gr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    return-object v0
.end method

.method public final gs()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hn;->LC:Z

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->LC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LD:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "textQuery"

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->LB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "isOpenNowRequired"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->LC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/ho;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ho;->a(Lcom/google/android/gms/internal/hn;Landroid/os/Parcel;I)V

    return-void
.end method
