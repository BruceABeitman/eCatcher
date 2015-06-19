.class final Lcom/instagram/android/nux/ae;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/nux/n;
.method private constructor <init>(Lcom/instagram/android/nux/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/nux/n;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/nux/ae;-><init>(Lcom/instagram/android/nux/n;)V
return-void
.end method
.method public final a()V
.registers 2
sget-object v0, Lcom/instagram/o/b;->f:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->b()V
new-instance v0, Lcom/instagram/registrationpush/a;
iget-object v1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V
sget-object v0, Lcom/instagram/o/b;->e:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
iget-object v1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
invoke-static {}, Lcom/instagram/android/nux/n;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 3
sget-object v0, Lcom/instagram/o/b;->g:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->d(Lcom/instagram/android/nux/n;)V
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 3
sget-object v0, Lcom/instagram/o/b;->g:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->d(Lcom/instagram/android/nux/n;)V
return-void
.end method