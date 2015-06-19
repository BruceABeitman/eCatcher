.class abstract Lcom/bbm/ui/activities/nc;
.super Lcom/bbm/j/u;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/nc;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/nc;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/StringBuilder;)V
.end method

.method protected final b()Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/nc;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/nc;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->f(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-eqz v1, :cond_fa

    move v1, v2

    :goto_2f
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    iget-object v8, v0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v8, v9, :cond_4c

    move v1, v2

    :cond_4c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_50
    if-eqz v1, :cond_53

    :cond_52
    :goto_52
    return v3

    :cond_53
    move v4, v3

    :goto_54
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7b

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v8

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    iget-object v0, v0, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    iget-object v8, v0, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v8, v9, :cond_72

    move v3, v2

    goto :goto_52

    :cond_72
    iget-object v8, v0, Lcom/bbm/g/o;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_54

    :cond_7b
    if-nez v1, :cond_52

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, v5, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_52

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbm/ui/activities/nc;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e03d4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    move v4, v3

    :goto_b0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_f4

    if-eqz v0, :cond_ed

    move v1, v3

    :goto_b9
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    iget-object v0, v0, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/o;

    iget-object v8, p0, Lcom/bbm/ui/activities/nc;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    const v9, 0x7f0e02d6

    invoke-virtual {v8, v9}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;

    aput-object v0, v9, v3

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    iget-object v0, v0, Lcom/bbm/g/ad;->b:Ljava/lang/String;

    aput-object v0, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    goto :goto_b0

    :cond_ed
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_b9

    :cond_f4
    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/nc;->a(Ljava/lang/StringBuilder;)V

    move v3, v2

    goto/16 :goto_52

    :cond_fa
    move v1, v3

    goto/16 :goto_2f
.end method
