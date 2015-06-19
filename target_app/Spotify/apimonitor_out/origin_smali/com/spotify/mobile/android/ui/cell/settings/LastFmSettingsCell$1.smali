.class final Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V

    goto :goto_16
.end method
