.class final Lcom/spotify/music/MainActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/k;
.field final synthetic a:Lcom/spotify/music/MainActivity;
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$10;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final H()V
.registers 4
iget-object v0, p0, Lcom/spotify/music/MainActivity$10;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->n(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/ActionBarManager;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/MainActivity$10;->a:Lcom/spotify/music/MainActivity;
invoke-static {v1}, Lcom/spotify/music/MainActivity;->g(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/f;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/f;->a()Lcom/spotify/mobile/android/ui/ActionBarTitle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
iget-object v0, p0, Lcom/spotify/music/MainActivity$10;->a:Lcom/spotify/music/MainActivity;
invoke-virtual {v0}, Lcom/spotify/music/MainActivity;->x_()V
iget-object v1, p0, Lcom/spotify/music/MainActivity$10;->a:Lcom/spotify/music/MainActivity;
const-string v0, "input_method"
invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method