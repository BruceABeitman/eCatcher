.class final Lcom/spotify/mobile/android/service/flow/login/q$7;
.super Lcom/spotify/mobile/android/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/q;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/q;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/util/a;->afterTextChanged(Landroid/text/Editable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->c(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    const v2, 0x7f0f025e

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/q;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->d(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->c(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$7;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->d(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2b
.end method
