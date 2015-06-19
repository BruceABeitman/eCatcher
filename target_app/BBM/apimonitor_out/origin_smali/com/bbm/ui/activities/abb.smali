.class final Lcom/bbm/ui/activities/abb;
.super Ljava/lang/Object;
.source "OwnedChannelLobbyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abb;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel URL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/abb;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " post clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/abb;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    const-class v2, Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bbm_channel_uri"

    iget-object v2, p0, Lcom/bbm/ui/activities/abb;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/abb;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
