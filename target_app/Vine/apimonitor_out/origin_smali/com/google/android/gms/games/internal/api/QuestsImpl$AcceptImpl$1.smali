.class Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;->S(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qq:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->Qq:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
