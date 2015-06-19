.class final Lcom/bbm/ui/activities/eg;
.super Lcom/bbm/ui/cj;
.source "ChannelSettingsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->c(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/bbm/ui/activities/eh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/eh;-><init>(Lcom/bbm/ui/activities/eg;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->finish()V

    return-void
.end method
