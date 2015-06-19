.class public final Lcom/spotify/mobile/android/service/flow/login/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const v0, 0x7f1000ad

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->b:I

    return-void
.end method

.method private a(IILcom/spotify/mobile/android/service/flow/login/z;)Lcom/spotify/android/paste/app/a;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/spotify/android/paste/app/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    iget v3, p0, Lcom/spotify/mobile/android/service/flow/login/y;->b:I

    invoke-direct {v2, v0, v3}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const v3, 0x7f0f038b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/y$2;

    invoke-direct {v3, p0, p3}, Lcom/spotify/mobile/android/service/flow/login/y$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V

    invoke-virtual {v2, v0, v3}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const v3, 0x7f0f038c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/y$3;

    invoke-direct {v3, p0, p3}, Lcom/spotify/mobile/android/service/flow/login/y$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V

    invoke-virtual {v2, v0, v3}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const v4, 0x7f10007f

    invoke-static {v0, v3, v4}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v4, 0x7f010185

    aput v4, v0, v1

    iget-object v4, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    const v5, 0x7f1000ab

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v4, :cond_7a

    move v0, v1

    :goto_4f
    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v3, p2, v1}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Landroid/widget/TextView;II)V

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/app/b;->a(Landroid/view/View;)Lcom/spotify/android/paste/app/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->f:Z

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/y$4;

    invoke-direct {v0, p0, p3}, Lcom/spotify/mobile/android/service/flow/login/y$4;-><init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/app/b;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/spotify/android/paste/app/b;

    :cond_6d
    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/y$5;

    invoke-direct {v0, p0, p3}, Lcom/spotify/mobile/android/service/flow/login/y$5;-><init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/app/b;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/spotify/android/paste/app/b;

    invoke-virtual {v2}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;

    move-result-object v0

    return-object v0

    :cond_7a
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4f
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/y;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->c:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "the_first_dialog_shown"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/y;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;II)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_29

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br><br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    const-string v1, "spotify:"

    const-string v2, "com.spotify.mobile.android.tos:spotify:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V
    .registers 7

    invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/k;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    :cond_24
    invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p2}, Lcom/spotify/mobile/android/service/flow/login/z;->a()V

    :goto_2d
    return-void

    :cond_2e
    invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    const v0, 0x7f0f038f

    const v1, 0x7f0f00f6

    invoke-direct {p0, v0, v1, p2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(IILcom/spotify/mobile/android/service/flow/login/z;)Lcom/spotify/android/paste/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    goto :goto_2d

    :cond_42
    const v0, 0x7f0f038a

    const v1, 0x7f0f0389

    invoke-direct {p0, v0, v1, p2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(IILcom/spotify/mobile/android/service/flow/login/z;)Lcom/spotify/android/paste/app/a;

    move-result-object v0

    const v1, 0x7f0f038e

    const v2, 0x7f0f038d

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/y$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/spotify/mobile/android/service/flow/login/y$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/android/paste/app/a;Lcom/spotify/mobile/android/service/flow/login/z;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/y;->a(IILcom/spotify/mobile/android/service/flow/login/z;)Lcom/spotify/android/paste/app/a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/y;->c:Z

    if-eqz v2, :cond_63

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    goto :goto_2d

    :cond_63
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/a;->show()V

    goto :goto_2d
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_b

    const-string v0, "the_first_dialog_shown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/y;->c:Z

    :cond_b
    return-void
.end method
