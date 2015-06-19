.class public Lcom/instagram/android/l/a/a;
.super Lcom/instagram/ui/d/c;
.source "UserListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/ui/d/c",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Lcom/instagram/user/follow/h;

.field protected e:Landroid/support/v4/app/an;

.field protected f:Landroid/support/v4/app/s;

.field protected g:Landroid/widget/Filter;

.field protected h:Lcom/instagram/android/l/a/g;

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/instagram/user/c/a;

.field private o:Lcom/instagram/android/l/a/e;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;)V
    .registers 16

    const/4 v6, 0x0

    new-instance v8, Lcom/instagram/ui/widget/loadmore/f;

    invoke-direct {v8}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/l/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V
    .registers 11

    invoke-direct {p0, p1, p8}, Lcom/instagram/ui/d/c;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V

    new-instance v0, Lcom/instagram/android/l/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/l/a/e;-><init>(Lcom/instagram/android/l/a/a;B)V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->o:Lcom/instagram/android/l/a/e;

    new-instance v0, Lcom/instagram/android/l/a/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/a/d;-><init>(Lcom/instagram/android/l/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->p:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/instagram/android/l/a/a;->e:Landroid/support/v4/app/an;

    iput-object p3, p0, Lcom/instagram/android/l/a/a;->f:Landroid/support/v4/app/s;

    iput-boolean p4, p0, Lcom/instagram/android/l/a/a;->a:Z

    iput-boolean p5, p0, Lcom/instagram/android/l/a/a;->b:Z

    iput-boolean p6, p0, Lcom/instagram/android/l/a/a;->c:Z

    iput-object p7, p0, Lcom/instagram/android/l/a/a;->d:Lcom/instagram/user/follow/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->i:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/instagram/android/l/a/a;->a:Z

    if-eqz v0, :cond_31

    new-instance v0, Lcom/instagram/android/l/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/a/b;-><init>(Lcom/instagram/android/l/a/a;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_31
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/l/a/a;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->p:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/instagram/user/c/a;)V
    .registers 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_3c

    invoke-virtual {p0, p2}, Lcom/instagram/android/l/a/a;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v9

    :goto_1c
    invoke-virtual {p0}, Lcom/instagram/android/l/a/a;->b()Lcom/instagram/android/l/a/g;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/l/a/k;

    iget-boolean v3, p0, Lcom/instagram/android/l/a/a;->a:Z

    iget-boolean v4, p0, Lcom/instagram/android/l/a/a;->b:Z

    iget-boolean v5, p0, Lcom/instagram/android/l/a/a;->c:Z

    iget-object v7, p0, Lcom/instagram/android/l/a/a;->e:Landroid/support/v4/app/an;

    iget-object v8, p0, Lcom/instagram/android/l/a/a;->f:Landroid/support/v4/app/s;

    new-instance v10, Lcom/instagram/android/l/a/c;

    invoke-direct {v10, p0}, Lcom/instagram/android/l/a/c;-><init>(Lcom/instagram/android/l/a/a;)V

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/instagram/android/l/a/g;->a(Lcom/instagram/android/l/a/k;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/j/d;)V

    return-void

    :cond_3a
    move v0, v6

    goto :goto_16

    :cond_3c
    const/4 v9, 0x0

    goto :goto_1c
.end method

.method static synthetic b(Lcom/instagram/android/l/a/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/l/a/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/l/a/a;)Lcom/instagram/android/l/a/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->o:Lcom/instagram/android/l/a/e;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/l/a/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->no_users_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/instagram/android/l/a/a;->b()Lcom/instagram/android/l/a/g;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    iget-object v2, p0, Lcom/instagram/android/l/a/a;->d:Lcom/instagram/user/follow/h;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/instagram/android/l/a/g;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/user/c/a;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/user/c/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_18
    return-object v0

    :cond_19
    invoke-static {p1}, Lcom/instagram/android/j/b;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p0, p3}, Lcom/instagram/android/l/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/l/a/a;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public b()Lcom/instagram/android/l/a/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->h:Lcom/instagram/android/l/a/g;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/android/l/a/g;

    invoke-direct {v0}, Lcom/instagram/android/l/a/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->h:Lcom/instagram/android/l/a/g;

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->h:Lcom/instagram/android/l/a/g;

    return-object v0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/a/a;->g:Landroid/widget/Filter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/android/l/a/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/a/l;-><init>(Lcom/instagram/android/l/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->g:Landroid/widget/Filter;

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->g:Landroid/widget/Filter;

    return-object v0
.end method
