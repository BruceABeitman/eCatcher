.class final Lcom/instagram/common/e/b/q;
.super Ljava/lang/Object;
.source "IgImageCacheUpgradeHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/SharedPreferences;
.field final synthetic b:Lcom/instagram/common/e/b/o;
.method constructor <init>(Lcom/instagram/common/e/b/o;Landroid/content/SharedPreferences;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/e/b/q;->b:Lcom/instagram/common/e/b/o;
iput-object p2, p0, Lcom/instagram/common/e/b/q;->a:Landroid/content/SharedPreferences;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
invoke-static {}, Lcom/instagram/common/e/b/o;->d()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/common/e/b/q;->b:Lcom/instagram/common/e/b/o;
invoke-virtual {v0}, Lcom/instagram/common/e/b/o;->c()V
iget-object v0, p0, Lcom/instagram/common/e/b/q;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "format_version"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
invoke-static {}, Lcom/instagram/common/e/b/o;->d()Ljava/lang/Class;
goto :goto_18
.end method