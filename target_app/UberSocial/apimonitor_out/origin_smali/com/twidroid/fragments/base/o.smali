.class public abstract Lcom/twidroid/fragments/base/o;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "timelines.jumptotop"

.field public static final s:Ljava/lang/String; = "timelines.refresh"

.field public static final t:Ljava/lang/String; = "broadcast.init.spinner"

.field protected static final z:I


# instance fields
.field protected A:Z

.field protected B:Landroid/widget/ProgressBar;

.field protected C:Landroid/widget/TextView;

.field protected D:Landroid/widget/Button;

.field protected E:Landroid/widget/RelativeLayout;

.field protected F:Lcom/twidroid/net/b/f;

.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/twidroid/a/b;

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;

.field protected u:Lcom/twidroid/net/c/a/f;

.field protected v:Lcom/twidroid/ui/themes/r;

.field protected w:Lcom/twidroid/d/v;

.field protected x:Lcom/twidroid/b/a/b;

.field protected y:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const-string v0, "BaseUberSocialFragment"

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->a:Ljava/lang/String;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->y:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/fragments/base/o;->A:Z

    const-string v0, "UnknownColumn"

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->d:Ljava/lang/String;

    new-instance v0, Lcom/twidroid/a/b;

    invoke-direct {v0}, Lcom/twidroid/a/b;-><init>()V

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->e:Lcom/twidroid/a/b;

    new-instance v0, Lcom/twidroid/fragments/base/o$2;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/base/o$2;-><init>(Lcom/twidroid/fragments/base/o;)V

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected F()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected G()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/fragments/base/g;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/g;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->F()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lcom/twidroid/fragments/base/g;->s()Lcom/twidroid/ui/widgets/AccountSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-interface {v0}, Lcom/twidroid/fragments/base/g;->s()Lcom/twidroid/ui/widgets/AccountSpinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setVisibility(I)V

    goto :goto_1c
.end method

.method public K()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->b()V

    return-void
.end method

.method public L()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->N()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->d()V

    return-void
.end method

.method public M()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->V()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::hideprogressbar"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public N()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->Q()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public O()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->Q()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->E:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public P()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public Q()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public R()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->D:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public S()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public T()V
    .registers 1

    return-void
.end method

.method public U()Lcom/twidroid/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->e:Lcom/twidroid/a/b;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->b:Ljava/lang/String;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->b:Ljava/lang/String;

    goto :goto_27
.end method

.method public W()I
    .registers 2

    iget v0, p0, Lcom/twidroid/fragments/base/o;->c:I

    return v0
.end method

.method public X()V
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->w:Lcom/twidroid/d/v;

    return-void
.end method

.method public Y()Lcom/twidroid/d/v;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->X()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->w:Lcom/twidroid/d/v;

    return-object v0
.end method

.method protected a(Landroid/widget/EditText;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v3, :cond_22

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_22
    return-void
.end method

.method public a(Lcom/twidroid/net/c/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/o;->u:Lcom/twidroid/net/c/a/f;

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "BaseUberSocialFragment"

    const-string v1, "getActivity()==null -- failed to run action on UI thread"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method protected abstract b()V
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    return-void
.end method

.method protected b(Landroid/widget/EditText;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_23
    return-void
.end method

.method protected final b(Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "BaseUberSocialFragment"

    const-string v1, "getActivity()==null -- failed to run action on UI thread"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/fragments/base/o;->c:I

    return-void
.end method

.method public abstract d()V
.end method

.method protected e(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/twidroid/c/ac;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/o;->u:Lcom/twidroid/net/c/a/f;

    invoke-direct {v0, v1, p1, v2}, Lcom/twidroid/c/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V

    invoke-virtual {v0}, Lcom/twidroid/c/ac;->show()V

    goto :goto_6
.end method

.method public f(Ljava/lang/String;)Lcom/twidroid/fragments/base/o;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/o;->d:Ljava/lang/String;

    return-object p0
.end method

.method protected g(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->isDetached()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/twidroid/fragments/base/o$1;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/fragments/base/o$1;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/o;->b(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/o;->b:Ljava/lang/String;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->s_()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/twidroid/net/c/a/f;

    move-object v1, v0

    iput-object v1, p0, Lcom/twidroid/fragments/base/o;->u:Lcom/twidroid/net/c/a/f;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_26

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v2

    iput-object v2, p0, Lcom/twidroid/fragments/base/o;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    iput-object v2, p0, Lcom/twidroid/fragments/base/o;->w:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/fragments/base/o;->x:Lcom/twidroid/b/a/b;

    return-void

    :catch_26
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement UIInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twidroid/fragments/base/o;->f:I

    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    if-nez v1, :cond_35

    new-instance v1, Lcom/twidroid/net/b/f;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/twidroid/fragments/base/o;->f:I

    invoke-direct {v1, v2, v3}, Lcom/twidroid/net/b/f;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V

    :goto_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V

    goto :goto_34
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onLowMemory()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/net/b/f;->g()V

    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    const-string v0, "BaseUberSocialFragment"

    const-string v1, "unregisret broadcast receiver"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->b(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/net/b/f;->h()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->F:Lcom/twidroid/net/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->b(Z)V

    return-void
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "timelines.refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "timelines.jumptotop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "broadcast.init.spinner"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/o;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_10
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->e:Lcom/twidroid/a/b;

    invoke-virtual {v0}, Lcom/twidroid/a/b;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twidroid/fragments/base/o;->B:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected s_()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/base/o;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->y()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/o;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1f
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/fragments/base/o;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
