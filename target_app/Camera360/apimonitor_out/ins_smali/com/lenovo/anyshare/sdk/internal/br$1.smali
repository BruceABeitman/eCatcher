.class final Lcom/lenovo/anyshare/sdk/internal/br$1;
.super Lcom/lenovo/anyshare/sdk/internal/be$c;
.source "LocalAppLoader.java"
.field final synthetic e:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/br$1;->e:Landroid/content/Context;
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/be$c;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/br$1;->e:Landroid/content/Context;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ay;->a(Landroid/content/Context;)V
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/br$1;->e:Landroid/content/Context;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/br;->f(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/io/File;)V
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 2
return-void
.end method