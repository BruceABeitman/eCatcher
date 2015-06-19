.class final Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->toggle()V

    :cond_11
    return-void
.end method
