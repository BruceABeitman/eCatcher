.class abstract Lcom/bbm/ui/activities/jc;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/jc;-><init>(Lcom/bbm/ui/activities/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/StringBuilder;)Z
.end method

.method protected final b()Z
    .registers 16

    iget-object v0, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-wide v6, v3, Lcom/bbm/d/es;->p:J

    const-wide/16 v0, 0x0

    move-wide v13, v0

    move v0, v2

    move-wide v1, v13

    :goto_27
    cmp-long v8, v1, v6

    if-gez v8, :cond_4c

    iget-object v8, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v8}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v8

    iget-wide v9, v3, Lcom/bbm/d/es;->n:J

    add-long/2addr v9, v1

    iget-wide v11, v3, Lcom/bbm/d/es;->p:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    invoke-virtual {v8, v4, v9, v10}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v8, v9, :cond_48

    const/4 v0, 0x1

    :cond_48
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    goto :goto_27

    :cond_4c
    if-eqz v0, :cond_50

    const/4 v0, 0x0

    :goto_4f
    return v0

    :cond_50
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fg;

    iget-object v3, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v3

    iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_170

    const/4 v0, 0x1

    :goto_74
    move v1, v0

    goto :goto_55

    :cond_76
    if-eqz v1, :cond_7a

    const/4 v0, 0x0

    goto :goto_4f

    :cond_7a
    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fg;

    if-eqz v1, :cond_cc

    const/4 v2, 0x0

    :goto_94
    sget-object v1, Lcom/bbm/ui/activities/it;->b:[I

    iget-object v5, v0, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    invoke-virtual {v5}, Lcom/bbm/d/fk;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_174

    :pswitch_a1
    iget-object v1, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    :goto_a3
    iget-object v5, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v5

    iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v5, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    const v6, 0x7f0e02d6

    invoke-virtual {v5, v6}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_85

    :cond_cc
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_94

    :pswitch_d3
    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0e02c6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :pswitch_e1
    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v5, v0, Lcom/bbm/d/fg;->r:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;

    move-result-object v1

    iget-object v5, v1, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v6, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;

    if-eq v5, v6, :cond_f9

    iget-object v1, v1, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v5, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;

    if-ne v1, v5, :cond_fc

    :cond_f9
    const-string v1, ""

    goto :goto_a3

    :cond_fc
    iget-object v1, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    goto :goto_a3

    :pswitch_ff
    invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z

    move-result v1

    if-eqz v1, :cond_126

    iget-boolean v1, v0, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0e0310

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :cond_117
    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0e0311

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a3

    :cond_126
    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a3

    :pswitch_138
    invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z

    move-result v1

    if-eqz v1, :cond_160

    iget-boolean v1, v0, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0e0316

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a3

    :cond_151
    iget-object v1, p0, Lcom/bbm/ui/activities/jc;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0e0318

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a3

    :cond_160
    iget-object v1, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    goto/16 :goto_a3

    :cond_164
    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/jc;->a(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const/4 v0, 0x1

    goto/16 :goto_4f

    :cond_16d
    const/4 v0, 0x0

    goto/16 :goto_4f

    :cond_170
    move v0, v1

    goto/16 :goto_74

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_138
        :pswitch_a1
        :pswitch_a1
        :pswitch_d3
        :pswitch_e1
        :pswitch_ff
    .end packed-switch
.end method
