.class public Lcom/bbm/ui/activities/GroupPictureUploadActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupPictureUploadActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/EditText;

.field private f:Ljava/lang/String;

.field private final g:Lcom/bbm/d;

.field private h:Lcom/bbm/ui/activities/sw;

.field private volatile i:Z

.field private j:Lcom/bbm/ui/HeaderButtonActionBar;

.field private final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Ljava/lang/Object;

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->g:Lcom/bbm/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i:Z

    new-instance v0, Lcom/bbm/ui/activities/sr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sr;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bbm/ui/activities/ss;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ss;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bbm/ui/activities/st;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/st;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n:Ljava/lang/Thread;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/ui/activities/sw;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->h:Lcom/bbm/ui/activities/sw;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/d;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->g:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i:Z

    return v0
.end method

.method static synthetic o(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n:Ljava/lang/Thread;

    :cond_c
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->g:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->h:Lcom/bbm/ui/activities/sw;

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_21
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "picturePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    :cond_31
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v2

    :goto_3a
    const-string v1, "GroupPictureUploadActivity invoked without picture path"

    invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    :goto_42
    return-void

    :cond_43
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "picturePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_4e
    move v0, v3

    goto :goto_3a

    :cond_50
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0a01e9

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0a01ea

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    const/16 v4, 0x100

    invoke-static {v1, v4}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v1, 0x7f0a01e8

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v1, Lcom/bbm/ui/HeaderButtonActionBar;

    const v2, 0x7f0e0101

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0e0173

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0766

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {v1, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Lcom/bbm/ui/activities/sm;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/sm;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Lcom/bbm/ui/activities/sn;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/sn;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/bbm/ui/activities/so;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/so;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->b:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/bbm/ui/activities/sp;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/sp;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/activities/sq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sq;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/bbm/ui/activities/sw;

    invoke-direct {v0, p0, v3}, Lcom/bbm/ui/activities/sw;-><init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;B)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->h:Lcom/bbm/ui/activities/sw;

    goto/16 :goto_42
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "picturePath"

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method
