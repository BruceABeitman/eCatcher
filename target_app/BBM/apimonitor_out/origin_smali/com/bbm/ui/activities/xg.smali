.class final Lcom/bbm/ui/activities/xg;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/f/a/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/b/f/a/l;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 9

    iput-object p1, p0, Lcom/bbm/ui/activities/xg;->a:Lcom/google/b/f/a/l;

    iput-object p2, p0, Lcom/bbm/ui/activities/xg;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/activities/xg;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/bbm/ui/activities/xg;->d:Landroid/net/Uri;

    iput-object p5, p0, Lcom/bbm/ui/activities/xg;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bbm/ui/activities/xg;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bbm/ui/activities/xg;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/bbm/ui/activities/xg;->h:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->a:Lcom/google/b/f/a/l;

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Starting chat with %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bbm/ui/activities/xg;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->c:Landroid/content/Context;

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conversation_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->d:Landroid/net/Uri;

    if-eqz v0, :cond_37

    const-string v0, "picturePath"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/activities/xg;->d:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_37
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->e:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-string v0, "sharedText"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_42
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "contextContentId"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_51
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "contextUserUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_60
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "contextContentType"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6f
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_7a

    const-string v0, "contextContentType_partnerAppContent"

    iget-object v2, p0, Lcom/bbm/ui/activities/xg;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7a
    iget-object v0, p0, Lcom/bbm/ui/activities/xg;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "open"

    const-string v1, "Conversation"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_86} :catch_87

    :goto_86
    return-void

    :catch_87
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_86
.end method
