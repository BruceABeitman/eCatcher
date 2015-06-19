.class final Lcom/bbm/ui/activities/ady;
.super Lcom/bbm/j/k;
.source "SearchResultsChannelsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/x;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/x;->d()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Z)Z

    :goto_2c
    return-void

    :cond_2d
    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->k(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0, v2}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Z)Z

    goto :goto_2c

    :cond_3a
    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->l(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ady;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0, v2}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Z)Z

    goto :goto_2c
.end method
