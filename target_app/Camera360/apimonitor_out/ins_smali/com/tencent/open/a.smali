.class public Lcom/tencent/open/a;
.super Ljava/lang/Object;
.source "ProGuard"
.field  a:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/tencent/open/a;->a:Ljava/util/HashMap;
return-void
.end method
.method public a(Lcom/tencent/open/a$a;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/tencent/open/a;->a:Ljava/util/HashMap;
invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$b;)V
.registers 9
const-string/jumbo v0, "TDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "getResult---objName = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " methodName = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v2
move v1, v0
:goto_2b
if-ge v1, v2, :cond_46
:try_start_2d
invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v3, "UTF-8"
invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:try_end_3d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_3d} :catch_41
:goto_3d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2b
:catch_41
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_3d
:cond_46
iget-object v0, p0, Lcom/tencent/open/a;->a:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a$a;
if-eqz v0, :cond_5d
const-string/jumbo v1, "TDialog"
const-string/jumbo v2, "call----"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/open/a$a;->call(Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$b;)V
:goto_5c
:cond_5c
return-void
:cond_5d
const-string/jumbo v0, "TDialog"
const-string/jumbo v1, "not call----objName NOT FIND"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p4, :cond_5c
invoke-virtual {p4}, Lcom/tencent/open/a$b;->a()V
goto :goto_5c
.end method
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 10
const/4 v0, 0x0
const-string/jumbo v1, "Dialog"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "canHandleUrl---url = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez p2, :cond_1e
:goto_1d
:cond_1d
return v0
:cond_1e
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "jsbridge"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/#"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v3, 0x6
if-lt v1, v3, :cond_1d
const/4 v0, 0x2
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x3
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-wide/16 v3, 0x4
const/4 v5, 0x4
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/lit8 v6, v6, -0x1
invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
move-result-object v2
new-instance v5, Lcom/tencent/open/a$b;
invoke-direct {v5, p1, v3, v4, p2}, Lcom/tencent/open/a$b;-><init>(Landroid/webkit/WebView;JLjava/lang/String;)V
invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
invoke-virtual {p0, v0, v1, v2, v5}, Lcom/tencent/open/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$b;)V
const/4 v0, 0x1
goto :goto_1d
.end method