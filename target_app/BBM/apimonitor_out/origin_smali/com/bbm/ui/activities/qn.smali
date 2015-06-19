.class public final Lcom/bbm/ui/activities/qn;
.super Lcom/bbm/ui/b/i;
.source "GroupLobbyActivity.java"


# instance fields
.field private final h:Lcom/bbm/g/a;

.field private final i:Lcom/bbm/g/am;

.field private j:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/g/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bbm/g/ac;

.field private final l:Landroid/app/Activity;

.field private final m:Z

.field private final n:Lcom/bbm/j/u;

.field private final o:Landroid/view/View$OnClickListener;

.field private final p:Lcom/bbm/j/k;

.field private final q:Lcom/bbm/j/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bbm/g/a;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/bbm/ui/b/i;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->i:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/ui/activities/qo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qo;-><init>(Lcom/bbm/ui/activities/qn;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->n:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/qq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qq;-><init>(Lcom/bbm/ui/activities/qn;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/qr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qr;-><init>(Lcom/bbm/ui/activities/qn;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->p:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/qs;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qs;-><init>(Lcom/bbm/ui/activities/qn;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->q:Lcom/bbm/j/u;

    iput-object p1, p0, Lcom/bbm/ui/activities/qn;->l:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    iput-boolean p3, p0, Lcom/bbm/ui/activities/qn;->m:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/qn;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/activities/qp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qp;-><init>(Lcom/bbm/ui/activities/qn;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/qn;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->i:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/qn;Lcom/bbm/j/r;)Lcom/bbm/j/r;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    return-object p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/k;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->p:Lcom/bbm/j/k;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/r;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/qn;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    iget-boolean v0, v0, Lcom/bbm/g/a;->j:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->i:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    new-instance v2, Lcom/bbm/g/bl;

    invoke-direct {v2, v1}, Lcom/bbm/g/bl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :goto_1d
    return-void

    :cond_1e
    move v1, v2

    move v3, v2

    :goto_20
    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    iget-boolean v0, v0, Lcom/bbm/g/ac;->a:Z

    if-eqz v0, :cond_42

    add-int/lit8 v3, v3, 0x1

    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_46
    const/4 v0, 0x1

    if-gt v3, v0, :cond_b0

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_95

    :goto_58
    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_93

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    iget-boolean v0, v0, Lcom/bbm/g/ac;->a:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->j:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    :goto_86
    iput-object v0, p0, Lcom/bbm/ui/activities/qn;->k:Lcom/bbm/g/ac;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->q:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_1d

    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_93
    const/4 v0, 0x0

    goto :goto_86

    :cond_95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/qn;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    iget-object v2, v2, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/qn;->l:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1d

    :cond_b0
    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->i:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/qn;->h:Lcom/bbm/g/a;

    iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/g/an;->c(Ljava/lang/String;)Lcom/bbm/g/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto/16 :goto_1d
.end method

.method static synthetic f(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->n:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/qn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/qn;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/qn;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->l:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/ac;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->k:Lcom/bbm/g/ac;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/ui/b/i;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qn;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
