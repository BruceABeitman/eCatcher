.class final Lcom/instagram/android/maps/ui/c;
.super Ljava/lang/Object;
.source "IgGeneratePhotoLayout.java"
.implements Lcom/instagram/android/maps/ui/g;
.field final synthetic a:Lcom/instagram/android/maps/ui/b;
.method constructor <init>(Lcom/instagram/android/maps/ui/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/c;->a:Lcom/instagram/android/maps/ui/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/android/maps/ui/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/ui/c;->a:Lcom/instagram/android/maps/ui/b;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/b;->getParentView()Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/android/maps/ui/b;->a(Landroid/view/ViewGroup;)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/c;->a:Lcom/instagram/android/maps/ui/b;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/b;->getParentView()Landroid/view/ViewGroup;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/ui/c;->a:Lcom/instagram/android/maps/ui/b;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/c;->a:Lcom/instagram/android/maps/ui/b;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setLayoutListener(Lcom/instagram/android/maps/ui/g;)V
return-void
.end method