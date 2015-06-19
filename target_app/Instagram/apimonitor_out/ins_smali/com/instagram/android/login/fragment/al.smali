.class final Lcom/instagram/android/login/fragment/al;
.super Lcom/instagram/api/j/a;
.source "PhoneNumberEntryFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;
.method private constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ad;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/al;-><init>(Lcom/instagram/android/login/fragment/ad;)V
return-void
.end method
.method private a(Ljava/lang/Boolean;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->g(Lcom/instagram/android/login/fragment/ad;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/fragment/am;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/am;-><init>(Lcom/instagram/android/login/fragment/al;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_14
return-void
.end method
.method public final a()V
.registers 3
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 6
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z
move-result v0
if-eqz v0, :cond_12
invoke-static {p1}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/al;->a(Ljava/lang/Boolean;)V
return-void
.end method