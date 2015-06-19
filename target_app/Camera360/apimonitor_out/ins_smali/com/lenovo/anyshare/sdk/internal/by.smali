.class public Lcom/lenovo/anyshare/sdk/internal/by;
.super Lcom/lenovo/httpserver/HttpServlet;
.source "InviteServlet.java"
.field private a:Ljava/io/File;
.field private b:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, ""
invoke-direct {p0, p1, v0}, Lcom/lenovo/httpserver/HttpServlet;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p2}, Ljava/io/File;->exists()Z
move-result v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_17
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/by;->a:Ljava/io/File;
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/by;->b:Ljava/lang/String;
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_17
.end method
.method protected doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
.registers 6
const-string/jumbo v0, "Content-Disposition"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "attachment;filename="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/by;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Lcom/lenovo/httpserver/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "application/vnd.android.package-archive"
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/by;->a:Ljava/io/File;
invoke-static {p2, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/by;->sendFile(Lcom/lenovo/httpserver/HttpResponse;Ljava/lang/String;Ljava/io/File;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/by;->mContext:Landroid/content/Context;
const-string/jumbo v2, "ShareByZero"
invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method