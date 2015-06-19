.class public abstract Lcom/facebook/widget/af;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.android.PickerFragment.Selection"

.field private static final b:Ljava/lang/String; = "com.facebook.android.PickerFragment.ActivityCircleShown"

.field public static final c:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowPictures"

.field public static final d:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ExtraFields"

.field public static final e:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowTitleBar"

.field public static final f:Ljava/lang/String; = "com.facebook.widget.PickerFragment.TitleText"

.field public static final g:Ljava/lang/String; = "com.facebook.widget.PickerFragment.DoneButtonText"

.field private static final j:I = 0x5


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/Button;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/widget/AbsListView$OnScrollListener;

.field h:Ljava/util/HashSet;

.field i:Lcom/facebook/widget/e;

.field private final k:I

.field private l:Lcom/facebook/widget/al;

.field private m:Lcom/facebook/widget/aj;

.field private n:Lcom/facebook/widget/am;

.field private o:Lcom/facebook/widget/ak;

.field private p:Lcom/facebook/widget/ag;

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/ListView;

.field private final t:Ljava/lang/Class;

.field private u:Lcom/facebook/widget/ah;

.field private v:Lcom/facebook/widget/ao;

.field private w:Landroid/widget/ProgressBar;

.field private x:Lcom/facebook/b/m;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/widget/af;->q:Z

    iput-boolean v0, p0, Lcom/facebook/widget/af;->r:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    new-instance v0, Lcom/facebook/widget/af$6;

    invoke-direct {v0, p0}, Lcom/facebook/widget/af$6;-><init>(Lcom/facebook/widget/af;)V

    iput-object v0, p0, Lcom/facebook/widget/af;->E:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/facebook/widget/af;->t:Ljava/lang/Class;

    iput p2, p0, Lcom/facebook/widget/af;->k:I

    invoke-direct {p0, p3}, Lcom/facebook/widget/af;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/widget/af;->b()V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->m()Lcom/facebook/aw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/af;->a(Lcom/facebook/aw;)Lcom/facebook/ai;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/facebook/widget/af;->t()V

    iget-object v1, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/ah;->a(Lcom/facebook/ai;)V

    :cond_15
    return-void
.end method

.method private static a(Landroid/view/View;F)V
    .registers 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 6

    const/4 v2, -0x1

    sget v0, Lcom/facebook/a/r;->com_facebook_picker_title_bar_stub:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    sget v3, Lcom/facebook/a/r;->com_facebook_picker_title_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/widget/af;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/facebook/widget/af;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    sget v0, Lcom/facebook/a/r;->com_facebook_picker_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/widget/af$5;

    invoke-direct {v1, p0}, Lcom/facebook/widget/af$5;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4f
    iget-object v0, p0, Lcom/facebook/widget/af;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/widget/af;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5a
    sget v0, Lcom/facebook/a/r;->com_facebook_picker_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/widget/af;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/widget/af;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/facebook/widget/af;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/facebook/widget/af;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_77
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    iget-object v1, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/ao;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v0}, Lcom/facebook/widget/e;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    invoke-interface {v0, p0}, Lcom/facebook/widget/am;->a(Lcom/facebook/widget/af;)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/af;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/af;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/af;Landroid/widget/ListView;Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/af;->a(Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/widget/af;)Lcom/facebook/widget/ak;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->o:Lcom/facebook/widget/ak;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    invoke-virtual {v0}, Lcom/facebook/widget/ao;->c()Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v3}, Lcom/facebook/widget/e;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_17
    iget-object v2, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    invoke-virtual {v2}, Lcom/facebook/widget/ah;->b()V

    iget-object v2, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    invoke-virtual {v2}, Lcom/facebook/widget/ao;->b()V

    iget-object v2, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v2}, Lcom/facebook/widget/e;->notifyDataSetChanged()V

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    invoke-interface {v1, p0}, Lcom/facebook/widget/aj;->a(Lcom/facebook/widget/af;)V

    :cond_31
    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    invoke-interface {v0, p0}, Lcom/facebook/widget/am;->a(Lcom/facebook/widget/af;)V

    :cond_3c
    return-void

    :cond_3d
    move v0, v2

    goto :goto_f

    :cond_3f
    move v1, v2

    goto :goto_17
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/widget/e;->a(III)V

    :cond_14
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_55

    const-string v0, "com.facebook.widget.PickerFragment.ShowPictures"

    iget-boolean v1, p0, Lcom/facebook/widget/af;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/af;->q:Z

    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/af;->a(Ljava/util/Collection;)V

    :cond_21
    const-string v0, "com.facebook.widget.PickerFragment.ShowTitleBar"

    iget-boolean v1, p0, Lcom/facebook/widget/af;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/af;->r:Z

    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    iput-object v0, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/widget/af;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/facebook/widget/af;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_40
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    iput-object v0, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/facebook/widget/af;->B:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_55
    return-void
.end method

.method static synthetic c(Lcom/facebook/widget/af;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/af;->c()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/widget/af;)Lcom/facebook/widget/al;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->l:Lcom/facebook/widget/al;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/af;)Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->t:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/af;)Lcom/facebook/widget/ao;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/facebook/aw;)Lcom/facebook/ai;
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/af;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/facebook/widget/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->p:Lcom/facebook/widget/ag;

    return-void
.end method

.method public a(Lcom/facebook/widget/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    return-void
.end method

.method public a(Lcom/facebook/widget/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->o:Lcom/facebook/widget/ak;

    return-void
.end method

.method public a(Lcom/facebook/widget/al;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->l:Lcom/facebook/widget/al;

    return-void
.end method

.method public a(Lcom/facebook/widget/am;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    return-void
.end method

.method a(Lcom/facebook/widget/ao;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    if-eq p1, v0, :cond_f

    iput-object p1, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v0}, Lcom/facebook/widget/e;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method a(Lcom/facebook/widget/au;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    iget-object v2, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v2, v0}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v2

    if-eqz v1, :cond_51

    invoke-virtual {v2}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v0

    sget-object v3, Lcom/facebook/widget/k;->c:Lcom/facebook/widget/k;

    if-eq v0, v3, :cond_51

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_29
    iget-object v3, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v3, p1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/l;)Z

    move-result v3

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    iget-object v1, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    iget-object v4, v2, Lcom/facebook/widget/j;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {v1, v4, v2}, Lcom/facebook/widget/e;->a(Ljava/lang/String;Lcom/facebook/c/c;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    iget-object v2, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_45
    if-eqz v3, :cond_50

    iget-object v0, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    invoke-interface {v0, p0}, Lcom/facebook/widget/aj;->a(Lcom/facebook/widget/af;)V

    :cond_50
    return-void

    :cond_51
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_e
    return-void
.end method

.method a(Lcom/facebook/c/c;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->p:Lcom/facebook/widget/ag;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/af;->p:Lcom/facebook/widget/ag;

    invoke-interface {v0, p1}, Lcom/facebook/widget/ag;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method b(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "com.facebook.widget.PickerFragment.ShowPictures"

    iget-boolean v1, p0, Lcom/facebook/widget/af;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const-string v0, "com.facebook.widget.PickerFragment.ShowTitleBar"

    iget-boolean v1, p0, Lcom/facebook/widget/af;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    iget-object v1, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    iget-object v1, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/facebook/aw;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->x:Lcom/facebook/b/m;

    invoke-virtual {v0, p1}, Lcom/facebook/b/m;->a(Lcom/facebook/aw;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/af;->q:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/af;->r:Z

    return-void
.end method

.method abstract d()Lcom/facebook/widget/an;
.end method

.method public d(Z)V
    .registers 3

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    invoke-virtual {v0}, Lcom/facebook/widget/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/facebook/widget/af;->a()V

    goto :goto_a
.end method

.method abstract e()Lcom/facebook/widget/ah;
.end method

.method abstract f()Lcom/facebook/widget/ao;
.end method

.method g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/facebook/widget/aj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->m:Lcom/facebook/widget/aj;

    return-object v0
.end method

.method public i()Lcom/facebook/widget/am;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->n:Lcom/facebook/widget/am;

    return-object v0
.end method

.method public j()Lcom/facebook/widget/ak;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->o:Lcom/facebook/widget/ak;

    return-object v0
.end method

.method public k()Lcom/facebook/widget/al;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->l:Lcom/facebook/widget/al;

    return-object v0
.end method

.method public l()Lcom/facebook/widget/ag;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->p:Lcom/facebook/widget/ag;

    return-object v0
.end method

.method public m()Lcom/facebook/aw;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->x:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/af;->q:Z

    return v0
.end method

.method public o()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/facebook/widget/af;->h:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/b/m;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/af$4;

    invoke-direct {v2, p0}, Lcom/facebook/widget/af$4;-><init>(Lcom/facebook/widget/af;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/bf;)V

    iput-object v0, p0, Lcom/facebook/widget/af;->x:Lcom/facebook/b/m;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/af;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->e()Lcom/facebook/widget/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    iget-object v0, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    iget-object v1, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/e;)V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->f()Lcom/facebook/widget/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    iget-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ao;->b(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/facebook/widget/af;->r:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/facebook/widget/af;->a(Landroid/view/ViewGroup;)V

    :cond_3d
    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    const-string v0, "com.facebook.android.PickerFragment.ActivityCircleShown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/facebook/widget/af;->v()V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    invoke-virtual {p0}, Lcom/facebook/widget/af;->x()V

    goto :goto_4f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->d()Lcom/facebook/widget/an;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    new-instance v1, Lcom/facebook/widget/af$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/af$1;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/g;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    iget v0, p0, Lcom/facebook/widget/af;->k:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/a/r;->com_facebook_picker_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/widget/af$2;

    invoke-direct {v2, p0}, Lcom/facebook/widget/af$2;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/widget/af$3;

    invoke-direct {v2, p0}, Lcom/facebook/widget/af$3;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/widget/af;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v1, Lcom/facebook/a/r;->com_facebook_picker_activity_circle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public onDetach()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->u:Lcom/facebook/widget/ah;

    invoke-virtual {v0}, Lcom/facebook/widget/ah;->a()V

    iget-object v0, p0, Lcom/facebook/widget/af;->x:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->d()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    sget-object v0, Lcom/facebook/a/v;->com_facebook_picker_fragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/facebook/widget/af;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/af;->b(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/af;->a(Ljava/util/Collection;)V

    :cond_27
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/facebook/widget/af;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/af;->r:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/af;->C:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/af;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/facebook/widget/af;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ao;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1f

    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/af;->r:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/widget/af;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/facebook/widget/af;->y:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/widget/af;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/facebook/widget/af;->z:Ljava/lang/String;

    return-object v0
.end method

.method s()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    iget-object v1, p0, Lcom/facebook/widget/af;->v:Lcom/facebook/widget/ao;

    invoke-virtual {v1}, Lcom/facebook/widget/ao;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/facebook/widget/af;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method t()V
    .registers 1

    return-void
.end method

.method u()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/facebook/a/t;->com_facebook_picker_done_button_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/facebook/widget/af;->w()V

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method w()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->i:Lcom/facebook/widget/e;

    invoke-virtual {v0}, Lcom/facebook/widget/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/high16 v0, 0x3e80

    :goto_a
    iget-object v1, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/facebook/widget/af;->a(Landroid/view/View;F)V

    return-void

    :cond_10
    const/high16 v0, 0x3f80

    goto :goto_a
.end method

.method x()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/facebook/widget/af;->w:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_f
    return-void
.end method
