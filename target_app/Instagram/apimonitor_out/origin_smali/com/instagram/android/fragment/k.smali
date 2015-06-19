.class public final Lcom/instagram/android/fragment/k;
.super Lcom/instagram/ui/menu/e;
.source "CameraSettingsFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    return-void
.end method

.method private a(ILandroid/widget/CompoundButton;)V
    .registers 6

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/k;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/n;

    invoke-direct {v2, p0, p2}, Lcom/instagram/android/fragment/n;-><init>(Lcom/instagram/android/fragment/k;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/k;ILandroid/widget/CompoundButton;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/k;->a(ILandroid/widget/CompoundButton;)V

    return-void
.end method

.method private d()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/instagram/ui/menu/aa;

    sget v2, Lcom/facebook/az;->instagram_camera:I

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/k/a/b;->f()Z

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/l;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/l;-><init>(Lcom/instagram/android/fragment/k;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/instagram/ui/menu/aa;

    sget v2, Lcom/facebook/az;->advanced_resize:I

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/k/a/b;->g()Z

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/m;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/m;-><init>(Lcom/instagram/android/fragment/k;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/ui/menu/e;->E()V

    invoke-direct {p0}, Lcom/instagram/android/fragment/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/k;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    sget v0, Lcom/facebook/az;->advanced_features:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "camera_settings"

    return-object v0
.end method
