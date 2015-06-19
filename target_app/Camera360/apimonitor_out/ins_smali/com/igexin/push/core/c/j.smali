.class  Lcom/igexin/push/core/c/j;
.super Lcom/igexin/push/b/d;
.field final synthetic a:Lcom/igexin/push/core/c/f;
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/c/j;->a:Lcom/igexin/push/core/c/f;
invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V
return-void
.end method
.method public a()V
.registers 6
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/core/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;
const/4 v2, 0x1
sget-wide v3, Lcom/igexin/push/core/g;->t:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/igexin/push/f/b;->a([B)[B
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;I[B)V
iget-object v0, p0, Lcom/igexin/push/core/c/j;->a:Lcom/igexin/push/core/c/f;
invoke-static {v0}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;)V
return-void
.end method