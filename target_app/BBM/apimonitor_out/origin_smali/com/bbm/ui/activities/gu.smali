.class final Lcom/bbm/ui/activities/gu;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onTextChanged"

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->B(Lcom/bbm/ui/activities/ConversationActivity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->aj(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->aj(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/util/bj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    :cond_28
    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ak(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    :goto_35
    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V

    :cond_4c
    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->al(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v3, v2, Lcom/bbm/ui/activities/ConversationActivity;->n:Lcom/bbm/ui/activities/aij;

    if-eqz v3, :cond_b2

    iget-object v3, v2, Lcom/bbm/ui/activities/ConversationActivity;->n:Lcom/bbm/ui/activities/aij;

    iget-wide v3, v3, Lcom/bbm/ui/activities/aij;->f:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b0

    iget-object v2, v2, Lcom/bbm/ui/activities/ConversationActivity;->n:Lcom/bbm/ui/activities/aij;

    iget-wide v2, v2, Lcom/bbm/ui/activities/aij;->f:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_b0

    :goto_85
    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->am(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->am(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/aij;->a()V

    :cond_98
    iget-object v0, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->c(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_a2
    iget-object v2, p0, Lcom/bbm/ui/activities/gu;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ak(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_35

    :cond_b0
    move v0, v1

    goto :goto_85

    :cond_b2
    move v0, v1

    goto :goto_85
.end method
