.class final Lcom/google/android/gms/internal/fx$p;
.super Lcom/google/android/gms/internal/fx$av;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx$av",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
        ">;>;",
        "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final GQ:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$p;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$p;->GQ:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$p;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$p;->GQ:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method
