.class public Lcom/instagram/android/directshare/d/c;
.super Lcom/instagram/base/a/b;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/directshare/d/b;
.implements Lcom/instagram/android/feed/a/a/n;
.implements Lcom/instagram/feed/g/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private aa:Landroid/widget/AutoCompleteTextView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:Lcom/instagram/model/b/a;

.field private ak:Lcom/instagram/ui/f/b;

.field private al:Lcom/instagram/android/feed/e/j;

.field private am:Lcom/instagram/common/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/h/e",
            "<",
            "Lcom/instagram/android/c2dm/a;",
            ">;"
        }
    .end annotation
.end field

.field private final an:Lcom/instagram/common/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/h/d",
            "<",
            "Lcom/instagram/feed/d/q;",
            ">;"
        }
    .end annotation
.end field

.field private final ao:Landroid/content/BroadcastReceiver;

.field private final ap:Landroid/content/BroadcastReceiver;

.field private final aq:Landroid/content/BroadcastReceiver;

.field private final ar:Landroid/text/TextWatcher;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Lcom/instagram/feed/d/l;

.field private e:Lcom/instagram/android/directshare/d/a;

.field private f:Lcom/instagram/android/feed/a/a/j;

.field private g:Landroid/widget/ListView;

.field private h:Z

.field private i:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/directshare/d/c;

    sput-object v0, Lcom/instagram/android/directshare/d/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    new-instance v0, Lcom/instagram/android/directshare/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/d;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/h/d;

    new-instance v0, Lcom/instagram/android/directshare/d/o;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/o;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ao:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/directshare/d/s;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/s;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/directshare/d/t;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/t;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/directshare/d/r;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/r;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ar:Landroid/text/TextWatcher;

    return-void
.end method

.method private V()V
    .registers 3

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Y()V

    :cond_11
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->W()V

    return-void
.end method

.method private W()V
    .registers 6

    new-instance v0, Lcom/instagram/f/a/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    new-instance v4, Lcom/instagram/android/directshare/d/y;

    invoke-direct {v4, p0}, Lcom/instagram/android/directshare/d/y;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/f/a/a/k;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/k;->h()V

    return-void
.end method

.method private X()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->post_deleted:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/directshare/d/z;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/z;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private Y()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->B()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/d/a;->a(Lcom/instagram/feed/d/l;)V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aa()V

    :cond_18
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ah:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ah:Z

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "opened_via_push"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/a/a;->a(Lcom/instagram/feed/d/l;Z)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()Z

    goto :goto_2e
.end method

.method private Z()V
    .registers 5

    invoke-static {}, Lcom/instagram/feed/d/ab;->a()Lcom/instagram/feed/d/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/feed/d/ab;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    return-object p1
.end method

.method private a(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->y()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;II)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/c;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/feed/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private aa()V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_5d

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->q()Z

    move-result v0

    if-eqz v0, :cond_7f

    sget v0, Lcom/facebook/au;->feed_button_like_background_liked:I

    :goto_11
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/directshare/d/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/e;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->ar:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/f;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/f;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/g;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/h;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/directshare/d/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/i;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5d
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_82

    move v0, v1

    :goto_62
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->D()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ae:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    iput-boolean v1, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    :cond_7e
    return-void

    :cond_7f
    sget v0, Lcom/facebook/au;->feed_button_like_background:I

    goto :goto_11

    :cond_82
    const/4 v0, 0x0

    goto :goto_62
.end method

.method private ab()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->b(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private ac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ad()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1f

    const/16 v0, 0xff

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_1f
    const/16 v0, 0x4d

    goto :goto_1b
.end method

.method private ae()Lcom/instagram/android/directshare/d/a;
    .registers 4

    new-instance v0, Lcom/instagram/android/directshare/d/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/directshare/d/a;-><init>(Landroid/content/Context;Lcom/instagram/android/directshare/d/b;Lcom/instagram/android/feed/a/a/ae;)V

    return-object v0
.end method

.method private af()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/d/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_11
    return-void
.end method

.method private ag()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/j;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private ah()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/d/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_40

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_40

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    goto :goto_7

    :cond_40
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->scrollBy(II)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->scrollBy(II)V

    goto :goto_7
.end method

.method private ai()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->al()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->al()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->am()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    :cond_1f
    return-void
.end method

.method private aj()Z
    .registers 2

    invoke-static {}, Lcom/instagram/creation/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic b(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Y()V

    return-void
.end method

.method private b(Lcom/instagram/model/b/a;Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    new-instance v0, Lcom/instagram/ui/g/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/ui/g/a;-><init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/ui/g/a;->c()V

    new-instance v1, Lcom/instagram/android/directshare/d/p;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/directshare/d/p;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/model/b/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->a(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/instagram/ui/f/a;->a()Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/ui/f/a;->a(Landroid/view/View;)Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/f/a;->a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/a;->b()Lcom/instagram/ui/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/f/a;->a(Landroid/content/Context;)Lcom/instagram/ui/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/instagram/android/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/instagram/model/b/c;->c:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/directshare/d/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->af:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/instagram/feed/d/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->delete_comment_are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/directshare/d/m;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/directshare/d/m;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V

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

.method static synthetic c(Lcom/instagram/android/directshare/d/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->ag:Z

    return p1
.end method

.method static synthetic d(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->W()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/directshare/d/c;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/directshare/d/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->af:Z

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/directshare/d/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Z()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ad()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->X()V

    return-void
.end method

.method static synthetic m(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ab()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/directshare/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->af()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ai()V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Z()V

    :cond_16
    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/h/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/directshare/d/c;->ai:I

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ad()V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->a()V

    return-void
.end method

.method public final F()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->i()V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/directshare/d/c;->ai:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/h/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->b()V

    return-void
.end method

.method public final G()V
    .registers 4

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ao:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    return-void
.end method

.method public final U()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->layout_directshare_permalink:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
    .registers 7

    const/4 v2, 0x0

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aj()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v2, v1}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V

    iput-boolean v2, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    :cond_19
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mediaId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ae:Z

    if-eqz p1, :cond_25

    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    :cond_25
    new-instance v0, Lcom/instagram/android/feed/e/j;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/j;

    new-instance v0, Lcom/instagram/android/feed/a/a/j;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/a/a/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/n;)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ae()Lcom/instagram/android/directshare/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->V()V

    new-instance v0, Lcom/instagram/android/directshare/d/u;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/u;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/h/e;

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ao:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ao:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ActionBarService.action_bar_refresh_click"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/av;->permalink_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ObservableLinearLayout;

    new-instance v1, Lcom/instagram/android/directshare/d/w;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/w;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ObservableLinearLayout;->setOnSizeChangedListener(Lcom/instagram/android/widget/p;)V

    sget v0, Lcom/facebook/av;->button_like_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    sget v0, Lcom/facebook/av;->button_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->layout_comment_thread_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    sget v0, Lcom/facebook/av;->layout_comment_thread_button_send:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v2}, Lcom/instagram/common/u/f;->d(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aa()V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/ab;

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/directshare/d/ab;-><init>(Lcom/instagram/android/directshare/d/c;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/x;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/x;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_3c

    move v0, v1

    :goto_a
    invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ag:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_3b

    sget v0, Lcom/facebook/az;->directshare_permalink_title:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->aj()Lcom/instagram/model/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/directshare/d/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/directshare/d/q;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/q;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_3b
    return-void

    :cond_3c
    move v0, v2

    goto :goto_a
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_24
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/instagram/android/directshare/d/l;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/android/directshare/d/l;-><init>(Lcom/instagram/android/directshare/d/c;[Ljava/lang/String;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_46
    new-array v0, v4, [Ljava/lang/String;

    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_24
.end method

.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/j;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/instagram/model/b/a;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->c()V

    invoke-virtual {p1, v0}, Lcom/instagram/model/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/model/b/a;Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method public final a(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aj()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/instagram/feed/d/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/instagram/android/directshare/d/n;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/directshare/d/n;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V

    sget v2, Lcom/facebook/az;->failed:I

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

    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .registers 8

    sget v0, Lcom/instagram/feed/d/o;->a:I

    sget v1, Lcom/instagram/android/h/g;->b:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/directshare/d/c;->a(II)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/directshare/d/k;

    invoke-direct {v1, p0, p3}, Lcom/instagram/android/directshare/d/k;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/android/feed/a/b/ac;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V

    iput-object v1, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    :cond_c
    iput-object v1, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    const-string v0, "scroll"

    iget-boolean v1, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final h_()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->d()V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "direct_share_permalink"

    return-object v0
.end method

.method public final j_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->f(I)V

    return-void
.end method

.method public final k_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->f(I)V

    return-void
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/f/b;->a(Landroid/os/Handler;)V

    :cond_1d
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    return-void
.end method

.method public final n_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final p_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->c()V

    return-void
.end method
