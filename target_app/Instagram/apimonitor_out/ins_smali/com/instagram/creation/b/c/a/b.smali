.class public final Lcom/instagram/creation/b/c/a/b;
.super Lcom/instagram/api/k/a/b;
.source "ConfigureMediaRequest.java"
.field private b:Lcom/instagram/creation/b/a/b;
.field private c:Lcom/fasterxml/jackson/databind/ObjectMapper;
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
.registers 5
invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;
const-string v1, "ConfigureModule"
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V
new-instance v1, Lcom/instagram/creation/b/b/o;
invoke-direct {v1}, Lcom/instagram/creation/b/b/o;-><init>()V
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
new-instance v1, Lcom/instagram/model/people/a/a;
invoke-direct {v1}, Lcom/instagram/model/people/a/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;
sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;)V
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/b/c/a/b;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;
return-void
.end method
.method private a(Ljava/util/List;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v2, "in"
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v2, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Lcom/instagram/api/b/a;Lcom/instagram/creation/b/a/a;I)V
.registers 10
const/4 v1, 0x0
const/4 v0, 0x1
const-string v2, "clip%d_length"
new-array v3, v0, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->i()I
move-result v3
int-to-double v3, v3
const-wide v5, 0x408f400000000000L
div-double/2addr v3, v5
invoke-virtual {p0, v2, v3, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;D)V
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->c()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_40
const-string v2, "clip%d_source"
new-array v3, v0, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->c()I
move-result v3
if-ne v3, v0, :cond_41
:goto_39
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v2, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_40
return-void
:cond_41
move v0, v1
goto :goto_39
.end method
.method private b(Lcom/instagram/api/b/a;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->F()Z
move-result v0
if-eqz v0, :cond_26
const-string v0, "extra"
invoke-virtual {p1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;)V
const-string v0, "source_width"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->G()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V
const-string v0, "source_height"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->H()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V
invoke-virtual {p1}, Lcom/instagram/api/b/a;->a()V
:cond_26
return-void
.end method
.method private static c(Lcom/instagram/api/b/a;)V
.registers 3
const-string v0, "device"
invoke-virtual {p0, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;)V
const-string v0, "manufacturer"
sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "model"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "android_version"
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V
const-string v0, "android_release"
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/api/b/a;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/b/a;)V
.registers 5
const-string v0, "caption"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "upload_id"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->I()Ljava/util/List;
move-result-object v2
const/4 v0, 0x0
move v1, v0
:goto_26
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_39
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/a;
invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/c/a/b;->a(Lcom/instagram/api/b/a;Lcom/instagram/creation/b/a/a;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_26
:cond_39
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->c()I
move-result v0
packed-switch v0, :pswitch_data_1f6
const-string v0, "4"
:goto_44
const-string v1, "source_type"
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "filter_type"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->d()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->e()Z
move-result v0
if-eqz v0, :cond_85
const-string v0, "geotag_enabled"
const-string v1, "1"
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "media_latitude"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->g()Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "media_longitude"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->h()Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_85
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->p()Z
move-result v0
if-eqz v0, :cond_cf
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/f/a;->h()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_cf
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9d
:pswitch_b9
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->f()Z
move-result v0
if-eqz v0, :cond_c7
const-string v0, "3"
goto/16 :goto_44
:cond_c7
const-string v0, "5"
goto/16 :goto_44
:pswitch_cb
const-string v0, "6"
goto/16 :goto_44
:cond_cf
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->q()Z
move-result v0
if-eqz v0, :cond_103
invoke-static {}, Lcom/instagram/share/c/a;->b()Lcom/instagram/share/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/c/a;->d()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_103
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e7
:cond_103
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->r()Z
move-result v0
if-eqz v0, :cond_12d
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-static {}, Lcom/instagram/share/b/a;->g()Lcom/instagram/share/b/g;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/b/g;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_121
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v0
:cond_121
const-string v1, "share_to_facebook"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "fb_access_token"
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_12d
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->s()Z
move-result v0
if-eqz v0, :cond_149
invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;
move-result-object v0
const-string v1, "share_to_foursquare"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "foursquare_access_token"
invoke-virtual {v0}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_149
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->t()Z
move-result v0
if-eqz v0, :cond_16e
invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;
move-result-object v0
const-string v1, "share_to_tumblr"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tumblr_access_token_key"
invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tumblr_access_token_secret"
invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_16e
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->u()Z
move-result v0
if-eqz v0, :cond_1a2
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->g()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_186
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_186
:cond_1a2
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->i()Lcom/instagram/venue/model/Venue;
move-result-object v0
if-eqz v0, :cond_1c0
:try_start_1aa
const-string v1, "location"
iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1b5
:try_end_1b5
.catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1b5} :catch_1f3
const-string v0, "foursquare_request_id"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1c0
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->E()Z
move-result v0
if-eqz v0, :cond_1d7
:try_start_1c8
const-string v0, "usertags"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;
move-result-object v1
invoke-direct {p0, v1}, Lcom/instagram/creation/b/c/a/b;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1d7
.catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1d7} :catch_1f1
:goto_1d7
:cond_1d7
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z
move-result v0
if-eqz v0, :cond_1ea
const-string v0, "video_result"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->B()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1ea
invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a/b;->b(Lcom/instagram/api/b/a;)V
invoke-static {p1}, Lcom/instagram/creation/b/c/a/b;->c(Lcom/instagram/api/b/a;)V
return-void
:catch_1f1
move-exception v0
goto :goto_1d7
:catch_1f3
move-exception v0
goto :goto_1b5
nop
:pswitch_data_1f6
.packed-switch 0x1
:pswitch_b9
:pswitch_cb
.end packed-switch
.end method
.method public final d_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z
move-result v0
if-eqz v0, :cond_b
const-string v0, "media/configure/?video=1"
:goto_a
return-object v0
:cond_b
const-string v0, "media/configure/"
goto :goto_a
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method