.class public final Lcom/instagram/android/feed/comments/a/a;
.super Lcom/instagram/base/a/c;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/feed/comments/a/g;
.implements Lcom/instagram/feed/g/a;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private aa:Lcom/instagram/feed/d/l;

.field private ab:Lcom/instagram/feed/comments/a/i;

.field private ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/app/Dialog;

.field private af:Z

.field private ag:Z

.field private ah:I

.field private final ai:Lcom/instagram/common/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/h/d",
            "<",
            "Lcom/instagram/feed/d/q;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Landroid/content/BroadcastReceiver;

.field private final ak:Landroid/database/DataSetObserver;

.field private final al:Landroid/text/TextWatcher;

.field private am:Lcom/instagram/android/feed/e/j;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->i:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/feed/comments/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/b;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ai:Lcom/instagram/common/h/d;

    new-instance v0, Lcom/instagram/android/feed/comments/a/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/k;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/feed/comments/a/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/l;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/instagram/android/feed/comments/a/m;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/m;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    return-void
.end method

.method private V()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_1a
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v1

    :goto_2f
    return v0

    :cond_30
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2f
.end method

.method private W()Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.SHOW_KEYBOARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private X()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v1, Lcom/instagram/android/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_14
    return-void
.end method

.method private a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/feed/a/b;",
            ">;)",
            "Lcom/instagram/feed/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/feed/comments/a/f;

    sget v1, Lcom/facebook/av;->request_id_media_fetch_from_comment:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/feed/comments/a/f;-><init>(Lcom/instagram/android/feed/comments/a/a;Landroid/support/v4/app/Fragment;ILcom/instagram/api/j/f;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->f(I)V

    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->f(Lcom/instagram/feed/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/feed/d/b;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/b;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ar;->comment_report_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->flag_comment_title:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/comments/a/j;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/instagram/android/feed/comments/a/j;-><init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;ILcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-static {p1, v1, v0, p0}, Lcom/instagram/android/feed/comments/b/a;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;Lcom/instagram/android/feed/comments/a/a;)V

    :cond_11
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    const-string v2, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method

.method static synthetic c(Lcom/instagram/android/feed/comments/a/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->V()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->X()V

    return-void
.end method

.method private d(Lcom/instagram/feed/d/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->learn_more:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/e;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/d;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/feed/comments/a/d;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    return-object v0
.end method

.method private e(Lcom/instagram/feed/d/b;)[Ljava/lang/CharSequence;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;)Z

    move-result v1

    if-eqz v1, :cond_57

    sget v1, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    sget v1, Lcom/facebook/az;->delete_and_report_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    sget v1, Lcom/facebook/az;->reply_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    :cond_57
    sget v1, Lcom/facebook/az;->report_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method private f(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/comments/a/o;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/comments/a/o;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_28
    return-void
.end method

.method static synthetic f(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->f(I)V

    return-void
.end method

.method private f(Lcom/instagram/feed/d/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->delete_comment_are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/i;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/feed/comments/a/i;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/feed/comments/a/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private g(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 5

    invoke-super {p0}, Lcom/instagram/base/a/c;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/feed/comments/a/a;->ah:I

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    :cond_48
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ActionBarService.action_bar_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->W()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/view/View;)V

    :goto_67
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->a()V

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->V()Z

    return-void

    :cond_70
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_67
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/feed/comments/a/a;->ah:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    :cond_48
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->b()V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    :cond_66
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    return-void
.end method

.method public final G()V
    .registers 4

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ai:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    return-void
.end method

.method public final U()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ag:Z

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    sget v0, Lcom/facebook/aw;->layout_comment_thread:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->layout_comment_thread_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    sget v0, Lcom/facebook/av;->layout_comment_thread_button_send:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->X()V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/p;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/q;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/q;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/r;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/r;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setBackButtonListener(Lcom/instagram/android/feed/comments/ui/a;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/c;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setSimpleChangedLayoutListener(Lcom/instagram/android/feed/comments/ui/b;)V

    return-object v1
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    new-instance v0, Lcom/instagram/feed/comments/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/instagram/feed/comments/a/i;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;Lcom/instagram/feed/comments/a/g;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_SPONSORED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Z

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_ORGANIC"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ag:Z

    new-instance v0, Lcom/instagram/android/feed/e/j;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/j;

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_62

    new-instance v0, Lcom/instagram/android/feed/comments/a/n;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/n;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/a/a;->h()V

    :goto_4e
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ai:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    return-void

    :cond_62
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_4e
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    sget v0, Lcom/facebook/az;->comments:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/feed/d/b;)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/instagram/android/feed/comments/a/g;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/android/feed/comments/a/g;-><init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/j;)V
    .registers 4

    invoke-static {p1}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-static {p1, v0, p0}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public final b(Lcom/instagram/feed/d/b;)V
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/feed/d/b;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/instagram/android/feed/comments/a/h;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/comments/a/h;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    sget v2, Lcom/facebook/az;->comment_failed_to_post:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->try_again:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_9
.end method

.method public final c(Lcom/instagram/feed/d/b;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->d(Lcom/instagram/feed/d/b;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string v0, "checkpoint_required"

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/content/Context;)V

    goto :goto_15

    :cond_2a
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_15
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->L()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i_()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_SELF_MEDIA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "self_comments"

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "comments"

    goto :goto_e
.end method

.method public final j_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/base/a/c;->j_()V

    return-void
.end method

.method public final k_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/base/a/c;->k_()V

    return-void
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/c;->l_()V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iput-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iput-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Landroid/widget/ImageView;

    return-void
.end method

.method public final m_()V
    .registers 5

    new-instance v0, Lcom/instagram/feed/comments/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/feed/comments/c/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;I)V

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/c/c;->a(Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method public final n_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Z

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2e
    return-void
.end method
