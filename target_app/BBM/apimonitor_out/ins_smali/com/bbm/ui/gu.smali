.class final Lcom/bbm/ui/gu;
.super Ljava/lang/Object;
.source "StoreItemView.java"
.implements Lcom/bbm/util/bx;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/gv;
.field final synthetic c:Lcom/bbm/ui/StoreItemView;
.method constructor <init>(Lcom/bbm/ui/StoreItemView;Ljava/lang/String;Lcom/bbm/ui/gv;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/gu;->c:Lcom/bbm/ui/StoreItemView;
iput-object p2, p0, Lcom/bbm/ui/gu;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/ui/gu;->b:Lcom/bbm/ui/gv;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fd;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/gu;->c:Lcom/bbm/ui/StoreItemView;
invoke-static {v0}, Lcom/bbm/ui/StoreItemView;->g(Lcom/bbm/ui/StoreItemView;)Lcom/bbm/util/b/d;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/gu;->c:Lcom/bbm/ui/StoreItemView;
invoke-static {v0}, Lcom/bbm/ui/StoreItemView;->g(Lcom/bbm/ui/StoreItemView;)Lcom/bbm/util/b/d;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/gu;->a:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
:cond_13
iget-object v0, p0, Lcom/bbm/ui/gu;->b:Lcom/bbm/ui/gv;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/bbm/ui/gu;->b:Lcom/bbm/ui/gv;
iget-object v1, p0, Lcom/bbm/ui/gu;->a:Ljava/lang/String;
invoke-interface {v0, p1, v1}, Lcom/bbm/ui/gv;->a(Lcom/bbm/d/fd;Ljava/lang/String;)V
:cond_1e
return-void
.end method