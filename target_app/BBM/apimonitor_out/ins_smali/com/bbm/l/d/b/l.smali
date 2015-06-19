.class final Lcom/bbm/l/d/b/l;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Lcom/bbm/l/d/b/r;
.field final synthetic a:Lcom/bbm/l/d/b/c;
.method constructor <init>(Lcom/bbm/l/d/b/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
.registers 7
const/4 v3, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->b(Lcom/bbm/l/d/b/c;)Lcom/bbm/l/d/b;
move-result-object v0
if-eqz v0, :cond_37
invoke-virtual {p1}, Lcom/bbm/l/d/b/u;->a()Z
move-result v0
if-eqz v0, :cond_50
if-eqz p2, :cond_50
iget-object v0, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
iget-object v2, p2, Lcom/bbm/l/d/b/x;->n:Ljava/lang/String;
if-nez v2, :cond_38
move v0, v1
:goto_19
if-eqz v0, :cond_3f
iget v0, p2, Lcom/bbm/l/d/b/x;->m:I
if-nez v0, :cond_3f
iget-object v0, p2, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-static {v2}, Lcom/bbm/l/d/b/c;->c(Lcom/bbm/l/d/b/c;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->b(Lcom/bbm/l/d/b/c;)Lcom/bbm/l/d/b;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1, p2}, Lcom/bbm/l/d/b;->a(ZLcom/bbm/l/d/b/x;)V
:goto_37
:cond_37
return-void
:cond_38
iget-object v0, v0, Lcom/bbm/l/d/b/c;->c:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_19
:cond_3f
const-string v0, "Developer payload/sku failed verification"
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->b(Lcom/bbm/l/d/b/c;)Lcom/bbm/l/d/b;
move-result-object v0
invoke-interface {v0, v1, v3}, Lcom/bbm/l/d/b;->a(ZLcom/bbm/l/d/b/x;)V
goto :goto_37
:cond_50
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Purchase did not succeed."
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/l/d/b/l;->a:Lcom/bbm/l/d/b/c;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->b(Lcom/bbm/l/d/b/c;)Lcom/bbm/l/d/b;
move-result-object v0
invoke-interface {v0, v1, v3}, Lcom/bbm/l/d/b;->a(ZLcom/bbm/l/d/b/x;)V
goto :goto_37
.end method