.class Landroid/support/v7/internal/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x0

.field private static final B:I = 0x0

.field private static final C:I = 0x0

.field private static final D:I = 0x0

.field private static final E:I = 0x0

.field private static final F:Z = false

.field private static final G:Z = true

.field private static final H:Z = true


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/f;

.field private b:Landroid/view/Menu;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:C

.field private p:C

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/f;Landroid/view/Menu;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/view/h;->b:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/h;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)C
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/ActionProvider;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->z:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v0}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_16
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->r:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/h;->s:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/h;->t:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/internal/view/h;->q:I

    if-lt v0, v1, :cond_55

    move v0, v1

    :goto_19
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/view/h;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/internal/view/h;->n:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/h;->o:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/h;->p:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, Landroid/support/v7/internal/view/h;->u:I

    if-ltz v0, :cond_3d

    iget v0, p0, Landroid/support/v7/internal/view/h;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :cond_3d
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->y:Ljava/lang/String;

    if-eqz v0, :cond_67

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v0}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    move v0, v2

    goto :goto_19

    :cond_57
    new-instance v0, Landroid/support/v7/internal/view/g;

    iget-object v3, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v3}, Landroid/support/v7/internal/view/f;->c(Landroid/support/v7/internal/view/f;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/h;->y:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/internal/view/g;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_67
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_6e

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    :cond_6e
    iget v0, p0, Landroid/support/v7/internal/view/h;->q:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_7d

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_ab

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/r;->a(Z)V

    :cond_7d
    :goto_7d
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->w:Ljava/lang/String;

    if-eqz v0, :cond_be

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->w:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/f;->b()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v3}, Landroid/support/v7/internal/view/f;->d(Landroid/support/v7/internal/view/f;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/internal/view/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    :goto_96
    iget v0, p0, Landroid/support/v7/internal/view/h;->v:I

    if-lez v0, :cond_a1

    if-nez v1, :cond_b6

    iget v0, p0, Landroid/support/v7/internal/view/h;->v:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    :cond_a1
    :goto_a1
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->z:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->z:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_aa
    return-void

    :cond_ab
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_7d

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->a(Z)V

    goto :goto_7d

    :cond_b6
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_be
    move v1, v2

    goto :goto_96
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/h;->c:I

    iput v0, p0, Landroid/support/v7/internal/view/h;->d:I

    iput v0, p0, Landroid/support/v7/internal/view/h;->e:I

    iput v0, p0, Landroid/support/v7/internal/view/h;->f:I

    iput-boolean v1, p0, Landroid/support/v7/internal/view/h;->g:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/view/h;->h:Z

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v0}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/n;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/h;->c:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/h;->d:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/h;->e:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/h;->f:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/h;->g:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/h;->h:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->i:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/h;->c:I

    iget v2, p0, Landroid/support/v7/internal/view/h;->j:I

    iget v3, p0, Landroid/support/v7/internal/view/h;->k:I

    iget-object v4, p0, Landroid/support/v7/internal/view/h;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .registers 9

    const/16 v6, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v0}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/n;->MenuItem:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/h;->j:I

    const/4 v0, 0x5

    iget v4, p0, Landroid/support/v7/internal/view/h;->d:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v4, 0x6

    iget v5, p0, Landroid/support/v7/internal/view/h;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/high16 v5, -0x1

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/internal/view/h;->k:I

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->l:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->m:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/h;->n:I

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/h;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/h;->o:C

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/h;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/h;->p:C

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_d4

    move v0, v1

    :goto_69
    iput v0, p0, Landroid/support/v7/internal/view/h;->q:I

    :goto_6b
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->r:Z

    const/4 v0, 0x4

    iget-boolean v4, p0, Landroid/support/v7/internal/view/h;->g:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->s:Z

    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->h:Z

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->t:Z

    const/16 v0, 0xd

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/h;->u:I

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->y:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/h;->v:I

    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->w:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->x:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->x:Ljava/lang/String;

    if-eqz v0, :cond_db

    :goto_b0
    if-eqz v1, :cond_dd

    iget v0, p0, Landroid/support/v7/internal/view/h;->v:I

    if-nez v0, :cond_dd

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->w:Ljava/lang/String;

    if-nez v0, :cond_dd

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->x:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/f;->a()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/view/h;->a:Landroid/support/v7/internal/view/f;

    invoke-static {v4}, Landroid/support/v7/internal/view/f;->b(Landroid/support/v7/internal/view/f;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/internal/view/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ActionProvider;

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->z:Landroid/support/v4/view/ActionProvider;

    :goto_ce
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p0, Landroid/support/v7/internal/view/h;->i:Z

    return-void

    :cond_d4
    move v0, v2

    goto :goto_69

    :cond_d6
    iget v0, p0, Landroid/support/v7/internal/view/h;->f:I

    iput v0, p0, Landroid/support/v7/internal/view/h;->q:I

    goto :goto_6b

    :cond_db
    move v1, v2

    goto :goto_b0

    :cond_dd
    if-eqz v1, :cond_e6

    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->z:Landroid/support/v4/view/ActionProvider;

    goto :goto_ce
.end method

.method public c()Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->i:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/h;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/h;->c:I

    iget v2, p0, Landroid/support/v7/internal/view/h;->j:I

    iget v3, p0, Landroid/support/v7/internal/view/h;->k:I

    iget-object v4, p0, Landroid/support/v7/internal/view/h;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/h;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->i:Z

    return v0
.end method
