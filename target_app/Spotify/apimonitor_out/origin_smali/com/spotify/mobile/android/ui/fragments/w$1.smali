.class final Lcom/spotify/mobile/android/ui/fragments/w$1;
.super Lcom/spotify/mobile/android/ui/adapter/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/w;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/w;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/w;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/w$1;->a:Lcom/spotify/mobile/android/ui/fragments/w;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/g;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$1;->a:Lcom/spotify/mobile/android/ui/fragments/w;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(I)I

    move-result v0

    return v0
.end method
