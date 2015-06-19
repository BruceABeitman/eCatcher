.class final Lcom/bbm/ui/activities/no;
.super Lcom/bbm/j/k;
.source "GroupEventsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    iget-object v0, v1, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v2, :cond_13

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v0, v1, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_22
    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-wide v3, v1, Lcom/bbm/g/a;->h:J

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3b
    iget-object v2, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupEventsActivity;->c(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->d(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v2, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->e(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v2, v1, Lcom/bbm/g/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->e(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v2

    iget-object v0, v1, Lcom/bbm/g/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/16 v0, 0x8

    :goto_6a
    invoke-virtual {v2, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->f(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/no;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/w;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_8b
    const/4 v0, 0x0

    goto :goto_6a
.end method
