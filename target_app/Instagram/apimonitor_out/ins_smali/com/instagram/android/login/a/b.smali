.class final Lcom/instagram/android/login/a/b;
.super Ljava/lang/Object;
.source "CreateAccountCallbacks.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/base/a/a;
.field final synthetic b:Lcom/instagram/android/login/a/a;
.method constructor <init>(Lcom/instagram/android/login/a/a;Lcom/instagram/base/a/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/a/b;->b:Lcom/instagram/android/login/a/a;
iput-object p2, p0, Lcom/instagram/android/login/a/b;->a:Lcom/instagram/base/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/a/b;->a:Lcom/instagram/base/a/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/login/a/b;->a:Lcom/instagram/base/a/a;
invoke-virtual {v0}, Lcom/instagram/base/a/a;->b()V
:cond_9
return-void
.end method