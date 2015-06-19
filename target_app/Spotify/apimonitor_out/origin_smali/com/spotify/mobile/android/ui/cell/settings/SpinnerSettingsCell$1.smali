.class final Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)[I

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)[I

    move-result-object v0

    array-length v0, v0

    if-le v0, p3, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)[I

    move-result-object v0

    aget v0, v0, p3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->c(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v1, p3}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;I)I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)I

    move-result v1

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b()V

    goto :goto_46
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;I)I

    return-void
.end method
