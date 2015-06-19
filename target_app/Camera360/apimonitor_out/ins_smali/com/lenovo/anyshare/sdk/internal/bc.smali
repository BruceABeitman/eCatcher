.class public Lcom/lenovo/anyshare/sdk/internal/bc;
.super Ljava/lang/Object;
.source "Settings.java"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->a:Landroid/content/Context;
const-string/jumbo v0, "Settings"
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->b:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;I)I
.registers 6
const/4 v2, 0x0
invoke-virtual {p0, p1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
:goto_7
return p2
:cond_8
:try_start_8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
:try_end_f
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11
move-result p2
goto :goto_7
:catch_11
move-exception v0
goto :goto_7
.end method
.method public a(Ljava/lang/String;J)J
.registers 6
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:try_start_4
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_7
.catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9
move-result-wide p2
:goto_8
return-wide p2
:catch_9
move-exception v0
goto :goto_8
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string/jumbo v0, ""
invoke-virtual {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->b:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
if-nez v1, :cond_28
const-string/jumbo v2, "Settings"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->b:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\'s SharedPreferences is null!"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_27
return-void
:cond_28
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_27
.end method
.method public a(Ljava/lang/String;Z)Z
.registers 6
const/4 v2, 0x0
invoke-virtual {p0, p1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
:goto_7
return p2
:cond_8
:try_start_8
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_f
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11
move-result p2
goto :goto_7
:catch_11
move-exception v0
goto :goto_7
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bc;->b:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
if-eqz v0, :cond_f
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
:cond_f
return-object p2
.end method
.method public b(Ljava/lang/String;I)V
.registers 4
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b(Ljava/lang/String;J)V
.registers 5
invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b(Ljava/lang/String;Z)V
.registers 4
invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method