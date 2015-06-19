.class final Lcom/bbm/ui/activities/hc;
.super Landroid/os/Handler;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "invokeUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "senderId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "receiverId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "token"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "displayName"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "installUrl"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_37
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_57

    move-result-wide v6

    :goto_3b
    cmp-long v6, v6, v8

    if-nez v6, :cond_71

    iget-object v0, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const v2, 0x7f0e0564

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const v3, 0x7f0e0560

    invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dm;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void

    :catch_57
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Received invalid receiver regId: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-static {v7, v10}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-wide v6, v8

    goto :goto_3b

    :cond_71
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v2, v3, v4}, Lcom/bbm/util/dm;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoke TPA Uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v6}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_dd

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TPA: app is not installed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v5, v0}, Lcom/bbm/util/dm;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_dd
    iget-object v0, p0, Lcom/bbm/ui/activities/hc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_56
.end method
