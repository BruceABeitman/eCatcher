.class public abstract Lcom/instagram/api/j/l;
.super Ljava/lang/Object;
.source "BaseApiLoaderCallbacks.java"
.implements Landroid/support/v4/app/ao;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/instagram/api/j/c;
.field private final c:Lcom/instagram/api/j/a;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/api/j/l;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/api/j/l;->b:Lcom/instagram/api/j/c;
iput-object p3, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
return-void
.end method
.method public final a()Lcom/instagram/api/j/a;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
return-object v0
.end method
.method public a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
.registers 7
invoke-virtual {p2}, Lcom/instagram/api/j/j;->j()Z
move-result v0
if-eqz v0, :cond_af
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/instagram/api/j/j;->a(Z)V
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
invoke-virtual {v0}, Lcom/instagram/api/j/a;->b()V
invoke-virtual {p2}, Lcom/instagram/api/j/j;->k()Ljava/util/Collection;
move-result-object v0
if-eqz v0, :cond_2d
invoke-virtual {p2}, Lcom/instagram/api/j/j;->k()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/b/b;
invoke-static {v0}, Lcom/instagram/api/i/c;->a(Lcom/instagram/api/b/b;)V
goto :goto_1d
:cond_2d
invoke-virtual {p2}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_3c
invoke-virtual {p2}, Lcom/instagram/api/j/j;->f()V
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
invoke-virtual {v0, p2}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V
:goto_3b
:cond_3b
return-void
:cond_3c
invoke-virtual {p2}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "fail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_96
invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7e
invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v0
const-string v1, "login_required"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_62
invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f/b;->a(Landroid/content/Context;)V
goto :goto_3b
:cond_62
invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v0
const-string v1, "checkpoint_required"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7e
invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/api/j/j;->m()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/instagram/api/j/j;->n()Z
move-result v2
invoke-static {v0, v1, v2}, Lcom/instagram/n/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V
goto :goto_3b
:cond_7e
iget-object v0, p0, Lcom/instagram/api/j/l;->b:Lcom/instagram/api/j/c;
invoke-virtual {v0, p2}, Lcom/instagram/api/j/c;->c(Lcom/instagram/api/j/j;)Z
move-result v0
if-eqz v0, :cond_96
invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_96
invoke-virtual {p2}, Lcom/instagram/api/j/j;->g()Z
move-result v0
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
invoke-virtual {p2}, Lcom/instagram/api/j/j;->h()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/j/a;->a(Ljava/lang/Object;)V
goto :goto_3b
:cond_a6
invoke-virtual {p2}, Lcom/instagram/api/j/j;->f()V
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
invoke-virtual {v0, p2}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V
goto :goto_3b
:cond_af
invoke-virtual {p2}, Lcom/instagram/api/j/j;->g()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;
invoke-virtual {p2}, Lcom/instagram/api/j/j;->h()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/j/a;->a(Ljava/lang/Object;)V
goto/16 :goto_3b
.end method
.method public bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/instagram/api/j/j;
invoke-virtual {p0, p1, p2}, Lcom/instagram/api/j/l;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
return-void
.end method
.method protected final b()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/l;->a:Landroid/content/Context;
return-object v0
.end method