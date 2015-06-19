.class  Lcom/millennialmedia/android/ca$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/cq;
.field final synthetic b:Lcom/millennialmedia/android/cg;
.field final synthetic c:Lcom/millennialmedia/android/ca;
.method constructor <init>(Lcom/millennialmedia/android/ca;Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/cg;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/android/ca$1;->c:Lcom/millennialmedia/android/ca;
iput-object p2, p0, Lcom/millennialmedia/android/ca$1;->a:Lcom/millennialmedia/android/cq;
iput-object p3, p0, Lcom/millennialmedia/android/ca$1;->b:Lcom/millennialmedia/android/cg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/millennialmedia/android/ca$1;->c:Lcom/millennialmedia/android/ca;
invoke-static {v0}, Lcom/millennialmedia/android/ca;->a(Lcom/millennialmedia/android/ca;)Ljava/lang/String;
move-result-object v0
const-string v1, "expandWithProperties"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/millennialmedia/android/ca$1;->a:Lcom/millennialmedia/android/cq;
iput-boolean v4, v0, Lcom/millennialmedia/android/cq;->f:Z
:cond_13
const-string v0, "javascript:%s(%s);"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/millennialmedia/android/ca$1;->c:Lcom/millennialmedia/android/ca;
invoke-static {v3}, Lcom/millennialmedia/android/ca;->b(Lcom/millennialmedia/android/ca;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
iget-object v2, p0, Lcom/millennialmedia/android/ca$1;->b:Lcom/millennialmedia/android/cg;
invoke-virtual {v2}, Lcom/millennialmedia/android/cg;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/ca$1;->a:Lcom/millennialmedia/android/cq;
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
return-void
.end method