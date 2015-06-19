.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/multiplayer/k; = null

.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = -0x1


# instance fields
.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/k;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/k;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->i:I

    invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->j:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/oh;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Z)V

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->k:I

    iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->i:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->k:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->l:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/k;->a(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;I)V

    return-void
.end method
