.class final Lcom/instagram/android/fragment/aw;
.super Lcom/instagram/common/a/a/l;
.source "FacebookAdvancedOptionsFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/av;
.method constructor <init>(Lcom/instagram/android/fragment/av;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/c/b/e;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/av;->a(Lcom/instagram/android/fragment/av;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
if-eqz p1, :cond_24
invoke-virtual {p1}, Lcom/instagram/android/c/b/e;->f_()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
invoke-virtual {p1}, Lcom/instagram/android/c/b/e;->a()Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/av;->a(Lcom/instagram/android/fragment/av;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
invoke-static {v0}, Lcom/instagram/android/fragment/av;->a(Lcom/instagram/android/fragment/av;)V
:goto_23
return-void
:cond_24
iget-object v0, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
invoke-static {v0}, Lcom/instagram/android/fragment/av;->b(Lcom/instagram/android/fragment/av;)V
goto :goto_23
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/aw;->a:Lcom/instagram/android/fragment/av;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/av;->a(Lcom/instagram/android/fragment/av;Z)Z
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/c/b/e;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/aw;->a(Lcom/instagram/android/c/b/e;)V
return-void
.end method