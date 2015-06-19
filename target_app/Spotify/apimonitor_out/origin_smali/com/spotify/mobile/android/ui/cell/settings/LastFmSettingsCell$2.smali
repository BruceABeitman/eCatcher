.class final Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
