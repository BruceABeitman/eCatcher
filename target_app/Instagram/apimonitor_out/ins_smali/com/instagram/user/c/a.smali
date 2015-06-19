.class public Lcom/instagram/user/c/a;
.super Ljava/lang/Object;
.source "User.java"
.field private static final y:Landroid/os/Handler;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Z
.field  f:Z
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/Integer;
.field  j:Ljava/lang/Integer;
.field  k:Ljava/lang/Integer;
.field  l:Lcom/instagram/user/c/e;
.field  m:Ljava/lang/Integer;
.field  n:Ljava/lang/Integer;
.field  o:Z
.field  p:Ljava/lang/String;
.field  q:Ljava/util/List;
.field  r:Lcom/instagram/user/c/d;
.field  s:Lcom/instagram/user/c/c;
.field  t:Lcom/instagram/user/c/c;
.field  u:Z
.field  v:Z
.field  w:Ljava/lang/Boolean;
.field  x:Ljava/lang/Boolean;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/instagram/user/c/b;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/user/c/b;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/instagram/user/c/a;->y:Landroid/os/Handler;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/instagram/user/c/e;->a:Lcom/instagram/user/c/e;
iput-object v0, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;
sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
iput-object v0, p0, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
iput-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/c;
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
.registers 2
invoke-static {p0}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
.registers 6
if-nez p1, :cond_7
new-instance p1, Lcom/instagram/user/c/a;
invoke-direct {p1}, Lcom/instagram/user/c/a;-><init>()V
:cond_7
const-string v0, "username"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V
const-string v0, "full_name"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V
const-string v0, "profile_pic_url"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V
invoke-static {p0}, Lcom/instagram/n/e/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V
const-string v0, "is_staff"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_4e
const-string v0, "is_staff"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Z)V
:cond_4e
const-string v0, "usertag_review_enabled"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_63
const-string v0, "usertag_review_enabled"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Z)V
:cond_63
const-string v0, "biography"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_88
const-string v0, "biography"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z
move-result v0
if-nez v0, :cond_88
const-string v0, "biography"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V
:cond_88
const-string v0, "external_url"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_a9
const-string v0, "external_url"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z
move-result v0
if-nez v0, :cond_a9
const-string v0, "external_url"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->g(Ljava/lang/String;)V
:cond_a9
const-string v0, "follower_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_c2
const-string v0, "follower_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/Integer;)V
:cond_c2
const-string v0, "following_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_db
const-string v0, "following_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/Integer;)V
:cond_db
const-string v0, "media_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_f4
const-string v0, "media_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->c(Ljava/lang/Integer;)V
:cond_f4
const-string v0, "is_private"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_10d
const-string v0, "is_private"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
if-eqz v0, :cond_1a3
sget-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
:goto_10a
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
:cond_10d
const-string v0, "geo_media_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_126
const-string v0, "geo_media_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->d(Ljava/lang/Integer;)V
:cond_126
const-string v0, "usertags_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_13f
const-string v0, "usertags_count"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Ljava/lang/Integer;)V
:cond_13f
const-string v0, "is_verified"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_154
const-string v0, "is_verified"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Z)V
:cond_154
const-string v0, "extra_display_name"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_169
const-string v0, "extra_display_name"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-direct {p1, v0}, Lcom/instagram/user/c/a;->i(Ljava/lang/String;)V
:cond_169
const-string v0, "chaining_suggestions"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_1aa
const-string v0, "chaining_suggestions"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z
move-result v0
if-eqz v0, :cond_1aa
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const-string v0, "chaining_suggestions"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_18e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a7
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
const/4 v3, 0x0
invoke-static {v0, v3}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_18e
:cond_1a3
sget-object v0, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
goto/16 :goto_10a
:cond_1a7
invoke-direct {p1, v1}, Lcom/instagram/user/c/a;->a(Ljava/util/List;)V
:cond_1aa
return-object p1
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "com.instagram.broadcasts.updated_friend_status|"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->q:Ljava/util/List;
return-void
.end method
.method public static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
.registers 3
new-instance v0, Lcom/instagram/user/c/a;
invoke-direct {v0}, Lcom/instagram/user/c/a;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {v0}, Lcom/instagram/user/c/a;->c(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
.end method
.method private b(Ljava/lang/Boolean;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->x:Ljava/lang/Boolean;
return-void
.end method
.method private static c(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
.registers 3
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v1
if-nez v1, :cond_16
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
:goto_15
return-object p0
:cond_16
invoke-interface {v0, p0}, Lcom/instagram/user/c/h;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
move-result-object p0
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/user/c/a;->k(Ljava/lang/String;)V
goto :goto_15
.end method
.method static synthetic h(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/instagram/user/c/a;->j(Ljava/lang/String;)V
return-void
.end method
.method private i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/String;
return-void
.end method
.method private static j(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
new-instance v1, Lcom/instagram/user/c/f;
invoke-direct {v1, p0}, Lcom/instagram/user/c/f;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/h/b;->b(Lcom/instagram/common/h/a;)V
return-void
.end method
.method private static k(Ljava/lang/String;)V
.registers 5
sget-object v0, Lcom/instagram/user/c/a;->y:Landroid/os/Handler;
invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
move-result v1
invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/a;->y:Landroid/os/Handler;
invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
move-result v2
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
sget-object v1, Lcom/instagram/user/c/a;->y:Landroid/os/Handler;
const-wide/16 v2, 0x3e8
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
return-void
.end method
.method public final A()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->o:Z
return v0
.end method
.method public final B()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/String;
return-object v0
.end method
.method public final C()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->q:Ljava/util/List;
return-object v0
.end method
.method public final D()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/user/c/a;->j(Ljava/lang/String;)V
return-void
.end method
.method public final E()V
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->u:Z
if-nez v0, :cond_b
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lcom/instagram/user/c/a;->u:Z
invoke-virtual {p0}, Lcom/instagram/user/c/a;->D()V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_5
.end method
.method protected final a()Lcom/instagram/user/c/a;
.registers 3
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->c:Ljava/lang/Boolean;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->c:Ljava/lang/Boolean;
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V
:cond_11
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->e:Ljava/lang/Boolean;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_5c
sget-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
:goto_23
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
:cond_26
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->d:Ljava/lang/Boolean;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-object v0, v0, Lcom/instagram/user/c/d;->d:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->c(Z)V
:cond_37
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-boolean v0, v0, Lcom/instagram/user/c/d;->a:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/Boolean;)V
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-boolean v0, v0, Lcom/instagram/user/c/d;->a:Z
if-eqz v0, :cond_5f
sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
:goto_4a
invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V
:cond_54
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
invoke-static {p0}, Lcom/instagram/user/c/a;->c(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
:cond_5c
sget-object v0, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
goto :goto_23
:cond_5f
iget-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;
iget-boolean v0, v0, Lcom/instagram/user/c/d;->b:Z
if-eqz v0, :cond_68
sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
goto :goto_4a
:cond_68
sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
goto :goto_4a
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
:cond_c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;
:cond_18
invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
:cond_24
invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_30
invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;
:cond_30
invoke-virtual {p1}, Lcom/instagram/user/c/a;->h()Z
move-result v0
iget-boolean v1, p0, Lcom/instagram/user/c/a;->e:Z
if-eq v0, v1, :cond_3e
invoke-virtual {p1}, Lcom/instagram/user/c/a;->h()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/user/c/a;->e:Z
:cond_3e
invoke-virtual {p1}, Lcom/instagram/user/c/a;->i()Z
move-result v0
iget-boolean v1, p0, Lcom/instagram/user/c/a;->f:Z
if-eq v0, v1, :cond_4c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->i()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/user/c/a;->f:Z
:cond_4c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_58
invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->g:Ljava/lang/String;
:cond_58
invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_64
invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->h:Ljava/lang/String;
:cond_64
invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_70
invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
:cond_70
invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_7c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/Integer;
:cond_7c
invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_88
invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
:cond_88
invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;
if-eq v0, v1, :cond_96
invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;
:cond_96
invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_a2
invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;
:cond_a2
invoke-virtual {p1}, Lcom/instagram/user/c/a;->z()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_ae
invoke-virtual {p1}, Lcom/instagram/user/c/a;->z()Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->n:Ljava/lang/Integer;
:cond_ae
invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_ba
invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/String;
:cond_ba
invoke-virtual {p1}, Lcom/instagram/user/c/a;->C()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_c6
invoke-virtual {p1}, Lcom/instagram/user/c/a;->C()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->q:Ljava/util/List;
:cond_c6
iget-object v0, p1, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
sget-object v1, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
if-eq v0, v1, :cond_d4
iget-object v0, p1, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
iput-object v0, p0, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
iget-object v0, p1, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/c;
iput-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/c;
:cond_d4
iget-object v0, p1, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
if-eqz v0, :cond_dc
iget-object v0, p1, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
iput-object v0, p0, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
:cond_dc
return-void
.end method
.method public final a(Lcom/instagram/user/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
return-void
.end method
.method public final a(Lcom/instagram/user/c/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;
return-void
.end method
.method public final a(Ljava/lang/Boolean;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
return-void
.end method
.method public final a(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/user/c/a;->e:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b(Lcom/instagram/user/c/a;)V
.registers 5
new-instance v0, Landroid/content/Intent;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "id"
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
return-void
.end method
.method public final b(Lcom/instagram/user/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/c;
return-void
.end method
.method public final b(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/Integer;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;
return-void
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/user/c/a;->f:Z
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
return-void
.end method
.method public final c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/user/c/a;->u:Z
return-void
.end method
.method public final d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;
:goto_10
return-object v0
:cond_11
invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method public final d(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;
return-void
.end method
.method public final d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/user/c/a;->v:Z
return-void
.end method
.method public final e(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->n:Ljava/lang/Integer;
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
return-void
.end method
.method public final e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/user/c/a;->o:Z
return-void
.end method
.method public final e()Z
.registers 3
const-string v0, "http://images.ak.instagram.com/profiles/anonymousUser.jpg"
invoke-virtual {p0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/instagram/user/c/a;
iget-object v2, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_23
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->g:Ljava/lang/String;
return-void
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
return-object v0
.end method
.method public final g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/c/a;->h:Ljava/lang/String;
return-void
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->e:Z
return v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->f:Z
return v0
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->g:Ljava/lang/String;
return-object v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->h:Ljava/lang/String;
return-object v0
.end method
.method public final l()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
return-object v0
.end method
.method public final m()V
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
if-nez v0, :cond_b
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
:cond_b
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
return-void
.end method
.method public final n()V
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;
goto :goto_4
.end method
.method public final o()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/Integer;
return-object v0
.end method
.method public final p()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
return-object v0
.end method
.method public final q()V
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
if-nez v0, :cond_b
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
:cond_b
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
return-void
.end method
.method public final r()V
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;
goto :goto_4
.end method
.method public final s()Lcom/instagram/user/c/e;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;
return-object v0
.end method
.method public final t()Lcom/instagram/user/c/c;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->s:Lcom/instagram/user/c/c;
return-object v0
.end method
.method public final u()Lcom/instagram/user/c/c;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/c;
return-object v0
.end method
.method public final v()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->u:Z
return v0
.end method
.method public final w()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/user/c/a;->v:Z
return v0
.end method
.method public final x()Z
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/user/c/a;->w:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final y()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;
return-object v0
.end method
.method public final z()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/user/c/a;->n:Ljava/lang/Integer;
return-object v0
.end method