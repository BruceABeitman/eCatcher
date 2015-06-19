.class final Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->toggle()V

    return-void
.end method
