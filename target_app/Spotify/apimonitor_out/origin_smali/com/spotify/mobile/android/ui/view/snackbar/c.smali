.class public final Lcom/spotify/mobile/android/ui/view/snackbar/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

.field private c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

.field private d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

.field private e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

.field private f:Lcom/spotify/mobile/android/ui/view/snackbar/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    const v2, 0x7f03002e

    const-string v3, "Additional info bar"

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/g;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(Lcom/spotify/mobile/android/ui/view/snackbar/d;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    const v2, 0x7f030057

    const-string v3, "Gaia bar"

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/g;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(Lcom/spotify/mobile/android/ui/view/snackbar/d;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    const v2, 0x7f0a02be

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v3

    const-string v4, "Offline bar"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/view/snackbar/b;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILandroid/support/v4/app/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(Lcom/spotify/mobile/android/ui/view/snackbar/d;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    const v2, 0x7f0a0370

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v3

    const-string v4, "Player preview bar"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/view/snackbar/b;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILandroid/support/v4/app/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->b:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(Lcom/spotify/mobile/android/ui/view/snackbar/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/r;

    if-eqz v0, :cond_88

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/e;Lcom/spotify/mobile/android/ui/view/snackbar/e;)V

    :cond_88
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/o;

    if-eqz v0, :cond_9b

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/o;->a(Lcom/spotify/mobile/android/ui/view/snackbar/f;)V

    :cond_9b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/o;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a(Landroid/support/v4/app/Fragment;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->c:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/o;->a(Lcom/spotify/mobile/android/ui/view/snackbar/f;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/r;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a(Landroid/support/v4/app/Fragment;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->d:Lcom/spotify/mobile/android/ui/view/snackbar/b;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->e:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/snackbar/c;->f:Lcom/spotify/mobile/android/ui/view/snackbar/g;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/e;Lcom/spotify/mobile/android/ui/view/snackbar/e;)V

    return-void
.end method
