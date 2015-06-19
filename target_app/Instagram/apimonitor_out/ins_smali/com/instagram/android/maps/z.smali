.class final Lcom/instagram/android/maps/z;
.super Lcom/instagram/api/j/f;
.source "PhotoMapsActivity.java"
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i(Lcom/instagram/android/maps/PhotoMapsActivity;)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
invoke-super {p0}, Lcom/instagram/api/j/f;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
if-eqz p1, :cond_32
invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;
move-result-object v0
const/16 v1, 0x190
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/aa;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/aa;-><init>(Lcom/instagram/android/maps/z;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2e
invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V
return-void
:cond_32
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
iget-object v1, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
sget v2, Lcom/facebook/az;->could_not_load_photo_map_information:I
invoke-virtual {v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_2e
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/z;->a(Ljava/util/List;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
invoke-super {p0}, Lcom/instagram/api/j/f;->b()V
return-void
.end method