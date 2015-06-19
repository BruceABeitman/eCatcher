.class  Lcom/millennialmedia/a/a/b/f$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/b/q;
.field final synthetic a:Ljava/lang/Class;
.field final synthetic b:Ljava/lang/reflect/Type;
.field final synthetic c:Lcom/millennialmedia/a/a/b/f;
.field private final d:Lcom/millennialmedia/a/a/b/v;
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
.registers 5
iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$4;->c:Lcom/millennialmedia/a/a/b/f;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/f$4;->a:Ljava/lang/Class;
iput-object p3, p0, Lcom/millennialmedia/a/a/b/f$4;->b:Ljava/lang/reflect/Type;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/millennialmedia/a/a/b/v;->a()Lcom/millennialmedia/a/a/b/v;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/b/f$4;->d:Lcom/millennialmedia/a/a/b/v;
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/millennialmedia/a/a/b/f$4;->d:Lcom/millennialmedia/a/a/b/v;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/f$4;->a:Ljava/lang/Class;
invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/b/v;->a(Ljava/lang/Class;)Ljava/lang/Object;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
return-object v0
:catch_9
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unable to invoke no-args constructor for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/a/a/b/f$4;->b:Ljava/lang/reflect/Type;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ". "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method