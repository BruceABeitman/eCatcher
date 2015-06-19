.class final Lcom/spotify/mobile/android/service/flow/login/t$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->t(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/aa;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0f01f4

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    move v0, v1

    :cond_22
    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->h(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/aa;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->f(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0f01fa

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    move v0, v1

    :cond_42
    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->l(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    const v3, 0x7f0f0103

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    move v0, v1

    :cond_5d
    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->u(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_92

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0f0392

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    move v0, v1

    :goto_74
    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->s(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b()Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;

    move-result-object v2

    if-nez v2, :cond_8f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0f0107

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    move v0, v1

    :cond_8f
    if-eqz v0, :cond_a2

    :goto_91
    return-void

    :cond_92
    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v3}, Lcom/spotify/mobile/android/service/flow/login/t;->u(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/service/flow/login/aa;->a(Ljava/util/Calendar;)V

    goto :goto_74

    :cond_a2
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/v;

    iget-object v4, p0, Lcom/spotify/mobile/android/service/flow/login/t$24;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {v3, v4, v1}, Lcom/spotify/mobile/android/service/flow/login/v;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ad;)Lcom/spotify/mobile/android/service/flow/login/ad;

    goto :goto_91
.end method
