.class final Lcom/bbm/ui/activities/as;
.super Lcom/bbm/j/k;
.source "BroadcastActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/as;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/as;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->f(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/activities/as;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->h(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/CustomListView;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/as;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->g(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/b/m;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_2b
    invoke-virtual {v2, v0}, Lcom/bbm/ui/CustomListView;->setVisibility(I)V

    :goto_2e
    return-void

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b

    :cond_31
    iget-object v0, p0, Lcom/bbm/ui/activities/as;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->h(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/CustomListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/CustomListView;->setVisibility(I)V

    goto :goto_2e
.end method
