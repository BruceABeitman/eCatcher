.class final Lcom/instagram/android/d/h;
.super Ljava/lang/Object;
.source "AvatarHelper.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/d/f;
.method private constructor <init>(Lcom/instagram/android/d/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/h;->a:Lcom/instagram/android/d/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/d/f;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/d/h;-><init>(Lcom/instagram/android/d/f;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->b()V
iget-object v0, p0, Lcom/instagram/android/d/h;->a:Lcom/instagram/android/d/f;
invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/d/i;
invoke-direct {v1, p0}, Lcom/instagram/android/d/i;-><init>(Lcom/instagram/android/d/h;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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