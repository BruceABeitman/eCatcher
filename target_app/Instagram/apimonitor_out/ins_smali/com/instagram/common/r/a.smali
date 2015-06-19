.class public final Lcom/instagram/common/r/a;
.super Ljava/lang/Object;
.source "BooleanPreference.java"
.field private final a:Landroid/content/SharedPreferences;
.field private final b:Ljava/lang/String;
.field private final c:Z
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/r/a;->a:Landroid/content/SharedPreferences;
iput-object p2, p0, Lcom/instagram/common/r/a;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/r/a;->c:Z
return-void
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/r/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/r/a;->b:Ljava/lang/String;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a()Ljava/lang/Boolean;
.registers 4
iget-object v0, p0, Lcom/instagram/common/r/a;->a:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/instagram/common/r/a;->b:Ljava/lang/String;
iget-boolean v2, p0, Lcom/instagram/common/r/a;->c:Z
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/Boolean;)V
.registers 5
if-nez p1, :cond_6
invoke-direct {p0}, Lcom/instagram/common/r/a;->b()V
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/instagram/common/r/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/r/a;->b:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_5
.end method