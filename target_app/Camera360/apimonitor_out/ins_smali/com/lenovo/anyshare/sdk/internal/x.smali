.class public Lcom/lenovo/anyshare/sdk/internal/x;
.super Lcom/lenovo/httpserver/HttpServlet;
.source "AppsServlet.java"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method protected doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
.registers 14
invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getOnlyPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/x;->getServletPath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
add-int/lit8 v8, v8, 0x2
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v9
add-int/lit8 v9, v9, -0x4
invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
const/16 v8, 0x2e
invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getParams()Ljava/util/Map;
move-result-object v6
if-eqz v6, :cond_5e
invoke-interface {v6}, Ljava/util/Map;->size()I
move-result v8
if-lez v8, :cond_5e
const-string/jumbo v8, "filename"
invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_5e
const-string/jumbo v8, "filename"
invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string/jumbo v8, ".apk"
invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_5e
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ".apk"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_5e
const-string/jumbo v8, "png"
invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_b6
const-string/jumbo v8, "thumbnail"
:goto_6a
invoke-static {v8}, Lcom/lenovo/content/base/FileType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/FileType;
move-result-object v3
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/x;->mContext:Landroid/content/Context;
sget-object v9, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
invoke-static {v8, v9, v3, v5}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/FileType;Ljava/lang/String;)Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_7e
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v8
if-nez v8, :cond_be
:cond_7e
const-string/jumbo v9, "AppsServlet"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "not found: file = "
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
if-eqz v1, :cond_ba
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
:goto_93
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v10, ", url = "
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v9, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
const/16 v8, 0x194
const-string/jumbo v9, "file not found"
invoke-virtual {p2, v8, v9}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
:goto_b5
return-void
:cond_b6
const-string/jumbo v8, "raw"
goto :goto_6a
:cond_ba
const-string/jumbo v8, ""
goto :goto_93
:cond_be
sget-object v8, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-eq v3, v8, :cond_e2
const-string/jumbo v8, "Content-Disposition"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "attachment;filename="
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v10
if-nez v10, :cond_f9
:goto_d7
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {p2, v8, v9}, Lcom/lenovo/httpserver/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_e2
sget-object v8, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne v3, v8, :cond_fe
const-string/jumbo v4, "image/png"
:goto_e9
invoke-static {p2, v4, v1}, Lcom/lenovo/anyshare/sdk/internal/x;->sendFile(Lcom/lenovo/httpserver/HttpResponse;Ljava/lang/String;Ljava/io/File;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v8
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/x;->mContext:Landroid/content/Context;
const-string/jumbo v10, "ShareByZero"
invoke-virtual {v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_b5
:cond_f9
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
goto :goto_d7
:cond_fe
const-string/jumbo v4, "application/vnd.android.package-archive"
goto :goto_e9
.end method