.class final Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)Z

    move-result v0

    if-eq p2, v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/ContentValues;)V

    :cond_13
    return-void
.end method
