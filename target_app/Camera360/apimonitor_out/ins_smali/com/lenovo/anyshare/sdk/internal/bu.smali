.class public Lcom/lenovo/anyshare/sdk/internal/bu;
.super Ljava/lang/Object;
.source "LocalPIMLoaders.java"
.method public static a(Landroid/content/Context;)V
.registers 3
new-instance v0, Ljava/io/File;
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bu$a;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/io/File;)V
return-void
.end method
.method public static b(Landroid/content/Context;)V
.registers 3
new-instance v0, Ljava/io/File;
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bu$a;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/io/File;)V
return-void
.end method