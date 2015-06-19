.class final Lcom/bbm/ui/gl;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"
.implements Lcom/bbm/j/h;
.field final synthetic a:Lcom/bbm/ui/gk;
.method constructor <init>(Lcom/bbm/ui/gk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/gl;->a:Lcom/bbm/ui/gk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/gl;->a:Lcom/bbm/ui/gk;
invoke-static {v0}, Lcom/bbm/ui/gk;->a(Lcom/bbm/ui/gk;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/bbm/ui/gl;->a:Lcom/bbm/ui/gk;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/ui/gk;->a(Lcom/bbm/ui/gk;Z)Z
iget-object v0, p0, Lcom/bbm/ui/gl;->a:Lcom/bbm/ui/gk;
invoke-static {v0}, Lcom/bbm/ui/gk;->c(Lcom/bbm/ui/gk;)Lcom/bbm/util/dc;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/gl;->a:Lcom/bbm/ui/gk;
invoke-static {v1}, Lcom/bbm/ui/gk;->b(Lcom/bbm/ui/gk;)Ljava/lang/Runnable;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
goto :goto_8
.end method