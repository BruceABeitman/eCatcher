.class final Landroid/support/v7/app/m;
.super Landroid/support/v7/app/l;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/y;


# instance fields
.field final b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

.field private c:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    sget v0, Landroid/support/v7/a/f;->e:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a(Landroid/support/v7/internal/widget/y;)V

    :cond_16
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/m;->c:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 3

    new-instance v0, Landroid/support/v7/app/n;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/n;-><init>(Landroid/support/v7/app/m;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method final g()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/support/v7/app/l;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
