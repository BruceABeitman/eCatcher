.class public final Lcom/spotify/mobile/android/ui/fragments/logic/u;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unaccepted_licenses"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/u$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/u$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/u;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->b:Landroid/support/v4/app/z;

    iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    return-void
.end method

.method static synthetic D()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/u;[Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    if-nez v2, :cond_33

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->f:Landroid/content/Intent;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->f:Landroid/content/Intent;

    const-string v3, "licenses"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Presenter is null? (%s)"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-nez v4, :cond_34

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_33
    return-void

    :cond_34
    move v0, v1

    goto :goto_21
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    if-ne p1, v0, :cond_14

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    :cond_14
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    if-ne p2, v0, :cond_26

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_26
    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_15

    const-string v0, "license_request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    const-string v0, "license_dialog_queued"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    :cond_15
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0183

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Lcom/spotify/mobile/android/util/DialogPresenter;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_c
    return-void
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->f:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->a(Landroid/content/Intent;I)V

    :goto_19
    return-void

    :cond_1a
    const-string v0, "Unexpected onShow(). Did not expect to show a dialog when nothing queued"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "license_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "license_dialog_queued"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
