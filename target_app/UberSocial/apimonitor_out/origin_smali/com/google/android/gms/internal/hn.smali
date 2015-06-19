.class public final Lcom/google/android/gms/internal/hn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/pr;


# instance fields
.field final a:I

.field final b:Ljava/util/List;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/pr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hn;->a:I

    if-nez p2, :cond_24

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->b:Ljava/util/List;

    if-nez p3, :cond_11

    const-string p3, ""

    :cond_11
    iput-object p3, p0, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hn;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    :goto_23
    return-void

    :cond_24
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_29
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/hn;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    goto :goto_23
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hn;->d:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
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

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    if-ne v2, v3, :cond_23

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/hn;->d:Z

    if-eq v2, v3, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "textQuery"

    iget-object v2, p0, Lcom/google/android/gms/internal/hn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "isOpenNowRequired"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hn;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pr;->a(Lcom/google/android/gms/internal/hn;Landroid/os/Parcel;I)V

    return-void
.end method
