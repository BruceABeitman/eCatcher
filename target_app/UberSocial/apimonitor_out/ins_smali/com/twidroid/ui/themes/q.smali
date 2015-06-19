.class public abstract Lcom/twidroid/ui/themes/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:Ljava/lang/String; = "http://twidroyd.com/config/"
.field private final a:Ljava/lang/String;
.field  e:Landroid/net/Uri;
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:Landroid/content/Context;
.field  i:Ljava/lang/String;
.field  j:Ljava/util/HashMap;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "ThemeAPI"
iput-object v0, p0, Lcom/twidroid/ui/themes/q;->a:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v0, "http"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
const-string v0, "file://"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_27
:cond_1e
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;
:goto_24
iput-object p1, p0, Lcom/twidroid/ui/themes/q;->h:Landroid/content/Context;
return-void
:cond_27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://twidroyd.com/config/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;
goto :goto_24
.end method
.method public a()V
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-string v0, "ThemeAPI"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Uri before download: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/twidroid/ui/themes/q$1;
iget-object v2, p0, Lcom/twidroid/ui/themes/q;->h:Landroid/content/Context;
iget-object v1, p0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v5, 0x0
const-string v6, "User-Agent"
aput-object v6, v1, v5
const/4 v5, 0x1
const-string v6, "twidroyd"
aput-object v6, v1, v5
const/4 v5, 0x2
const-string v6, "Accept"
aput-object v6, v1, v5
const/4 v5, 0x3
const-string v6, "application/json"
aput-object v6, v1, v5
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v5
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/twidroid/ui/themes/q$1;-><init>(Lcom/twidroid/ui/themes/q;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
invoke-virtual {v0}, Lcom/twidroid/ui/themes/q$1;->start()V
return-void
.end method
.method public a(Lcom/twidroid/UberSocialApplication;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v0
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->bx()V
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1e
:cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_67
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "is_premium"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1e
iget-object v1, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v1
const-string v4, "true"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4e
const-string v4, "false"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_63
:cond_4e
const-string v4, "true"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
:goto_57
const-string v4, "null"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_1e
:cond_63
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_57
:cond_67
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v1, "main_background"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_76
const-string v0, "main_background"
invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_76
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v1, "remote_icon"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_85
const-string v0, "remote_icon"
invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_start_85
:cond_85
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v1, "tweet_link_color"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_cb
const-string v1, "tweet_link_color"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "#"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v4, "global_color"
invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v4
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v5, "background_color"
invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
invoke-static {v4, v0}, Lcom/twidroid/ui/themes/r;->a(II)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_cb
:goto_cb
:try_end_cb
.catch Ljava/lang/Exception; {:try_start_85 .. :try_end_cb} :catch_15d
:try_start_cb
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v1, "tweet_username_color"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_111
const-string v1, "tweet_username_color"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "#"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v4, "global_color"
invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v4
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v5, "background_color"
invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
invoke-static {v4, v0}, Lcom/twidroid/ui/themes/r;->a(II)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_start_111
:goto_111
:try_end_111
.catch Ljava/lang/Exception; {:try_start_cb .. :try_end_111} :catch_15b
:cond_111
iget-object v0, p0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;
const-string v1, "tweet_small_text_color"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13a
const-string v0, "tweet_small_text_color"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "#"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const v3, -0xbbbbbc
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_end_13a
.catch Ljava/lang/Exception; {:try_start_111 .. :try_end_13a} :catch_159
:cond_13a
:goto_13a
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->bA()V
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->bw()V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/ui/themes/q$2;
invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/themes/q$2;-><init>(Lcom/twidroid/ui/themes/q;Lcom/twidroid/UberSocialApplication;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
:catch_159
move-exception v0
goto :goto_13a
:catch_15b
move-exception v0
goto :goto_111
:catch_15d
move-exception v0
goto/16 :goto_cb
.end method
.method public abstract a(Lcom/twidroid/ui/themes/q;Ljava/lang/Exception;)V
.end method
.method public abstract a(Lcom/twidroid/ui/themes/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method