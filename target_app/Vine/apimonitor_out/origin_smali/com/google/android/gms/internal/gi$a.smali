.class final Lcom/google/android/gms/internal/gi$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Cf:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final Cg:Ljava/lang/String;

.field private final Ch:Z

.field private final rO:Ljava/lang/String;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gi$a;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/gi$a;->Cf:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object p3, p0, Lcom/google/android/gms/internal/gi$a;->Cg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/gi$a;->rO:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/gi$a;->Ch:Z

    return-void
.end method


# virtual methods
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$a;->Cf:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$a;->Cg:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$a;->rO:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$a;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getWasLaunched()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi$a;->Ch:Z

    return v0
.end method
