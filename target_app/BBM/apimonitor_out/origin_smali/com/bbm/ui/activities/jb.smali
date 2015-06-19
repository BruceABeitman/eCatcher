.class final Lcom/bbm/ui/activities/jb;
.super Lcom/bbm/ui/activities/jc;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/jc;-><init>(Lcom/bbm/ui/activities/ConversationActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/jb;-><init>(Lcom/bbm/ui/activities/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;)Z
    .registers 13

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v1, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iget-object v1, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v2, 0x14

    invoke-static {v1, v7, v8, v2}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Lcom/bbm/d/gp;

    invoke-direct {v2}, Lcom/bbm/d/gp;-><init>()V

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    iput-object v1, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    if-lez v6, :cond_75

    iget-object v1, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v8

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    :goto_53
    if-lt v6, v9, :cond_77

    iget-object v2, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    :goto_67
    iget-object v2, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v2, v8, :cond_73

    iget-object v2, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v2, v8, :cond_79

    :cond_73
    move v0, v3

    goto :goto_17

    :cond_75
    move-object v1, v2

    goto :goto_53

    :cond_77
    move-object v0, v2

    goto :goto_67

    :cond_79
    invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    if-lt v6, v9, :cond_c3

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    :goto_83
    if-ne v6, v4, :cond_c6

    iget-object v0, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0297

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object v7, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9c
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    goto/16 :goto_17

    :cond_c3
    const-string v0, ""

    goto :goto_83

    :cond_c6
    if-ne v6, v9, :cond_e2

    iget-object v2, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e0296

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v0, v6, v4

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    :cond_e2
    iget-object v2, p0, Lcom/bbm/ui/activities/jb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e0295

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v0, v6, v4

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9c
.end method
