.class final Lcom/instagram/android/fragment/cz;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/fragment/ct;
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/cz;->a:Lcom/instagram/android/fragment/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->b()V
iget-object v0, p0, Lcom/instagram/android/fragment/cz;->a:Lcom/instagram/android/fragment/ct;
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ct;->c(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
return-void
.end method