.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;
.super Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuestCompletedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">.b<",
        "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final ND:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;Lcom/google/android/gms/games/quest/Quest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->ND:Lcom/google/android/gms/games/quest/Quest;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->ND:Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/quest/QuestUpdateListener;->onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V

    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/quest/QuestUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->b(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    return-void
.end method

.method protected fp()V
    .registers 1

    return-void
.end method
