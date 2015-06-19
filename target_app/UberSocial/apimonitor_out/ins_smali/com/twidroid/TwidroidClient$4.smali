.class  Lcom/twidroid/TwidroidClient$4;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$4;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V
return-void
.end method
.method public onPageSelected(I)V
.registers 5
const-string v0, "TwidroidClient"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Page "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " selected"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$4;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0, p1}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;I)I
iget-object v0, p0, Lcom/twidroid/TwidroidClient$4;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0, p1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$4;->a:Lcom/twidroid/TwidroidClient;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$4;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v1}, Lcom/twidroid/TwidroidClient;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method