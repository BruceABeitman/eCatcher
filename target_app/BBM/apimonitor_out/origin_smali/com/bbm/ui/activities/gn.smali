.class final Lcom/bbm/ui/activities/gn;
.super Lcom/bbm/j/k;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/gn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/gn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->V(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/a/g;->c:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, p0, Lcom/bbm/ui/activities/gn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/activities/gn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/cs;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/cs;->b(Z)V

    :cond_39
    return-void
.end method
