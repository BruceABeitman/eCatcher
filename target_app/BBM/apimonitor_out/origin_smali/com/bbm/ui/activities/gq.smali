.class final Lcom/bbm/ui/activities/gq;
.super Lcom/bbm/j/k;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 12

    const/high16 v10, 0x48

    const/16 v9, 0x80

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v5, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v5, :cond_35f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v7, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    iget-boolean v1, v0, Lcom/bbm/d/es;->i:Z

    if-nez v1, :cond_60

    move v1, v3

    :goto_25
    invoke-virtual {v7, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setHasStickerPicker(Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/a/l;

    iget-boolean v7, v0, Lcom/bbm/d/es;->i:Z

    if-eqz v7, :cond_cb

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v5, v0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-boolean v5, v1, Lcom/bbm/d/ec;->q:Z

    if-eqz v5, :cond_62

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->Z(Lcom/bbm/ui/activities/ConversationActivity;)V

    :cond_4d
    :goto_4d
    iget-wide v1, v0, Lcom/bbm/d/es;->n:J

    iget-wide v3, v0, Lcom/bbm/d/es;->p:J

    iget-object v0, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ai(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/e/au;

    move-result-object v0

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/bbm/ui/e/au;->a(JJ)V

    return-void

    :cond_60
    move v1, v4

    goto :goto_25

    :cond_62
    iget-object v5, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    iget-object v7, v5, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    iget-object v5, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ConversationActivity;->aa(Lcom/bbm/ui/activities/ConversationActivity;)V

    invoke-static {v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/es;)Z

    move-result v5

    if-nez v5, :cond_7f

    if-nez v6, :cond_c9

    iget-boolean v1, v1, Lcom/bbm/d/ec;->d:Z

    if-nez v1, :cond_c9

    :cond_7f
    :goto_7f
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    if-eqz v3, :cond_86

    move v4, v2

    :cond_86
    invoke-virtual {v1, v4}, Lcom/bbm/ui/EmoticonInputPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/cs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/z;

    if-eq v1, v2, :cond_4d

    :cond_b5
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ab(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/cs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_c9
    move v3, v4

    goto :goto_7f

    :cond_cb
    if-ne v6, v3, :cond_301

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ConversationActivity;->f:Lcom/bbm/j/a;

    invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_301

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_f1

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/cs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/ae;

    if-eq v1, v2, :cond_4d

    :cond_f1
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/gr;

    iget-object v6, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v6}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v7}, Lcom/bbm/ui/activities/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v8, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v8}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v6, v7, v8}, Lcom/bbm/ui/activities/gr;-><init>(Lcom/bbm/ui/activities/gq;Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/gp;)Lcom/bbm/d/gp;

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v6

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ac(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/fk;

    move-result-object v1

    iget-boolean v2, v1, Lcom/bbm/util/fk;->c:Z

    if-nez v2, :cond_14d

    iput-boolean v3, v1, Lcom/bbm/util/fk;->c:Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/bbm/util/fk;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/bbm/util/fk;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_14d
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/ae;

    iget-object v2, v6, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2aa

    iget-object v2, v6, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rim/bbm/BbmMediaCallService;

    invoke-virtual {v2, v3}, Lcom/rim/bbm/BbmMediaCallService;->isServiceEnabled(I)Z

    move-result v2

    :goto_173
    if-eqz v2, :cond_2fd

    invoke-virtual {v1, v3}, Lcom/bbm/ui/ae;->a(Z)V

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ConversationActivity;->d:Landroid/content/SharedPreferences;

    const-string v5, "allow_mobile_calls"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_190

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ac(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/fk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/util/fk;->a()Z

    move-result v2

    if-eqz v2, :cond_2ad

    :cond_190
    invoke-virtual {v6}, Lcom/bbm/n/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1ae

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z

    move-result v2

    if-nez v2, :cond_1ae

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z

    move-result v2

    if-eqz v2, :cond_2ad

    :cond_1ae
    move v5, v3

    :goto_1af
    iget-object v2, v1, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_1c2

    iget-object v2, v1, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setActivated(Z)V

    :cond_1c2
    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v2, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/gs;

    invoke-direct {v2, p0, v6}, Lcom/bbm/ui/activities/gs;-><init>(Lcom/bbm/ui/activities/gq;Lcom/bbm/n/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z

    move-result v1

    if-nez v1, :cond_1f5

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    :cond_1f5
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ae(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v1

    if-nez v1, :cond_20b

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v3}, Lcom/bbm/ui/activities/ConversationActivity;->c(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    :cond_20b
    invoke-virtual {v6}, Lcom/bbm/n/b;->g()Z

    move-result v1

    if-nez v1, :cond_21f

    iget-object v1, v6, Lcom/bbm/n/b;->e:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b0

    :cond_21f
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    if-eqz v1, :cond_2b0

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/util/cy;->b()V

    :cond_230
    :goto_230
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bbm/n/b;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setMuteActivated(Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bbm/n/b;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setSpeakerPhoneActivated(Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z

    move-result v1

    if-eqz v1, :cond_268

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setCallConnected()V

    :cond_268
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setConversationUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b()V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v1}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_29e
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ag(Lcom/bbm/ui/activities/ConversationActivity;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v3}, Lcom/bbm/ui/activities/ConversationActivity;->d(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    goto/16 :goto_4d

    :cond_2aa
    move v2, v4

    goto/16 :goto_173

    :cond_2ad
    move v5, v4

    goto/16 :goto_1af

    :cond_2b0
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    if-eqz v1, :cond_230

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/util/cy;->a()V

    goto/16 :goto_230

    :cond_2c3
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ae(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v1

    if-eqz v1, :cond_2d9

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v4}, Lcom/bbm/ui/activities/ConversationActivity;->c(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    :cond_2d9
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    if-eqz v1, :cond_2ea

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->af(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cy;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/util/cy;->b()V

    :cond_2ea
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c()V

    goto :goto_29e

    :cond_2fd
    invoke-virtual {v1, v4}, Lcom/bbm/ui/ae;->a(Z)V

    goto :goto_29e

    :cond_301
    iget-object v2, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ConversationActivity;->f:Lcom/bbm/j/a;

    invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_325

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/cs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/am;

    if-eq v1, v2, :cond_4d

    :cond_325
    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->W(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/gt;

    iget-object v3, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v6}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/bbm/ui/activities/gt;-><init>(Lcom/bbm/ui/activities/gq;Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->ah(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v4}, Lcom/bbm/ui/activities/ConversationActivity;->d(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v1}, Lcom/bbm/ui/EmoticonInputPanel;->d()V

    goto/16 :goto_4d

    :cond_35f
    const-string v1, "NULL participants"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_4d
.end method
