.class public Lcom/bbm/ui/c/de;
.super Landroid/app/Fragment;
.source "GroupsFragment.java"


# static fields
.field private static b:I


# instance fields
.field final a:Lcom/bbm/d/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/f",
            "<",
            "Lcom/bbm/ui/c/ds;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/GridView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private final f:Lcom/bbm/ui/ee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/ee",
            "<",
            "Lcom/bbm/ui/c/ds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bbm/ui/c/de;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bbm/ui/c/df;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/df;-><init>(Lcom/bbm/ui/c/de;)V

    iput-object v0, p0, Lcom/bbm/ui/c/de;->a:Lcom/bbm/d/b/f;

    new-instance v0, Lcom/bbm/ui/c/dj;

    iget-object v1, p0, Lcom/bbm/ui/c/de;->a:Lcom/bbm/d/b/f;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/c/dj;-><init>(Lcom/bbm/ui/c/de;Lcom/bbm/j/j;)V

    iput-object v0, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/de;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/de;Lcom/bbm/g/a;)V
    .registers 15

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    iget-object v3, p1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-direct {v2, v12, v3, v12}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f020219

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e06ad

    invoke-virtual {p0, v5}, Lcom/bbm/ui/c/de;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v12}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v6, 0x7f0a0077

    const v7, 0x7f02021d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0e06c0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/bbm/ui/c/de;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v12}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bbm/ui/c/dp;

    invoke-direct {v5, p0, v0, p1}, Lcom/bbm/ui/c/dp;-><init>(Lcom/bbm/ui/c/de;Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/g/a;)V

    iput-object v5, v1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v5, Lcom/bbm/ui/c/dq;

    invoke-direct {v5, p0, v0, p1}, Lcom/bbm/ui/c/dq;-><init>(Lcom/bbm/ui/c/de;Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/g/a;)V

    invoke-virtual {v1, v5}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    iget-object v3, p1, Lcom/bbm/g/ai;->a:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f020268

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e06ad

    invoke-virtual {p0, v5}, Lcom/bbm/ui/c/de;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2, v3}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v2, Lcom/bbm/ui/c/dn;

    invoke-direct {v2, p0, p1}, Lcom/bbm/ui/c/dn;-><init>(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/c/de;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/de;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
    .registers 6

    iget-object v0, p1, Lcom/bbm/g/ai;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;

    new-instance v2, Lcom/bbm/ui/b/o;

    invoke-virtual {p0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1d

    sget-object v3, Lcom/bbm/ui/c/di;->b:[I

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_54

    :goto_1a
    invoke-virtual {v2}, Lcom/bbm/ui/b/o;->show()V

    :cond_1d
    return-void

    :pswitch_1e
    const v1, 0x7f0e045d

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v1, 0x7f0e045e

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->e(I)V

    const v1, 0x7f0e0635

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v1, Lcom/bbm/ui/c/dr;

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/c/dr;-><init>(Lcom/bbm/ui/c/de;Ljava/lang/String;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1a

    :pswitch_39
    const v1, 0x7f0e045b

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v1, 0x7f0e045f

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->e(I)V

    const v1, 0x7f0e02ea

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v1, Lcom/bbm/ui/c/dh;

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/c/dh;-><init>(Lcom/bbm/ui/c/de;Ljava/lang/String;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1a

    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_1e
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic c(Lcom/bbm/ui/c/de;)Lcom/bbm/ui/ee;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v0, 0x7f03008c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/de;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v0, 0x7f0a0397

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/de;->e:Landroid/view/View;

    const v0, 0x7f0a039b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a039a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/c/de;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/c/de;->d:Landroid/widget/Button;

    new-instance v2, Lcom/bbm/ui/c/dk;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/dk;-><init>(Lcom/bbm/ui/c/de;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    new-instance v2, Lcom/bbm/ui/c/dl;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/dl;-><init>(Lcom/bbm/ui/c/de;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    new-instance v2, Lcom/bbm/ui/c/dm;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/dm;-><init>(Lcom/bbm/ui/c/de;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    sget v2, Lcom/bbm/ui/c/de;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    return-object v1
.end method

.method public onDetach()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "onDetatch"

    const-class v1, Lcom/bbm/ui/c/de;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/bbm/ui/c/de;->b:I

    iget-object v0, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    invoke-virtual {v0}, Lcom/bbm/ui/ee;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->a:Lcom/bbm/d/b/f;

    invoke-virtual {v0}, Lcom/bbm/d/b/f;->g()V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/de;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    invoke-virtual {v0}, Lcom/bbm/ui/ee;->b()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->i:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->d(Lcom/bbm/c/n;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/de;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/de;->f:Lcom/bbm/ui/ee;

    invoke-virtual {v0}, Lcom/bbm/ui/ee;->c()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->i:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->b(Lcom/bbm/c/n;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
