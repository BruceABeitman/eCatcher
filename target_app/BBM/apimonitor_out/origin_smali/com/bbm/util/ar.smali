.class final Lcom/bbm/util/ar;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/f/a/l;

.field final synthetic b:Lcom/bbm/d/ec;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/b/f/a/l;Lcom/bbm/d/ec;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/util/ar;->a:Lcom/google/b/f/a/l;

    iput-object p2, p0, Lcom/bbm/util/ar;->b:Lcom/bbm/d/ec;

    iput-object p3, p0, Lcom/bbm/util/ar;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bbm/util/ar;->a:Lcom/google/b/f/a/l;

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Starting chat with %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bbm/util/ar;->b:Lcom/bbm/d/ec;

    iget-object v4, v4, Lcom/bbm/d/ec;->G:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ar;->c:Landroid/app/Activity;

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conversation_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/util/ar;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "open"

    const-string v1, "Conversation"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method
