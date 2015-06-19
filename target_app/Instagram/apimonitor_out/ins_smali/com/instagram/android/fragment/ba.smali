.class final Lcom/instagram/android/fragment/ba;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/fragment/av;
.method private constructor <init>(Lcom/instagram/android/fragment/av;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ba;->a:Lcom/instagram/android/fragment/av;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/av;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ba;-><init>(Lcom/instagram/android/fragment/av;)V
return-void
.end method
.method public final a()V
.registers 1
invoke-static {}, Lcom/instagram/android/fragment/av;->d()Ljava/lang/Class;
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
const/4 v0, 0x1
invoke-static {v0}, Lcom/instagram/share/b/a;->b(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/ba;->a:Lcom/instagram/android/fragment/av;
invoke-static {v0}, Lcom/instagram/android/fragment/av;->e(Lcom/instagram/android/fragment/av;)Lcom/instagram/common/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/ba;->a:Lcom/instagram/android/fragment/av;
invoke-static {v1}, Lcom/instagram/android/fragment/av;->d(Lcom/instagram/android/fragment/av;)Lcom/instagram/android/c/b/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
invoke-static {}, Lcom/instagram/android/fragment/av;->d()Ljava/lang/Class;
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
invoke-static {}, Lcom/instagram/android/fragment/av;->d()Ljava/lang/Class;
return-void
.end method