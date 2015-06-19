.class public Lcom/bbm/ui/e/ah;
.super Ljava/lang/Object;
.source "GroupNewUserJoinUpdate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bbm/g/ak;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "Clicked"

    const-class v2, Lcom/bbm/ui/e/ah;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/g/ak;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/g/o;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;

    move-result-object v4

    iget-object v2, v4, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/util/bh;->name()Ljava/lang/String;

    move-result-object v2

    const-string v5, "YES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Conversation"

    :try_start_37
    iget-object v0, v4, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;

    move-result-object v0

    const-string v3, "conversation_uri"

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_55

    move-object v0, v1

    move-object v1, v2

    :goto_4a
    if-eqz v1, :cond_54

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v1, "open"

    invoke-static {v1, v0}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    return-void

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_4a

    :cond_5c
    const-string v3, "NO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v1, v1, Lcom/bbm/g/o;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_4a

    :cond_6b
    const-string v1, "MAYBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_4a
.end method

.method public static a(Lcom/bbm/g/al;)Z
    .registers 2

    sget-object v0, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
