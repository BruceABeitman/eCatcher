.class final Lcom/spotify/mobile/android/ui/fragments/w$1;
.super Lcom/spotify/mobile/android/ui/adapter/g;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/w;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/w;Landroid/content/Context;Landroid/widget/ListAdapter;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/w$1;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/g;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
return-void
.end method
.method public final a(I)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$1;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(I)I
move-result v0
return v0
.end method