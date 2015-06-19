.class public Lcom/instagram/android/fragment/av;
.super Lcom/instagram/ui/menu/e;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# static fields
.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private aa:Lcom/instagram/android/c/b/b;

.field private final ab:Lcom/instagram/android/fragment/ba;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/share/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Lcom/instagram/common/a/a/m;

.field private ae:Z

.field private af:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/fragment/av;

    sput-object v0, Lcom/instagram/android/fragment/av;->i:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/ba;-><init>(Lcom/instagram/android/fragment/av;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/av;->ab:Lcom/instagram/android/fragment/ba;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/av;->ac:Ljava/util/List;

    return-void
.end method

.method private U()V
    .registers 6

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/av;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->x_problems:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/facebook/az;->facebook:I

    invoke-virtual {p0, v4}, Lcom/instagram/android/fragment/av;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/fragment/av;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private V()V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v2, Lcom/facebook/az;->share_photos_to:I

    invoke-direct {v0, v2}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/instagram/ui/menu/h;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/av;->o()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/az;->share_photos_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/instagram/ui/menu/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/share/b/g;

    new-instance v4, Lcom/instagram/ui/menu/h;

    invoke-virtual {v0}, Lcom/instagram/share/b/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/instagram/share/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/instagram/ui/menu/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4a
    new-instance v0, Lcom/instagram/ui/menu/g;

    invoke-static {}, Lcom/instagram/share/b/a;->g()Lcom/instagram/share/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/share/b/g;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/fragment/ax;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/ax;-><init>(Lcom/instagram/android/fragment/av;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/ui/menu/g;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/instagram/ui/menu/a;

    sget v2, Lcom/facebook/az;->unlink:I

    new-instance v3, Lcom/instagram/android/fragment/ay;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ay;-><init>(Lcom/instagram/android/fragment/av;)V

    invoke-direct {v0, v2, v3}, Lcom/instagram/ui/menu/a;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/av;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/av;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/av;->ac:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/av;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/av;->V()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/av;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/fragment/av;->ae:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/av;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/av;->U()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/av;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->ac:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/av;)Lcom/instagram/android/c/b/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->aa:Lcom/instagram/android/c/b/b;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/instagram/android/fragment/av;->i:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/av;)Lcom/instagram/common/a/a/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->ad:Lcom/instagram/common/a/a/m;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/instagram/share/b/a;->g()Lcom/instagram/share/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/share/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/instagram/android/fragment/av;->ac:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-direct {p0}, Lcom/instagram/android/fragment/av;->V()V

    new-instance v0, Lcom/instagram/common/a/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/av;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/av;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/av;->ad:Lcom/instagram/common/a/a/m;

    new-instance v0, Lcom/instagram/android/c/b/b;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/c/b/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/av;->aa:Lcom/instagram/android/c/b/b;

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->aa:Lcom/instagram/android/c/b/b;

    new-instance v1, Lcom/instagram/android/fragment/aw;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/aw;-><init>(Lcom/instagram/android/fragment/av;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/b/b;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 7

    const/4 v4, 0x1

    sget v0, Lcom/facebook/az;->x_options:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Facebook"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/av;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/instagram/a/a;->a(Z)V

    iget-boolean v0, p0, Lcom/instagram/android/fragment/av;->ae:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V

    iget-boolean v0, p0, Lcom/instagram/android/fragment/av;->ae:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "facebook_advanced_options"

    return-object v0
.end method

.method public final j_()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/ui/menu/e;->j_()V

    invoke-static {}, Lcom/instagram/share/b/a;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/fragment/av;->ad:Lcom/instagram/common/a/a/m;

    iget-object v1, p0, Lcom/instagram/android/fragment/av;->aa:Lcom/instagram/android/c/b/b;

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v0, p0, Lcom/instagram/android/fragment/av;->af:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/av;->af:Z

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/share/b/f;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/av;->ab:Lcom/instagram/android/fragment/ba;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_10
.end method
