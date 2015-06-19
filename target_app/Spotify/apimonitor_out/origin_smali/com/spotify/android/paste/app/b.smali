.class public final Lcom/spotify/android/paste/app/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;

.field private j:Landroid/content/DialogInterface$OnCancelListener;

.field private k:Landroid/content/DialogInterface$OnDismissListener;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/android/paste/app/b;->l:Z

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    iput p2, p0, Lcom/spotify/android/paste/app/b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/spotify/android/paste/app/a;
    .registers 5

    new-instance v0, Lcom/spotify/android/paste/app/a;

    iget-object v1, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    iget v2, p0, Lcom/spotify/android/paste/app/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/app/a;-><init>(Landroid/content/Context;I)V

    iget-boolean v1, p0, Lcom/spotify/android/paste/app/b;->l:Z

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/a;->setCancelable(Z)V

    iget-object v1, p0, Lcom/spotify/android/paste/app/b;->j:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/spotify/android/paste/app/b;->k:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->f:Ljava/lang/CharSequence;

    new-instance v3, Lcom/spotify/android/paste/app/b$1;

    invoke-direct {v3, p0, v0}, Lcom/spotify/android/paste/app/b$1;-><init>(Lcom/spotify/android/paste/app/b;Lcom/spotify/android/paste/app/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_2f
    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->g:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->g:Ljava/lang/CharSequence;

    new-instance v3, Lcom/spotify/android/paste/app/b$2;

    invoke-direct {v3, p0, v0}, Lcom/spotify/android/paste/app/b$2;-><init>(Lcom/spotify/android/paste/app/b;Lcom/spotify/android/paste/app/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_3d
    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V

    :cond_46
    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V

    :cond_4f
    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->e:Landroid/view/View;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/spotify/android/paste/app/b;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    :cond_58
    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a()Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/android/paste/app/a;->a(Lcom/spotify/android/paste/app/a;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/DialogLayout;->b()Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/android/paste/app/a;->b(Lcom/spotify/android/paste/app/a;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/a;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(I)Lcom/spotify/android/paste/app/b;
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/android/paste/app/b;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/spotify/android/paste/app/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->j:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/spotify/android/paste/app/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->k:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/spotify/android/paste/app/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->e:Landroid/view/View;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
    .registers 3

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->f:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/spotify/android/paste/app/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final b()Lcom/spotify/android/paste/app/b;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/android/paste/app/b;->l:Z

    return-object p0
.end method

.method public final b(I)Lcom/spotify/android/paste/app/b;
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/android/paste/app/b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/app/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
    .registers 3

    iput-object p1, p0, Lcom/spotify/android/paste/app/b;->g:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/spotify/android/paste/app/b;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
