.class Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pp:Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->Pp:Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
