.class final Lcom/instagram/android/login/fragment/ct;
.super Ljava/lang/Object;
.source "VerifyFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/h/h;
.field final synthetic b:Lcom/instagram/android/login/fragment/cs;
.method constructor <init>(Lcom/instagram/android/login/fragment/cs;Lcom/instagram/android/h/h;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/ct;->b:Lcom/instagram/android/login/fragment/cs;
iput-object p2, p0, Lcom/instagram/android/login/fragment/ct;->a:Lcom/instagram/android/h/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ct;->a:Lcom/instagram/android/h/h;
invoke-virtual {v0}, Lcom/instagram/android/h/h;->a()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/android/login/fragment/ct;->b:Lcom/instagram/android/login/fragment/cs;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->c(Lcom/instagram/android/login/fragment/ci;)V
:cond_f
return-void
.end method