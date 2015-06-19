.class public final Lcom/bbm/ui/activities/th;
.super Lcom/bbm/ui/ee;
.source "GroupSelectNewAdminActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ee",
        "<",
        "Lcom/bbm/g/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;Lcom/bbm/j/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/j",
            "<",
            "Lcom/bbm/g/ac;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/th;->b:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ee;-><init>(Lcom/bbm/j/j;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/th;->b:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/ti;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ti;-><init>(Lcom/bbm/ui/activities/th;)V

    const v0, 0x7f0a0411

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ti;->a:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0412

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ti;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/bbm/g/ac;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ti;

    iget-object v1, p0, Lcom/bbm/ui/activities/th;->b:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/g/am;

    move-result-object v1

    iget-object v2, p2, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v2

    iget-object v1, p0, Lcom/bbm/ui/activities/th;->b:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/ac;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, v0, Lcom/bbm/ui/activities/ti;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/j/r;

    invoke-virtual {v3, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_2f
    iget-object v0, v0, Lcom/bbm/ui/activities/ti;->b:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_37
    iget-object v1, v0, Lcom/bbm/ui/activities/ti;->a:Lcom/bbm/ui/ObservingImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v1, v3}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V

    goto :goto_2f
.end method
