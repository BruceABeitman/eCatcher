.class final Lcom/bbm/ui/activities/at;
.super Lcom/bbm/j/k;
.source "BroadcastActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/at;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/at;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->j(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/at;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->i(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/activities/at;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/BroadcastActivity;->d:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method
