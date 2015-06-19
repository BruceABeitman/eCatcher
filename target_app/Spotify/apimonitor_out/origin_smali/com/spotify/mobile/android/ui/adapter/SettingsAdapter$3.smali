.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
