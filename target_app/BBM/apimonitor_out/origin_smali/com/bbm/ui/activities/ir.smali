.class final Lcom/bbm/ui/activities/ir;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_b

    :cond_1c
    iget-object v3, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/ConversationActivity;->d:Landroid/content/SharedPreferences;

    const-string v4, "has_shown_timed_message_tips"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bbm/af;->u()Z

    move-result v4

    iget-object v5, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_90

    iget-boolean v2, v0, Lcom/bbm/d/es;->i:Z

    if-nez v2, :cond_5f

    iget-boolean v2, v0, Lcom/bbm/d/es;->k:Z

    if-nez v2, :cond_5f

    if-eqz v4, :cond_5f

    if-nez v3, :cond_5f

    iget-object v2, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->an(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->n(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_58
    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aJ(Lcom/bbm/ui/activities/ConversationActivity;)V

    :cond_5d
    :goto_5d
    move v0, v1

    goto :goto_b

    :cond_5f
    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/af;->t()Z

    move-result v2

    if-nez v2, :cond_71

    iget-wide v2, v0, Lcom/bbm/d/es;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5d

    :cond_71
    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aK(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->C(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/bbm/ui/activities/is;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/is;-><init>(Lcom/bbm/ui/activities/ir;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5d

    :cond_8a
    iget-object v0, p0, Lcom/bbm/ui/activities/ir;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aL(Lcom/bbm/ui/activities/ConversationActivity;)Z

    goto :goto_5d

    :cond_90
    iget-object v0, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v3, :cond_99

    move v0, v1

    goto/16 :goto_b

    :cond_99
    move v0, v2

    goto/16 :goto_b
.end method
