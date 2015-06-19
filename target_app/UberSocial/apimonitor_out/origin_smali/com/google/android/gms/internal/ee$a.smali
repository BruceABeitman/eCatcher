.class public final Lcom/google/android/gms/internal/ee$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hu;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/hu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ee$a;->CREATOR:Lcom/google/android/gms/internal/hu;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee$a;->c:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/ee$a;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ee$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/google/android/gms/internal/ee$a;->d:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ee$a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
    .registers 11

    const/4 v1, 0x3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ee$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "<<default account>>"

    goto :goto_6
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ee$a;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ee$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ee$a;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/ee$a;Landroid/os/Parcel;I)V

    return-void
.end method
