.class final Lcom/bbm/ui/activities/gr;
.super Lcom/bbm/ui/ae;
.source "ConversationActivity.java"


# instance fields
.field final synthetic d:Lcom/bbm/ui/activities/gq;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/gq;Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/ae;-><init>(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const-class v2, Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_conv"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ConversationActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .registers 4

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    iget-object v0, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const-class v2, Lcom/bbm/ui/activities/GlympseViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_CONV_URI"

    iget-object v2, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v2, v2, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/gr;->d:Lcom/bbm/ui/activities/gq;

    iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_32
    return-void
.end method
