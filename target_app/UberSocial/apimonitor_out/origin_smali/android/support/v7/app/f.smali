.class abstract Landroid/support/v7/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field static final b:Ljava/lang/String; = "splitActionBarWhenNarrow"

.field private static final f:Ljava/lang/String; = "ActionBarActivityDelegate"


# instance fields
.field final c:Landroid/support/v7/app/ActionBarActivity;

.field d:Z

.field e:Z

.field private g:Landroid/support/v7/app/ActionBar;

.field private h:Landroid/view/MenuInflater;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method static a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/f;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/app/h;

    invoke-direct {v0, p0}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    :goto_b
    return-object v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v7/app/p;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    new-instance v0, Landroid/support/v7/app/o;

    invoke-direct {v0, p0}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_30

    new-instance v0, Landroid/support/v7/app/m;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3c

    new-instance v0, Landroid/support/v7/app/l;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_3c
    new-instance v0, Landroid/support/v7/app/j;

    invoke-direct {v0, p0}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b
.end method


# virtual methods
.method abstract a()Landroid/support/v7/app/ActionBar;
.end method

.method abstract a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/Configuration;)V
.end method

.method a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/a/n;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/f;->d:Z

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/f;->e:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_39

    iput-boolean v3, p0, Landroid/support/v7/app/f;->i:Z

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->c(Z)V

    goto :goto_38
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(Z)V
.end method

.method abstract a(ILandroid/view/Menu;)Z
.end method

.method abstract a(ILandroid/view/MenuItem;)Z
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method a(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_c
.end method

.method final b()Landroid/support/v7/app/ActionBar;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/f;->d:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/app/f;->e:Z

    if-eqz v0, :cond_1f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    iget-boolean v0, p0, Landroid/support/v7/app/f;->i:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/ActionBar;

    goto :goto_1c
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract b(Z)V
.end method

.method abstract b(I)Z
.end method

.method c()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    new-instance v0, Landroid/support/v7/internal/view/f;

    invoke-virtual {p0}, Landroid/support/v7/app/f;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    return-object v0
.end method

.method abstract c(I)Landroid/view/View;
.end method

.method abstract c(Z)V
.end method

.method abstract d()V
.end method

.method abstract d(I)V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()Z
.end method

.method final h()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .registers 3

    new-instance v0, Landroid/support/v7/app/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/f;Landroid/support/v7/app/f$1;)V

    return-object v0
.end method

.method abstract i()I
.end method

.method abstract j()V
.end method

.method protected final k()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_20

    move-result-object v0

    :cond_1f
    :goto_1f
    return-object v0

    :catch_20
    move-exception v1

    const-string v1, "ActionBarActivityDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method protected final l()Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->p()Landroid/content/Context;

    move-result-object v0

    :cond_c
    return-object v0
.end method
