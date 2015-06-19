.class final Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;
.super Landroid/support/v4/content/a;
.source "SourceFile"
.field final synthetic f:Lcom/spotify/mobile/android/ui/contextmenu/a$3;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/a$3;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;->f:Lcom/spotify/mobile/android/ui/contextmenu/a$3;
invoke-direct {p0, p2}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method private s()Ljava/lang/Boolean;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;->f:Lcom/spotify/mobile/android/ui/contextmenu/a$3;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->b(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->l()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/e;->b()V
:try_end_1f
.catch Lcom/spotify/mobile/android/ui/contextmenu/ItemLoadException; {:try_start_0 .. :try_end_1f} :catch_20
goto :goto_10
:catch_20
move-exception v0
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_26
return-object v0
:cond_27
const/4 v0, 0x1
:try_start_28
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_2b
.catch Lcom/spotify/mobile/android/ui/contextmenu/ItemLoadException; {:try_start_28 .. :try_end_2b} :catch_20
move-result-object v0
goto :goto_26
.end method
.method public final synthetic d()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;->s()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected final e()V
.registers 1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;->m()V
return-void
.end method