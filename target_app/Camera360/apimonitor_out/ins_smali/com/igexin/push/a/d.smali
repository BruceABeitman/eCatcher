.class  Lcom/igexin/push/a/d;
.super Lcom/igexin/push/b/d;
.field final synthetic a:Lcom/igexin/push/a/a;
.method constructor <init>(Lcom/igexin/push/a/a;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/a/d;->a:Lcom/igexin/push/a/a;
invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V
return-void
.end method
.method public a()V
.registers 5
iget-object v0, p0, Lcom/igexin/push/a/d;->a:Lcom/igexin/push/a/a;
iget-object v1, p0, Lcom/igexin/push/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;
const/16 v2, 0x10
sget v3, Lcom/igexin/push/a/j;->i:I
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
return-void
.end method