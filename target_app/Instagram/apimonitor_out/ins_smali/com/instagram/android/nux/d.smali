.class final Lcom/instagram/android/nux/d;
.super Lcom/instagram/common/a/a/l;
.source "FacebookHelper.java"
.field final synthetic a:Lcom/instagram/android/nux/a;
.method private constructor <init>(Lcom/instagram/android/nux/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/nux/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/nux/d;-><init>(Lcom/instagram/android/nux/a;)V
return-void
.end method
.method private a(Lcom/instagram/android/nux/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->b(Lcom/instagram/android/nux/a;)V
if-eqz p1, :cond_1f
invoke-virtual {p1}, Lcom/instagram/android/nux/j;->f_()Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->c(Lcom/instagram/android/nux/a;)Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->d(Lcom/instagram/android/nux/a;)Lcom/instagram/android/nux/e;
move-result-object v0
invoke-interface {v0, p1}, Lcom/instagram/android/nux/e;->a(Lcom/instagram/android/nux/j;)V
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->e(Lcom/instagram/android/nux/a;)V
goto :goto_1e
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->a(Lcom/instagram/android/nux/a;)V
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/nux/j;
invoke-direct {p0, p1}, Lcom/instagram/android/nux/d;->a(Lcom/instagram/android/nux/j;)V
return-void
.end method