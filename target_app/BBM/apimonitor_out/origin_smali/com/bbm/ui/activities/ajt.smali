.class final Lcom/bbm/ui/activities/ajt;
.super Lcom/bbm/j/k;
.source "ViewSubscribedChannelActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ajt;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ajt;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v1, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const v2, 0x7f0a0040

    iget-object v0, p0, Lcom/bbm/ui/activities/ajt;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    invoke-static {v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V

    return-void
.end method
