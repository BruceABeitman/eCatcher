.class  Lcom/igexin/push/core/b/g;
.super Lcom/igexin/push/b/d;
.field final synthetic a:Lcom/igexin/push/core/b/e;
.method constructor <init>(Lcom/igexin/push/core/b/e;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/b/g;->a:Lcom/igexin/push/core/b/e;
invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V
return-void
.end method
.method public a()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/igexin/push/core/b/g;->c:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v1, "ca"
invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method