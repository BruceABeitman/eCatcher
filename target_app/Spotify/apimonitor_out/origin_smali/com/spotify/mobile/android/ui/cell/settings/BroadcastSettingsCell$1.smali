.class final Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->toggle()V

    return-void
.end method
