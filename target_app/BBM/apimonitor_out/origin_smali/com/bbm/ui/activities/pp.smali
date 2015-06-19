.class final Lcom/bbm/ui/activities/pp;
.super Lcom/bbm/j/k;
.source "GroupLobbyActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    new-instance v1, Lcom/bbm/ui/activities/pq;

    iget-object v0, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/pq;-><init>(Lcom/bbm/ui/activities/pp;Lcom/bbm/j/r;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->o(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/bbm/d/b/m;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v1, p0, Lcom/bbm/ui/activities/pp;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;I)V

    :cond_43
    return-void
.end method
