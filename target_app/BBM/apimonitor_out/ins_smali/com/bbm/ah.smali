.class final Lcom/bbm/ah;
.super Lcom/bbm/aj;
.source "Settings.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Z
.field final synthetic c:Lcom/bbm/af;
.method constructor <init>(Lcom/bbm/af;Ljava/lang/Boolean;Ljava/lang/String;Z)V
.registers 5
iput-object p1, p0, Lcom/bbm/ah;->c:Lcom/bbm/af;
iput-object p3, p0, Lcom/bbm/ah;->a:Ljava/lang/String;
iput-boolean p4, p0, Lcom/bbm/ah;->b:Z
invoke-direct {p0, p1, p2}, Lcom/bbm/aj;-><init>(Lcom/bbm/af;Ljava/lang/Object;)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ah;->c:Lcom/bbm/af;
iget-object v0, v0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/bbm/ah;->a:Ljava/lang/String;
iget-boolean v2, p0, Lcom/bbm/ah;->b:Z
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ah;->c(Ljava/lang/Object;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)Z
.registers 5
check-cast p1, Ljava/lang/Boolean;
iget-object v0, p0, Lcom/bbm/ah;->c:Lcom/bbm/af;
iget-object v0, v0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ah;->a:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method