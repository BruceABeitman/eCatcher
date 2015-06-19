.class public final Lcom/instagram/android/c/a/u;
.super Lcom/instagram/api/j/g;
.source "UpdateMediaRequest.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/util/List;
.field private final e:Ljava/util/List;
.field private f:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/instagram/api/j/a;)V
.registers 8
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p6}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/android/c/a/u;->a:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/android/c/a/u;->b:Ljava/util/List;
iput-object p5, p0, Lcom/instagram/android/c/a/u;->e:Ljava/util/List;
return-void
.end method
.method private o()Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/instagram/android/c/a/u;->f:Ljava/lang/String;
if-nez v0, :cond_7e
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;)V
new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Lcom/fasterxml/jackson/a/w;)V
const-class v2, Lcom/instagram/model/people/PeopleTag;
new-instance v3, Lcom/instagram/model/people/a/a;
invoke-direct {v3}, Lcom/instagram/model/people/a/a;-><init>()V
invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
new-instance v1, Ljava/io/StringWriter;
invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v3, "in"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
iget-object v3, p0, Lcom/instagram/android/c/a/u;->e:Ljava/util/List;
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/c/a/u;->b:Ljava/util/List;
if-eqz v0, :cond_72
new-instance v0, Ljava/util/ArrayList;
iget-object v3, p0, Lcom/instagram/android/c/a/u;->b:Ljava/util/List;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-object v3, p0, Lcom/instagram/android/c/a/u;->e:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_72
const-string v3, "removed"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_5b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/people/PeopleTag;
invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
goto :goto_5b
:cond_6f
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
:cond_72
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->close()V
invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/c/a/u;->f:Ljava/lang/String;
:cond_7e
iget-object v0, p0, Lcom/instagram/android/c/a/u;->f:Ljava/lang/String;
return-object v0
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
:try_start_0
const-string v0, "usertags"
invoke-direct {p0}, Lcom/instagram/android/c/a/u;->o()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_9
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
goto :goto_9
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 8
const-string v0, "media"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p2}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {p3, v1}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v2
iget-object v0, p0, Lcom/instagram/android/c/a/u;->b:Ljava/util/List;
if-nez v0, :cond_4f
new-instance v0, Lcom/instagram/model/people/b;
invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V
:goto_23
invoke-virtual {v0, v2}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z
move-result v0
if-nez v0, :cond_4d
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->V()Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->U()Lcom/instagram/model/people/b;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->X()Z
move-result v0
if-eqz v0, :cond_4d
new-instance v0, Lcom/instagram/common/c/j;
invoke-virtual {p0}, Lcom/instagram/android/c/a/u;->l()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"
invoke-virtual {v0, v1}, Lcom/instagram/common/c/j;->a(Ljava/lang/String;)V
:cond_4d
const/4 v0, 0x1
:goto_4e
return v0
:cond_4f
new-instance v0, Lcom/instagram/model/people/b;
iget-object v3, p0, Lcom/instagram/android/c/a/u;->b:Ljava/util/List;
invoke-direct {v0, v3}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V
goto :goto_23
:cond_57
const/4 v0, 0x0
goto :goto_4e
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "usertags/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/android/c/a/u;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/update/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method