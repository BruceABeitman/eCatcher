.class final Lcom/bbm/ui/activities/mu;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

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
    .registers 9

    iget-object v0, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->g(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    iget-wide v0, v0, Lcom/bbm/ui/activities/aij;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    iget-wide v0, v0, Lcom/bbm/ui/activities/aij;->f:J

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_37

    :cond_2e
    iget-object v0, p0, Lcom/bbm/ui/activities/mu;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/aij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/aij;->a()V

    :cond_37
    return-void
.end method
