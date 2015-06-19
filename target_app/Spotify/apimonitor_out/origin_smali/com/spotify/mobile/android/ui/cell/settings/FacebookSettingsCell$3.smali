.class final Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Z

    move-result v0

    if-eq p2, v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->b()V

    :cond_d
    return-void
.end method
