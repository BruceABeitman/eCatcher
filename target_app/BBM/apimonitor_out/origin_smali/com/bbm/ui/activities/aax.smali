.class final Lcom/bbm/ui/activities/aax;
.super Lcom/bbm/ui/cj;
.source "OwnedChannelLobbyActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0, p1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    iget-object v1, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aax;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->o()V

    return-void
.end method
