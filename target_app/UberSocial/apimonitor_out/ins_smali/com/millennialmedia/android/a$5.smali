.class final Lcom/millennialmedia/android/a$5;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/a$5;->a:Landroid/content/Context;
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
return-void
.end method
.method  a(Lcom/millennialmedia/android/ai;)Z
.registers 8
const/4 v5, 0x1
const-string v0, "AdCache"
const-string v1, "Deleting ad %s."
new-array v2, v5, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/a$5;->a:Landroid/content/Context;
invoke-virtual {p1, v0}, Lcom/millennialmedia/android/ai;->c(Landroid/content/Context;)V
return v5
.end method