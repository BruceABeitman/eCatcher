.class public final Lcom/instagram/android/maps/d/l;
.super Lcom/instagram/base/a/c;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/base/a/e;


# instance fields
.field private aa:Lcom/instagram/android/a/n;

.field private ab:Landroid/os/Handler;

.field private ac:Lcom/instagram/android/maps/e/d;

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private i:Lcom/instagram/android/maps/b/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    invoke-static {}, Lcom/instagram/android/maps/b/b;->a()Lcom/instagram/android/maps/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/d/l;->i:Lcom/instagram/android/maps/b/b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/d/l;->ab:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/maps/d/m;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/m;-><init>(Lcom/instagram/android/maps/d/l;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/l;->ac:Lcom/instagram/android/maps/e/d;

    return-void
.end method

.method private U()V
    .registers 5

    new-instance v0, Lcom/instagram/android/c/a/o;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/d/r;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/d/r;-><init>(Lcom/instagram/android/maps/d/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/o;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method private W()Lcom/instagram/android/a/n;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/d/l;->aa:Lcom/instagram/android/a/n;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/android/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/a/n;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/l;->aa:Lcom/instagram/android/a/n;

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/maps/d/l;->aa:Lcom/instagram/android/a/n;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/n;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/maps/d/l;->W()Lcom/instagram/android/a/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/l;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/l;->c(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/support/v4/app/s;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/maps/d/l;

    invoke-direct {v1}, Lcom/instagram/android/maps/d/l;-><init>()V

    new-instance v2, Lcom/instagram/base/a/a/a;

    invoke-direct {v2, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v2, v1, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/d/l;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/l;->af:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/maps/d/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/d/l;->d()V

    return-void
.end method

.method private c(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/instagram/android/maps/d/l;->ad:Z

    iget-boolean v0, p0, Lcom/instagram/android/maps/d/l;->ad:Z

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    return-void
.end method

.method private d()V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/android/maps/d/l;->af:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/instagram/android/maps/d/l;->ae:Z

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/l;->ae:Z

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->popup_review_confirm_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->try_again:I

    new-instance v2, Lcom/instagram/android/maps/d/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/p;-><init>(Lcom/instagram/android/maps/d/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/android/maps/d/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/o;-><init>(Lcom/instagram/android/maps/d/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3d
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/maps/d/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/d/l;->U()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/maps/d/l;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/d/l;->ab:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/maps/b/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/d/l;->i:Lcom/instagram/android/maps/b/b;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/n;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/d/l;->aa:Lcom/instagram/android/a/n;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/maps/d/l;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/l;->ae:Z

    return v0
.end method


# virtual methods
.method public final G()V
    .registers 3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/l;->ac:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    return-void
.end method

.method public final V()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/instagram/android/maps/d/l;->W()Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/d/l;->a(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/l;->ac:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    invoke-direct {p0}, Lcom/instagram/android/maps/d/l;->U()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/l;->af:Z

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->photo_maps_dialog:I

    sget v3, Lcom/facebook/ba;->IgDialogFull:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/az;->choose_photos:I

    new-instance v2, Lcom/instagram/android/maps/d/n;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/n;-><init>(Lcom/instagram/android/maps/d/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 6

    sget v0, Lcom/facebook/az;->photo_map:I

    new-instance v1, Lcom/instagram/android/maps/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v2

    sget v3, Lcom/instagram/android/maps/e/f;->b:I

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/maps/c/a;-><init>(Landroid/support/v4/app/k;I)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "photo_map_review"

    return-object v0
.end method

.method public final j_()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/android/maps/d/l;->ad:Z

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/l;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    invoke-super {p0}, Lcom/instagram/base/a/c;->j_()V

    return-void
.end method
