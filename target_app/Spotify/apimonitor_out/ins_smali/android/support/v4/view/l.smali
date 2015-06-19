.class public abstract Landroid/support/v4/view/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private b:Landroid/support/v4/view/m;
.field private c:Landroid/support/v4/view/n;
.method public final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/content/Context;
return-object v0
.end method
.method public final a(Landroid/support/v4/view/m;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/l;->b:Landroid/support/v4/view/m;
return-void
.end method
.method public final a(Landroid/support/v4/view/n;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/view/l;->c:Landroid/support/v4/view/n;
if-eqz v0, :cond_28
if-eqz p1, :cond_28
const-string v0, "ActionProvider(support)"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " instance while it is still in use somewhere else?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_28
iput-object p1, p0, Landroid/support/v4/view/l;->c:Landroid/support/v4/view/n;
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/l;->b:Landroid/support/v4/view/m;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/view/l;->b:Landroid/support/v4/view/m;
invoke-interface {v0, p1}, Landroid/support/v4/view/m;->a(Z)V
:cond_9
return-void
.end method
.method public abstract b()Landroid/view/View;
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/l;->c:Landroid/support/v4/view/n;
return-void
.end method