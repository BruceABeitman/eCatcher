.class Lcom/google/android/gms/internal/km$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Moments$LoadMomentsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/km$a;->an(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aci:Lcom/google/android/gms/internal/km$a;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/km$a$1;->aci:Lcom/google/android/gms/internal/km$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/km$a$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/km$a$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
