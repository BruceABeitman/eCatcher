.class final Lcom/instagram/android/login/fragment/bu;
.super Lcom/instagram/api/k/a/h;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bu;-><init>(Lcom/instagram/android/login/fragment/an;)V
return-void
.end method
.method private a(Lcom/instagram/android/h/e;)V
.registers 9
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
iget-object v6, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;
new-instance v0, Lcom/instagram/quicksand/a;
invoke-virtual {p1}, Lcom/instagram/android/h/e;->a()Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/android/h/e;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/android/h/e;->c()Ljava/lang/Integer;
move-result-object v3
invoke-virtual {p1}, Lcom/instagram/android/h/e;->b()Ljava/lang/Integer;
move-result-object v4
invoke-virtual {p1}, Lcom/instagram/android/h/e;->d()Ljava/lang/Integer;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/instagram/quicksand/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
invoke-static {v6, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/quicksand/a;)Lcom/instagram/quicksand/a;
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->D(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/quicksand/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
invoke-static {}, Lcom/instagram/android/login/fragment/an;->U()I
move-result v0
if-lez v0, :cond_e
iget-object v0, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->E(Lcom/instagram/android/login/fragment/an;)V
:cond_e
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/h/e;
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bu;->a(Lcom/instagram/android/h/e;)V
return-void
.end method