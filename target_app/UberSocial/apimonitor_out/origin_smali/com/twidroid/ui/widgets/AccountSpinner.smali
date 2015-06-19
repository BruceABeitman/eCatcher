.class public Lcom/twidroid/ui/widgets/AccountSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = null

.field private static final b:I = 0x7f030018

.field private static final c:I = 0x7f03001a

.field private static final d:J = -0x1L


# instance fields
.field private e:Lcom/twidroid/ui/widgets/c;

.field private f:Lcom/twidroid/ui/widgets/a;

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/content/Context;

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AccountSpinnerSelection"

    sput-object v0, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->i:I

    iput-object p1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->i:I

    iput-object p1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->i:I

    iput-object p1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->h:Landroid/content/Context;

    return-void
.end method

.method private f()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getAccountChangeListener()Lcom/twidroid/ui/widgets/c;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getAccountChangeListener()Lcom/twidroid/ui/widgets/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->h()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twidroid/ui/widgets/c;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_11
    return-void
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V

    :cond_10
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v0

    new-instance v1, Lcom/twidroid/ui/widgets/a;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/twidroid/ui/widgets/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    iget-boolean v2, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->j:Z

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/a;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    invoke-virtual {p0, v0, v4}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(IZ)V

    :goto_45
    return-void

    :cond_46
    iget v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->i:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(IZ)V

    goto :goto_45
.end method

.method private h()Lcom/twidroid/model/twitter/c;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    :cond_8
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    :cond_13
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/twidroid/model/twitter/c;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/c;-><init>()V

    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    goto :goto_20

    :cond_30
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_48

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    goto :goto_20

    :cond_48
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    goto :goto_20
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    const-string v1, "UpdateAcounts"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()Z
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    :cond_8
    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSelectionFromPersistenceStorage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V

    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/twidroid/ui/widgets/AccountSpinner;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSelectionToPersistenceStorage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAccountChangeListener()Lcom/twidroid/ui/widgets/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->e:Lcom/twidroid/ui/widgets/c;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getAdapter()Lcom/twidroid/ui/widgets/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getAdapter()Lcom/twidroid/ui/widgets/a;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/twidroid/ui/widgets/a;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    :cond_7
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    return-object v0
.end method

.method public getCurrentAccountId()I
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->h()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    return v0
.end method

.method public getSelectedAccount()Lcom/twidroid/model/twitter/c;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->h()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAccountWithAllAccount()Lcom/twidroid/model/twitter/c;
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->h()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getAdapter()Lcom/twidroid/ui/widgets/a;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/a;->a(I)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    goto :goto_e

    :cond_1e
    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->h()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->g()V

    goto :goto_9
.end method

.method public setAccountByAccountId(J)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, p1

    if-nez v0, :cond_20

    invoke-virtual {p0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(IZ)V

    :goto_1f
    return-void

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_24
    int-to-long v0, v3

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->j:Z

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V

    goto :goto_1f

    :cond_39
    invoke-virtual {p0, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V

    goto :goto_1f
.end method

.method public setAccountByUserId(J)V
    .registers 9

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v1, v2

    move v3, v0

    :goto_4
    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_1d

    move v3, v1

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_21
    invoke-virtual {p0, v3, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(IZ)V

    return-void
.end method

.method public setAccountChangeListener(Lcom/twidroid/ui/widgets/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->e:Lcom/twidroid/ui/widgets/c;

    return-void
.end method

.method public setSelection(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->f()V

    return-void
.end method

.method public setSelection(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->f()V

    return-void
.end method

.method public setShowAllOption(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    move v0, p1

    :goto_a
    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->j:Z

    iget-object v0, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/widgets/a;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/a;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->f:Lcom/twidroid/ui/widgets/a;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/a;->getCount()I

    move-result v1

    if-le v1, v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setVisibility(I)V
    .registers 5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_19

    const/4 v0, 0x0

    :cond_19
    invoke-super {p0, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget-object v1, p0, Lcom/twidroid/ui/widgets/AccountSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const-string v0, "--"

    goto :goto_13
.end method
