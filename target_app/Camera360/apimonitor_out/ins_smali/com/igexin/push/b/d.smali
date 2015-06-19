.class public abstract Lcom/igexin/push/b/d;
.super Lcom/igexin/a/a/d/d;
.field private static final a:Ljava/lang/String;
.field protected c:Landroid/database/sqlite/SQLiteDatabase;
.field protected d:Landroid/database/Cursor;
.field protected e:Landroid/content/ContentValues;
.field public f:Lcom/igexin/push/b/c;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/b/d;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V
return-void
.end method
.method public constructor <init>(Landroid/content/ContentValues;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V
iput-object p1, p0, Lcom/igexin/push/b/d;->e:Landroid/content/ContentValues;
return-void
.end method
.method public abstract a()V
.end method
.method public final a_()I
.registers 2
const v0, -0x7ffffff8
return v0
.end method
.method public b()V
.registers 3
invoke-super {p0}, Lcom/igexin/a/a/d/d;->b()V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/igexin/push/b/d;->c:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {p0}, Lcom/igexin/push/b/d;->a()V
iget-object v0, p0, Lcom/igexin/push/b/d;->f:Lcom/igexin/push/b/c;
if-eqz v0, :cond_28
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/b/d;->f:Lcom/igexin/push/b/c;
invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V
:cond_28
return-void
.end method
.method public c()V
.registers 2
invoke-super {p0}, Lcom/igexin/a/a/d/d;->c()V
iget-object v0, p0, Lcom/igexin/push/b/d;->d:Landroid/database/Cursor;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/igexin/push/b/d;->d:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v0
if-nez v0, :cond_14
:try_start_f
iget-object v0, p0, Lcom/igexin/push/b/d;->d:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_14
.end method
.method public d()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/b/d;->z:Z
iput-boolean v0, p0, Lcom/igexin/push/b/d;->U:Z
return-void
.end method
.method protected e()V
.registers 1
return-void
.end method