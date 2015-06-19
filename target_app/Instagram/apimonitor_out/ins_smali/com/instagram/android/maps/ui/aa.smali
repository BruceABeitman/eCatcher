.class final Lcom/instagram/android/maps/ui/aa;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Lcom/instagram/android/maps/ui/f;
.field final synthetic a:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/aa;->a:Lcom/instagram/android/maps/ui/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/ui/aa;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->g(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method