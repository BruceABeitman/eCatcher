.class final Lcom/bbm/ui/activities/mz;
.super Lcom/bbm/j/k;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    iget-object v0, v1, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_14

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v0, v1, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_34
    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-wide v3, v1, Lcom/bbm/g/a;->h:J

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4d
    iget-object v2, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupConversationActivity;->k(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->l(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v2, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->m(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mz;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->n(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    goto :goto_14
.end method
