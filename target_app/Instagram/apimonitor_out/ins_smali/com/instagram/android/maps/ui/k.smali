.class final Lcom/instagram/android/maps/ui/k;
.super Ljava/lang/Object;
.source "IgMapsView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/ui/j;
.method constructor <init>(Lcom/instagram/android/maps/ui/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/k;->a:Lcom/instagram/android/maps/ui/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/k;->a:Lcom/instagram/android/maps/ui/j;
iget-object v0, v0, Lcom/instagram/android/maps/ui/j;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V
return-void
.end method