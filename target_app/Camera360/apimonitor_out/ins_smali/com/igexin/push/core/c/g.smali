.class  Lcom/igexin/push/core/c/g;
.super Lcom/igexin/push/b/d;
.field final synthetic a:Lcom/igexin/push/core/c/f;
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;
invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;
iget-object v1, p0, Lcom/igexin/push/core/c/g;->c:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V
iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;
invoke-static {v0}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;)V
iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;
invoke-static {v0}, Lcom/igexin/push/core/c/f;->b(Lcom/igexin/push/core/c/f;)V
return-void
.end method