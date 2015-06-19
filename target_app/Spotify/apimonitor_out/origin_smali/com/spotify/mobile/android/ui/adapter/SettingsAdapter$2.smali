.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/cell/settings/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$2;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->t:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$2;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Landroid/content/Context;Z)V

    :cond_11
    return-void
.end method
