.class final Lcom/bbm/ui/c/ep;
.super Lcom/bbm/j/k;
.source "OwnProfileDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ej;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->g(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->E()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    move v1, v2

    :goto_1c
    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ge;

    const-string v4, "Available"

    iget-object v5, v0, Lcom/bbm/d/ge;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v4}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    const v6, 0x7f0e04db

    invoke-virtual {v5, v6}, Lcom/bbm/ui/c/ej;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/bbm/d/ge;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_5a
    const-string v4, "Busy"

    iget-object v5, v0, Lcom/bbm/d/ge;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v4}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    const v6, 0x7f0e04dc

    invoke-virtual {v5, v6}, Lcom/bbm/ui/c/ej;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/bbm/d/ge;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_7d
    iget-object v4, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v4}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, v0, Lcom/bbm/d/ge;->d:Ljava/lang/String;

    iget-wide v6, v0, Lcom/bbm/d/ge;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_8f
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    const v3, 0x7f0e05e1

    invoke-virtual {v1, v3}, Lcom/bbm/ui/c/ej;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    iget-object v0, v0, Lcom/bbm/ui/c/ej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    iget-object v0, v0, Lcom/bbm/ui/c/ej;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v0

    if-nez v0, :cond_172

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    new-instance v1, Lcom/bbm/ui/l;

    iget-object v3, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-virtual {v3}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    const v5, 0x7f0e05d6

    invoke-virtual {v4, v5}, Lcom/bbm/ui/c/ej;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    iget-object v5, v5, Lcom/bbm/ui/c/ej;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ej;->a(Lcom/bbm/ui/c/ej;Lcom/bbm/ui/l;)Lcom/bbm/ui/l;

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->j(Lcom/bbm/ui/c/ej;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_ee
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v0

    iget v0, v0, Lcom/bbm/ui/l;->a:I

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_10c

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v0

    iput v2, v0, Lcom/bbm/ui/l;->a:I

    :cond_10c
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->k(Lcom/bbm/ui/c/ej;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->k(Lcom/bbm/ui/c/ej;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_17d

    const-string v0, "Status at position %d has not been provided yet or it doesn not exist."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_13c
    :goto_13c
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->l(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/q;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v2, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v2}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v2

    new-instance v3, Lcom/bbm/ui/c/eq;

    invoke-direct {v3, p0}, Lcom/bbm/ui/c/eq;-><init>(Lcom/bbm/ui/c/ep;)V

    invoke-direct {v1, v2, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ej;->a(Lcom/bbm/ui/c/ej;Lcom/bbm/ui/q;)Lcom/bbm/ui/q;

    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->j(Lcom/bbm/ui/c/ej;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->l(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_11

    :cond_172
    iget-object v0, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/l;->notifyDataSetChanged()V

    goto/16 :goto_ee

    :cond_17d
    iget-object v1, p0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->j(Lcom/bbm/ui/c/ej;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_13c
.end method
