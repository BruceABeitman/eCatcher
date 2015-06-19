.class final Lcom/instagram/android/fragment/dz;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dy;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/dz;->a:Lcom/instagram/android/fragment/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/dz;->a:Lcom/instagram/android/fragment/dy;

    invoke-static {v0}, Lcom/instagram/android/fragment/dy;->a(Lcom/instagram/android/fragment/dy;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/instagram/android/fragment/dz;->a:Lcom/instagram/android/fragment/dy;

    invoke-static {v0}, Lcom/instagram/android/fragment/dy;->a(Lcom/instagram/android/fragment/dy;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
