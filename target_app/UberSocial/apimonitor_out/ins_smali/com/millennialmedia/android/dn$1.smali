.class  Lcom/millennialmedia/android/dn$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/millennialmedia/android/dn;
.method constructor <init>(Lcom/millennialmedia/android/dn;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/dn$1;->b:Lcom/millennialmedia/android/dn;
iput-object p2, p0, Lcom/millennialmedia/android/dn$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/dn$1;->a:Ljava/lang/String;
const-string v1, "restartVideo"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/millennialmedia/android/dn$1;->b:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->k()V
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/millennialmedia/android/dn$1;->a:Ljava/lang/String;
const-string v1, "endVideo"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/dn$1;->b:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->t()V
goto :goto_f
.end method