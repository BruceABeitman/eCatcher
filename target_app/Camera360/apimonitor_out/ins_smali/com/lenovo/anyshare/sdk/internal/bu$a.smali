.class public abstract Lcom/lenovo/anyshare/sdk/internal/bu$a;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalPIMLoaders.java"
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method public static c(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bu$a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".packaged/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method