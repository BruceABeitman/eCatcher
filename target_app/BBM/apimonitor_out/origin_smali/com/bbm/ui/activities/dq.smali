.class final Lcom/bbm/ui/activities/dq;
.super Lcom/bbm/ui/d/i;
.source "ChannelReportsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/dp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/dp;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/dq;->a:Lcom/bbm/ui/activities/dp;

    invoke-direct {p0}, Lcom/bbm/ui/d/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/dq;->a:Lcom/bbm/ui/activities/dp;

    iget-object v0, v0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->e(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/dq;->a:Lcom/bbm/ui/activities/dp;

    iget-object v0, v0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->f(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/gk;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/dq;->a:Lcom/bbm/ui/activities/dp;

    iget-object v0, v0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->f(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/dq;->a:Lcom/bbm/ui/activities/dp;

    iget-object v0, v0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
