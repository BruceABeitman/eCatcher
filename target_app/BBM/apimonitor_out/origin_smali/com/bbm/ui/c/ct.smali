.class final Lcom/bbm/ui/c/ct;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/f/a/l;

.field final synthetic b:Lcom/bbm/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ck;Lcom/google/b/f/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ct;->b:Lcom/bbm/ui/c/ck;

    iput-object p2, p0, Lcom/bbm/ui/c/ct;->a:Lcom/google/b/f/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/c/ct;->a:Lcom/google/b/f/a/l;

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/c/ct;->b:Lcom/bbm/ui/c/ck;

    invoke-virtual {v2}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conversation_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ct;->b:Lcom/bbm/ui/c/ck;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/ck;->startActivity(Landroid/content/Intent;)V

    const-string v0, "open"

    const-string v1, "Conversation"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_26
.end method
