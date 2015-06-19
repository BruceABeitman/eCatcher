.class public Lcom/lenovo/anyshare/sdk/internal/z;
.super Lcom/lenovo/httpserver/HttpServlet;
.source "HomeServlet.java"
.field private a:Ljava/util/Comparator;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const-string/jumbo v0, ""
invoke-direct {p0, p1, v0}, Lcom/lenovo/httpserver/HttpServlet;-><init>(Landroid/content/Context;Ljava/lang/String;)V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/z$1;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/z$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/z;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/z;->a:Ljava/util/Comparator;
return-void
.end method
.method private a()Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v2
const-string/jumbo v3, "Home.html"
invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
const/4 v2, 0x1
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;Z)Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "__PACKAGENAME__"
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method private a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
.registers 10
invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getOnlyPath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "HomeServlet"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "reqPath = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
if-nez v1, :cond_37
const/16 v4, 0x194
const-string/jumbo v5, "file not found"
invoke-virtual {p2, v4, v5}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
:goto_36
return-void
:cond_37
invoke-virtual {p2}, Lcom/lenovo/httpserver/HttpResponse;->getOutputStream()Ljava/io/OutputStream;
move-result-object v2
:try_start_3b
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_4e
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_53
const-string/jumbo v4, "application/octet-stream"
invoke-virtual {p2, v4}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V
goto :goto_36
:catchall_4e
move-exception v4
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V
throw v4
:cond_53
invoke-virtual {p2, v0}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V
goto :goto_36
.end method
.method private b()Ljava/lang/String;
.registers 19
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v13
const-string/jumbo v14, "Apps.html"
invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v7
invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
const/4 v13, 0x1
invoke-static {v7, v13}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;Z)Ljava/lang/String;
move-result-object v5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v3, 0x0
:try_start_1d
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v13
invoke-virtual {v13}, Lcom/lenovo/anyshare/sdk/internal/bi;->d()Lcom/lenovo/content/base/ContentSource;
move-result-object v4
sget-object v13, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v14, "system/items"
invoke-virtual {v4, v13, v14}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
:try_end_2d
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_1d .. :try_end_2d} :catch_e8
move-result-object v3
:goto_2e
if-eqz v3, :cond_cd
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v9
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/anyshare/sdk/internal/z;->a:Ljava/util/Comparator;
invoke-static {v9, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_3f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_cd
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/lenovo/content/base/ContentItem;
move-object v1, v8
check-cast v1, Lcom/lenovo/content/item/AppItem;
invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem;->getName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem;->getVersionName()Ljava/lang/String;
move-result-object v12
const-string/jumbo v13, "<tr>\n"
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "<td valign=\'middle\' width=\'36\'><img src=\'/apps/%s.png\' alt=\'%s\' width=\'36\' height=\'36\'></td>"
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
aput-object v11, v14, v15
const/4 v15, 0x1
aput-object v10, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "<td class=\'content\'><h3>%s</h3><div class=\'version\'>v%s</div><div class=\'size\'>%s</div></td>"
const/4 v14, 0x3
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
aput-object v10, v14, v15
const/4 v15, 0x1
aput-object v12, v14, v15
const/4 v15, 0x2
invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem;->getSize()J
move-result-wide v16
invoke-static/range {v16 .. v17}, Lcom/lenovo/anyshare/sdk/internal/av;->a(J)Ljava/lang/String;
move-result-object v16
aput-object v16, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "<td align=\'right\' valign=\'middle\'>\n"
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "<a href=\'/apps/%s.apk?filename=%s\'><img src=\'app_download.png\' alt=\'download\'></a>"
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
aput-object v11, v14, v15
const/4 v15, 0x1
aput-object v10, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "</td>\n"
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v13, "</tr>\n"
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_3f
:cond_cd
const-string/jumbo v13, "__REPLACE__"
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "__PACKAGENAME__"
move-object/from16 v0, p0
iget-object v15, v0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v15
invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v13
return-object v13
:catch_e8
move-exception v13
goto/16 :goto_2e
.end method
.method protected doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
.registers 9
invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getOnlyPath()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "HomeServlet"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "reqPath = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_65
const-string/jumbo v3, "text/html; charset=UTF-8"
invoke-virtual {p2, v3}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V
const-string/jumbo v3, "Cache-control"
const-string/jumbo v4, "no-cache"
invoke-virtual {p2, v3, v4}, Lcom/lenovo/httpserver/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/bc;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-direct {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V
const-string/jumbo v4, "allow_download_all_apps"
const-string/jumbo v5, "false"
invoke-virtual {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_59
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/z;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/lenovo/httpserver/HttpResponse;->getBufferedWriter()Ljava/io/BufferedWriter;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
:goto_58
return-void
:cond_59
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/z;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/lenovo/httpserver/HttpResponse;->getBufferedWriter()Ljava/io/BufferedWriter;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
goto :goto_58
:cond_65
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/z;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
goto :goto_58
.end method