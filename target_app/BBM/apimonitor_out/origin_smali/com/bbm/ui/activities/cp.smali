.class final Lcom/bbm/ui/activities/cp;
.super Lcom/bbm/ui/cj;
.source "ChannelDetailsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelDetailsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cp;->a:Lcom/bbm/ui/activities/ChannelDetailsActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/cp;->a:Lcom/bbm/ui/activities/ChannelDetailsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/cp;->a:Lcom/bbm/ui/activities/ChannelDetailsActivity;

    invoke-static {v0, p1}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a(Lcom/bbm/ui/activities/ChannelDetailsActivity;I)V

    return-void
.end method
