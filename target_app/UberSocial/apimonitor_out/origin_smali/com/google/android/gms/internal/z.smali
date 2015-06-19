.class public final Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/b;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/am;

.field public final k:Landroid/location/Location;

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/b;

    return-void
.end method

.method constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/am;Landroid/location/Location;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/z;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/z;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/z;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/z;->f:Z

    iput p8, p0, Lcom/google/android/gms/internal/z;->g:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/z;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    iput-object p12, p0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/q;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/z;->a:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_11
    iput-wide v0, p0, Lcom/google/android/gms/internal/z;->b:J

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/z;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_32
    iput-object v0, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/q;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->f:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/z;->g:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->e()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    const-class v0, Lcom/google/android/gms/ads/b/a/a;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/a/a;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/a/a;->a()Landroid/os/Bundle;

    move-result-object v0

    :goto_54
    iput-object v0, p0, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->h:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/q;->h()Lcom/google/android/gms/ads/search/a;

    move-result-object v0

    if-eqz v0, :cond_6d

    new-instance v2, Lcom/google/android/gms/internal/am;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/ads/search/a;)V

    :cond_6d
    iput-object v2, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    return-void

    :cond_70
    const-wide/16 v0, -0x1

    goto :goto_11

    :cond_73
    move-object v0, v2

    goto :goto_32

    :cond_75
    move-object v0, v2

    goto :goto_54
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/internal/z;Landroid/os/Parcel;I)V

    return-void
.end method
