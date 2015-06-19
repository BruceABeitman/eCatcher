.class final Lcom/bbm/ui/activities/tb;
.super Lcom/bbm/j/k;
.source "GroupProfileActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->g(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v3, :cond_18

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->h(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v3

    iget-boolean v0, v2, Lcom/bbm/g/a;->j:Z

    if-nez v0, :cond_8e

    iget-boolean v0, v2, Lcom/bbm/g/a;->a:Z

    if-nez v0, :cond_8e

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {v3, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    const/4 v0, 0x0

    iget-object v1, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v0, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_39
    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-wide v3, v2, Lcom/bbm/g/a;->h:J

    long-to-int v0, v3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_52
    iget-object v1, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupProfileActivity;->i(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->j(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v1, v2, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->k(Lcom/bbm/ui/activities/GroupProfileActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->g(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/activities/tb;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_8e
    move v0, v1

    goto :goto_27
.end method
