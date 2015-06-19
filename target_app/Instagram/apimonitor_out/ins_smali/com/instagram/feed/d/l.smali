.class public final Lcom/instagram/feed/d/l;
.super Ljava/lang/Object;
.source "Media.java"
.implements Lcom/instagram/feed/d/z;
.field private static d:I
.field private A:I
.field private B:Lcom/instagram/venue/model/Venue;
.field private C:Ljava/lang/Double;
.field private D:Ljava/lang/Double;
.field private E:Lcom/instagram/model/people/b;
.field private F:Z
.field private G:Z
.field private H:Ljava/lang/String;
.field private I:Z
.field private J:Z
.field private K:Ljava/lang/String;
.field private L:Ljava/util/List;
.field private M:Ljava/lang/String;
.field private N:Z
.field private O:Z
.field private P:Ljava/lang/String;
.field private Q:Ljava/lang/String;
.field private R:Lcom/instagram/model/b/a;
.field private S:Ljava/util/List;
.field private T:J
.field private U:J
.field private V:J
.field private W:Ljava/lang/String;
.field private X:Ljava/lang/String;
.field private Y:Ljava/lang/String;
.field  a:I
.field  b:Ljava/util/Set;
.field  c:I
.field private e:Ljava/lang/String;
.field private f:Lcom/instagram/user/c/a;
.field private g:Lcom/instagram/model/a/a;
.field private h:J
.field private i:Ljava/lang/CharSequence;
.field private j:I
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Landroid/net/Uri;
.field private q:Ljava/lang/String;
.field private r:Ljava/lang/Integer;
.field private s:Lcom/instagram/feed/d/e;
.field private t:Lcom/instagram/feed/d/b;
.field private u:Lcom/instagram/feed/d/e;
.field private v:Lcom/instagram/feed/d/e;
.field private w:Lcom/instagram/feed/d/e;
.field private x:Z
.field private y:Z
.field private z:J
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/feed/d/e;
invoke-direct {v0}, Lcom/instagram/feed/d/e;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/l;->w:Lcom/instagram/feed/d/e;
const-wide/16 v0, -0x2
iput-wide v0, p0, Lcom/instagram/feed/d/l;->z:J
const/4 v0, 0x2
iput v0, p0, Lcom/instagram/feed/d/l;->A:I
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;
.registers 9
const/4 v3, 0x0
const/4 v1, 0x0
move-object v0, v1
:cond_3
:goto_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v4, :cond_384
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1c
if-nez v0, :cond_1c
new-instance v0, Lcom/instagram/feed/d/l;
invoke-direct {v0}, Lcom/instagram/feed/d/l;-><init>()V
iput-object v1, v0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
iput-object v1, v0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
:cond_1c
const-string v4, "id"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
goto :goto_3
:cond_2e
const-string v4, "taken_at"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p0, v0}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Lcom/instagram/feed/d/l;)V
goto :goto_3
:cond_3d
const-string v4, "user"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_4f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->f:Lcom/instagram/user/c/a;
goto :goto_3
:cond_4f
const-string v4, "image_versions"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_a0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move v2, v3
move-object v4, v1
:goto_5c
:cond_5c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v5
sget-object v6, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v5, v6, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v5
const-string v6, "url"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_81
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v4
:goto_77
:cond_77
if-eqz v4, :cond_5c
if-eqz v2, :cond_5c
packed-switch v2, :pswitch_data_3a2
:goto_7e
move v2, v3
move-object v4, v1
goto :goto_5c
:cond_81
const-string v6, "type"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_91
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v2
goto :goto_77
:cond_91
if-eqz v5, :cond_77
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_77
:pswitch_97
iput-object v4, v0, Lcom/instagram/feed/d/l;->m:Ljava/lang/String;
goto :goto_7e
:pswitch_9a
iput-object v4, v0, Lcom/instagram/feed/d/l;->l:Ljava/lang/String;
goto :goto_7e
:pswitch_9d
iput-object v4, v0, Lcom/instagram/feed/d/l;->k:Ljava/lang/String;
goto :goto_7e
:cond_a0
const-string v4, "has_liked"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_b7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
invoke-static {v2}, Lcom/instagram/feed/d/o;->a(Z)I
move-result v2
iput v2, v0, Lcom/instagram/feed/d/l;->c:I
goto/16 :goto_3
:cond_b7
const-string v4, "like_count"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_ca
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v2
iput v2, v0, Lcom/instagram/feed/d/l;->a:I
goto/16 :goto_3
:cond_ca
const-string v4, "likers"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_fe
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v2, v4, :cond_de
iput-object v1, v0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
goto/16 :goto_3
:cond_de
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_e3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v4
sget-object v5, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v4, v5, :cond_f5
invoke-static {p0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v4
if-eqz v4, :cond_f5
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_e3
:cond_f5
new-instance v4, Ljava/util/HashSet;
invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iput-object v4, v0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
goto/16 :goto_3
:cond_fe
invoke-static {v2}, Lcom/instagram/feed/d/l;->d(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_109
invoke-virtual {v0, p0}, Lcom/instagram/feed/d/l;->b(Lcom/fasterxml/jackson/a/l;)V
goto/16 :goto_3
:cond_109
const-string v4, "location"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_11c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p0}, Lcom/instagram/venue/model/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/venue/model/Venue;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
goto/16 :goto_3
:cond_11c
const-string v4, "lat"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_133
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->C:Ljava/lang/Double;
goto/16 :goto_3
:cond_133
const-string v4, "lng"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_14a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->D:Ljava/lang/Double;
goto/16 :goto_3
:cond_14a
const-string v4, "usertags"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_194
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:goto_155
:cond_155
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v4, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
const-string v4, "in"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_18e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v2, v4, :cond_174
iput-object v1, v0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
goto :goto_155
:cond_174
new-instance v2, Lcom/instagram/model/people/b;
invoke-direct {v2}, Lcom/instagram/model/people/b;-><init>()V
:goto_179
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v4
sget-object v5, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v4, v5, :cond_18b
invoke-static {p0}, Lcom/instagram/model/people/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
move-result-object v4
if-eqz v4, :cond_18b
invoke-virtual {v2, v4}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/PeopleTag;)Z
goto :goto_179
:cond_18b
iput-object v2, v0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
goto :goto_155
:cond_18e
if-eqz v2, :cond_155
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_155
:cond_194
const-string v4, "photo_of_you"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1a7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->F:Z
goto/16 :goto_3
:cond_1a7
const-string v4, "media_type"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1be
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v2
invoke-static {v2}, Lcom/instagram/model/a/a;->a(I)Lcom/instagram/model/a/a;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
goto/16 :goto_3
:cond_1be
const-string v4, "video_versions"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_20c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move v2, v3
move-object v4, v1
:goto_1cb
:cond_1cb
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v5
sget-object v6, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v5, v6, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v5
const-string v6, "url"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_1f0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v4
:cond_1e6
:goto_1e6
if-eqz v4, :cond_1cb
if-eqz v2, :cond_1cb
packed-switch v2, :pswitch_data_3ac
:goto_1ed
move v2, v3
move-object v4, v1
goto :goto_1cb
:cond_1f0
const-string v6, "type"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_200
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v2
goto :goto_1e6
:cond_200
if-eqz v5, :cond_1e6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_1e6
:pswitch_206
iput-object v4, v0, Lcom/instagram/feed/d/l;->o:Ljava/lang/String;
goto :goto_1ed
:pswitch_209
iput-object v4, v0, Lcom/instagram/feed/d/l;->n:Ljava/lang/String;
goto :goto_1ed
:cond_20c
const-string v4, "collapse_comments"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_21f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->J:Z
goto/16 :goto_3
:cond_21f
const-string v4, "injected"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2f8
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->G:Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:goto_22d
:cond_22d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v4, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
const-string v4, "label"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_24b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;
goto :goto_22d
:cond_24b
const-string v4, "show_icon"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_25d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->I:Z
goto :goto_22d
:cond_25d
const-string v4, "hide_label"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_26f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->K:Ljava/lang/String;
goto :goto_22d
:cond_26f
const-string v4, "hide_reasons"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2a5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, v0, Lcom/instagram/feed/d/l;->L:Ljava/util/List;
:cond_281
:goto_281
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v2, v4, :cond_22d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_281
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v4, Lcom/instagram/feed/d/p;
invoke-direct {v4}, Lcom/instagram/feed/d/p;-><init>()V
iput-object v2, v4, Lcom/instagram/feed/d/p;->a:Ljava/lang/String;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v4, Lcom/instagram/feed/d/p;->b:Ljava/lang/String;
iget-object v2, v0, Lcom/instagram/feed/d/l;->L:Ljava/util/List;
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_281
:cond_2a5
const-string v4, "invalidation"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2b8
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->M:Ljava/lang/String;
goto/16 :goto_22d
:cond_2b8
const-string v4, "is_demo"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2cb
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->N:Z
goto/16 :goto_22d
:cond_2cb
const-string v4, "is_holdout"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2de
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
iput-boolean v2, v0, Lcom/instagram/feed/d/l;->O:Z
goto/16 :goto_22d
:cond_2de
const-string v4, "tracking_token"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2f1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->P:Ljava/lang/String;
goto/16 :goto_22d
:cond_2f1
if-eqz v2, :cond_22d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto/16 :goto_22d
:cond_2f8
const-string v4, "organic_tracking_token"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_30b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->Q:Ljava/lang/String;
goto/16 :goto_3
:cond_30b
const-string v4, "recipients"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_31e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p0}, Lcom/instagram/model/b/a;->a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
goto/16 :goto_3
:cond_31e
const-string v4, "last_seen_at"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_337
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v4
iput-wide v4, v0, Lcom/instagram/feed/d/l;->T:J
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v4
iput-wide v4, v0, Lcom/instagram/feed/d/l;->U:J
goto/16 :goto_3
:cond_337
const-string v4, "last_comment_at"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_34a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v4
iput-wide v4, v0, Lcom/instagram/feed/d/l;->V:J
goto/16 :goto_3
:cond_34a
const-string v4, "algorithm"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_35d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->W:Ljava/lang/String;
goto/16 :goto_3
:cond_35d
const-string v4, "explore_context"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_36d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->X:Ljava/lang/String;
goto/16 :goto_3
:cond_36d
const-string v4, "impression_token"
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_37d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/instagram/feed/d/l;->Y:Ljava/lang/String;
goto/16 :goto_3
:cond_37d
if-eqz v2, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto/16 :goto_3
:cond_384
iget-object v1, v0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
if-nez v1, :cond_38c
sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
iput-object v1, v0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
:cond_38c
invoke-static {v0}, Lcom/instagram/feed/d/l;->b(Lcom/instagram/feed/d/l;)V
if-eqz p1, :cond_3a1
if-eqz v0, :cond_3a1
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3a1
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/feed/d/y;->b(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
move-result-object v0
:cond_3a1
return-object v0
:pswitch_data_3ac
.packed-switch 0x65
:pswitch_209
:pswitch_206
.end packed-switch
:pswitch_data_3a2
.packed-switch 0x5
:pswitch_9d
:pswitch_9a
:pswitch_97
.end packed-switch
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Media.ADDED_COMMENTS|"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Lcom/fasterxml/jackson/a/l;Lcom/instagram/feed/d/l;)V
.registers 6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_13
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p1, Lcom/instagram/feed/d/l;->h:J
:goto_12
return-void
:cond_13
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v0
const-wide/32 v2, 0xf4240
mul-long/2addr v0, v2
iput-wide v0, p1, Lcom/instagram/feed/d/l;->h:J
goto :goto_12
.end method
.method private static a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V
.registers 2
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
goto :goto_2
.end method
.method private static a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0, p1}, Lcom/instagram/feed/d/e;->a(Ljava/lang/String;)Z
move-result v0
goto :goto_3
.end method
.method private ap()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->m:Ljava/lang/String;
return-object v0
.end method
.method private aq()V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "id"
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
return-void
.end method
.method private ar()V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/feed/d/l;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "id"
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
return-void
.end method
.method private as()Lcom/instagram/feed/d/e;
.registers 6
new-instance v1, Lcom/instagram/feed/d/e;
invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v2, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
if-ne v0, v2, :cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
:cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_22
:goto_22
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v3
sget-object v4, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
if-ne v3, v4, :cond_22
invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
goto :goto_22
:cond_3a
return-object v1
.end method
.method private at()Lcom/instagram/feed/d/e;
.registers 5
new-instance v1, Lcom/instagram/feed/d/e;
invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v2, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
if-ne v0, v2, :cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
:cond_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_22
:goto_22
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/feed/d/c;->a()Z
move-result v3
if-eqz v3, :cond_22
invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
goto :goto_22
:cond_3c
return-object v1
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Media.REMOVED_COMMENTS|"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Lcom/instagram/feed/d/l;)V
.registers 5
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/b/a;
invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a
iput-object v0, p0, Lcom/instagram/feed/d/l;->R:Lcom/instagram/model/b/a;
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
:cond_29
iget-object v0, p0, Lcom/instagram/feed/d/l;->R:Lcom/instagram/model/b/a;
if-nez v0, :cond_45
const-string v0, "sender not in recipient list"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "media id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_4a
return-void
.end method
.method private c(Lcom/instagram/feed/d/l;)V
.registers 3
iget-object v0, p1, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
if-eqz v0, :cond_7
invoke-direct {p0, p1}, Lcom/instagram/feed/d/l;->d(Lcom/instagram/feed/d/l;)V
:cond_7
iget-object v0, p1, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
iput-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
return-void
.end method
.method private d(Lcom/instagram/feed/d/l;)V
.registers 5
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->aj()Lcom/instagram/model/b/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_43
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;
move-result-object v2
invoke-virtual {v1}, Lcom/instagram/model/b/a;->b()Z
move-result v0
if-nez v0, :cond_32
invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z
move-result v0
if-eqz v0, :cond_44
:cond_32
const/4 v0, 0x1
:goto_33
invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z
move-result v1
if-eq v0, v1, :cond_43
sget v1, Lcom/instagram/model/b/c;->a:I
invoke-virtual {v2, v1, v0}, Lcom/instagram/model/b/a;->a(IZ)V
iget-object v0, p1, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_43
return-void
:cond_44
const/4 v0, 0x0
goto :goto_33
.end method
.method public static d(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
const-string v1, "comments"
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
const-string v1, "comment_count"
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "has_more_comments"
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "caption"
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "next_max_id"
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_9
const/4 v0, 0x0
goto :goto_9
.end method
.method public final A()Lcom/instagram/venue/model/Venue;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
return-object v0
.end method
.method public final B()I
.registers 2
iget v0, p0, Lcom/instagram/feed/d/l;->j:I
return v0
.end method
.method public final C()Lcom/instagram/feed/d/e;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
if-nez v0, :cond_e
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/instagram/feed/d/l;->at()Lcom/instagram/feed/d/e;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
:cond_e
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
return-object v0
.end method
.method public final D()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final E()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final F()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final G()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final H()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final I()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->y:Z
return-void
.end method
.method public final J()V
.registers 3
iget v0, p0, Lcom/instagram/feed/d/l;->A:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/feed/d/l;->A:I
iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->a()I
move-result v0
if-lez v0, :cond_15
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
iget-object v1, p0, Lcom/instagram/feed/d/l;->w:Lcom/instagram/feed/d/e;
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/e;)Z
:cond_15
iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->b()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->y:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final K()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->y:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final L()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->y:Z
return v0
.end method
.method public final M()I
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_b
sget v0, Lcom/instagram/feed/d/n;->c:I
:goto_a
return v0
:cond_b
sget v0, Lcom/instagram/feed/d/n;->b:I
goto :goto_a
.end method
.method public final N()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final O()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->P()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final P()Ljava/lang/Double;
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->A()Lcom/instagram/venue/model/Venue;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/instagram/feed/d/l;->C:Ljava/lang/Double;
goto :goto_10
.end method
.method public final Q()Ljava/lang/Double;
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->A()Lcom/instagram/venue/model/Venue;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/Double;
goto :goto_10
.end method
.method public final R()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->p:Landroid/net/Uri;
return-object v0
.end method
.method public final S()Z
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->p:Landroid/net/Uri;
if-eqz v0, :cond_17
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/feed/d/l;->p:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public final T()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
iput-object v0, p0, Lcom/instagram/feed/d/l;->C:Ljava/lang/Double;
iput-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/Double;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final U()Lcom/instagram/model/people/b;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
return-object v0
.end method
.method public final V()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final W()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_5
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
:cond_a
iget-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I
move-result v0
goto :goto_5
.end method
.method public final X()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->F:Z
return v0
.end method
.method public final Y()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->J:Z
return v0
.end method
.method public final Z()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->G:Z
return v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
const/16 v1, 0x1e0
if-gt v0, v1, :cond_11
iget-object v0, p0, Lcom/instagram/feed/d/l;->o:Ljava/lang/String;
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/instagram/feed/d/l;->n:Ljava/lang/String;
goto :goto_10
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
iput-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/instagram/feed/d/l;->j:I
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/d/l;->V:J
return-void
.end method
.method public final a(Landroid/net/Uri;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/d/l;->p:Landroid/net/Uri;
return-void
.end method
.method public final a(Lcom/instagram/feed/d/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V
iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V
invoke-direct {p0}, Lcom/instagram/feed/d/l;->aq()V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 5
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
iget-object v0, p1, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
if-eqz v0, :cond_10
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
:cond_10
iget-object v0, p1, Lcom/instagram/feed/d/l;->m:Ljava/lang/String;
if-eqz v0, :cond_1a
invoke-direct {p1}, Lcom/instagram/feed/d/l;->ap()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->m:Ljava/lang/String;
:cond_1a
iget-object v0, p1, Lcom/instagram/feed/d/l;->l:Ljava/lang/String;
if-eqz v0, :cond_22
iget-object v0, p1, Lcom/instagram/feed/d/l;->l:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->l:Ljava/lang/String;
:cond_22
iget-object v0, p1, Lcom/instagram/feed/d/l;->k:Ljava/lang/String;
if-eqz v0, :cond_2a
iget-object v0, p1, Lcom/instagram/feed/d/l;->k:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->k:Ljava/lang/String;
:cond_2a
iget-wide v0, p1, Lcom/instagram/feed/d/l;->h:J
iput-wide v0, p0, Lcom/instagram/feed/d/l;->h:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/feed/d/l;->i:Ljava/lang/CharSequence;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;
iget-object v0, p1, Lcom/instagram/feed/d/l;->f:Lcom/instagram/user/c/a;
if-eqz v0, :cond_40
iget-object v0, p1, Lcom/instagram/feed/d/l;->f:Lcom/instagram/user/c/a;
iput-object v0, p0, Lcom/instagram/feed/d/l;->f:Lcom/instagram/user/c/a;
:cond_40
iget-object v0, p1, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
iput-object v0, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
iget v0, p1, Lcom/instagram/feed/d/l;->c:I
iput v0, p0, Lcom/instagram/feed/d/l;->c:I
iget v0, p1, Lcom/instagram/feed/d/l;->a:I
iput v0, p0, Lcom/instagram/feed/d/l;->a:I
iget-object v0, p1, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
iput-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_5e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V
goto :goto_5e
:cond_6e
iget-object v0, p1, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
iput-object v0, p0, Lcom/instagram/feed/d/l;->B:Lcom/instagram/venue/model/Venue;
iget-object v0, p1, Lcom/instagram/feed/d/l;->C:Ljava/lang/Double;
iput-object v0, p0, Lcom/instagram/feed/d/l;->C:Ljava/lang/Double;
iget-object v0, p1, Lcom/instagram/feed/d/l;->D:Ljava/lang/Double;
iput-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/Double;
iget-object v0, p1, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
iget-object v0, p1, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
iput-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v0, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V
:cond_8b
iget-wide v0, p1, Lcom/instagram/feed/d/l;->z:J
iput-wide v0, p0, Lcom/instagram/feed/d/l;->z:J
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->x:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->x:Z
iget-object v0, p1, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
iput-object v0, p0, Lcom/instagram/feed/d/l;->E:Lcom/instagram/model/people/b;
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->F:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->F:Z
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->J:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->J:Z
iget v0, p1, Lcom/instagram/feed/d/l;->A:I
iput v0, p0, Lcom/instagram/feed/d/l;->A:I
iget-object v0, p0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_b1
iget-object v0, p1, Lcom/instagram/feed/d/l;->n:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->n:Ljava/lang/String;
iget-object v0, p1, Lcom/instagram/feed/d/l;->o:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->o:Ljava/lang/String;
:cond_b1
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->G:Z
if-nez v0, :cond_dd
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->G:Z
if-eqz v0, :cond_dd
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->G:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->G:Z
iget-object v0, p1, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->I:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->I:Z
iget-object v0, p1, Lcom/instagram/feed/d/l;->K:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->K:Ljava/lang/String;
iget-object v0, p1, Lcom/instagram/feed/d/l;->L:Ljava/util/List;
iput-object v0, p0, Lcom/instagram/feed/d/l;->L:Ljava/util/List;
iget-object v0, p1, Lcom/instagram/feed/d/l;->M:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->M:Ljava/lang/String;
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->N:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->N:Z
iget-boolean v0, p1, Lcom/instagram/feed/d/l;->O:Z
iput-boolean v0, p0, Lcom/instagram/feed/d/l;->O:Z
iget-object v0, p1, Lcom/instagram/feed/d/l;->P:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->P:Ljava/lang/String;
:cond_dd
iget-object v0, p1, Lcom/instagram/feed/d/l;->Q:Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/feed/d/l;->Q:Ljava/lang/String;
iget-object v0, p1, Lcom/instagram/feed/d/l;->R:Lcom/instagram/model/b/a;
iput-object v0, p0, Lcom/instagram/feed/d/l;->R:Lcom/instagram/model/b/a;
invoke-direct {p0, p1}, Lcom/instagram/feed/d/l;->c(Lcom/instagram/feed/d/l;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Z
move-result v0
if-eqz v0, :cond_f7
invoke-static {}, Lcom/instagram/feed/d/ab;->a()Lcom/instagram/feed/d/ab;
move-result-object v0
iget-wide v1, p1, Lcom/instagram/feed/d/l;->T:J
invoke-virtual {v0, p0, v1, v2}, Lcom/instagram/feed/d/ab;->a(Lcom/instagram/feed/d/l;J)V
:cond_f7
iget-wide v0, p1, Lcom/instagram/feed/d/l;->V:J
iput-wide v0, p0, Lcom/instagram/feed/d/l;->V:J
iget-wide v0, p1, Lcom/instagram/feed/d/l;->U:J
iput-wide v0, p0, Lcom/instagram/feed/d/l;->U:J
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
return-void
.end method
.method public final a(Z)V
.registers 5
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
new-instance v1, Lcom/instagram/feed/d/q;
iget-object v2, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
invoke-direct {v1, v2, p1}, Lcom/instagram/feed/d/q;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Lcom/instagram/common/h/b;->b(Lcom/instagram/common/h/a;)V
return-void
.end method
.method public final aa()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;
return-object v0
.end method
.method public final ab()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->I:Z
return v0
.end method
.method public final ac()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->L:Ljava/util/List;
return-object v0
.end method
.method public final ad()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->O:Z
return v0
.end method
.method public final ae()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->Y:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final af()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->Q:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final ag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->P:Ljava/lang/String;
return-object v0
.end method
.method public final ah()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->Q:Ljava/lang/String;
return-object v0
.end method
.method public final ai()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final aj()Lcom/instagram/model/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->R:Lcom/instagram/model/b/a;
return-object v0
.end method
.method public final ak()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
return-object v0
.end method
.method public final al()J
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/l;->T:J
return-wide v0
.end method
.method public final am()J
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/l;->V:J
return-wide v0
.end method
.method public final an()J
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/l;->U:J
return-wide v0
.end method
.method public final ao()J
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->a()I
move-result v0
if-nez v0, :cond_f
:cond_c
const-wide/16 v0, 0x0
:goto_e
return-wide v0
:cond_f
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->d()J
move-result-wide v0
goto :goto_e
.end method
.method public final b()Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->f:Lcom/instagram/user/c/a;
return-object v0
.end method
.method public final b(Landroid/content/Context;)Ljava/lang/String;
.registers 4
sget v0, Lcom/instagram/feed/d/l;->d:I
if-nez v0, :cond_a
invoke-static {p1}, Lcom/instagram/n/b;->a(Landroid/content/Context;)I
move-result v0
sput v0, Lcom/instagram/feed/d/l;->d:I
:cond_a
sget-object v0, Lcom/instagram/feed/d/m;->a:[I
sget v1, Lcom/instagram/feed/d/l;->d:I
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
iget-object v0, p0, Lcom/instagram/feed/d/l;->m:Ljava/lang/String;
:goto_17
return-object v0
:pswitch_18
iget-object v0, p0, Lcom/instagram/feed/d/l;->l:Ljava/lang/String;
goto :goto_17
nop
:pswitch_data_1c
.packed-switch 0x1
:pswitch_18
.end packed-switch
.end method
.method public final b(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/d/l;->T:J
invoke-static {p0}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final b(Lcom/fasterxml/jackson/a/l;)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
const-string v2, "comments"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_63
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v1, Lcom/instagram/feed/d/e;
invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V
:goto_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_37
invoke-static {p1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;
move-result-object v2
if-eqz v2, :cond_37
invoke-virtual {v2}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_34
invoke-virtual {v2, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V
invoke-virtual {v1, v2}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
goto :goto_15
:cond_34
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_37
iget-object v2, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
if-nez v2, :cond_5d
iput-object v1, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
:goto_3d
:cond_3d
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
iget-object v1, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
if-eqz v1, :cond_5c
iget-object v1, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-lez v1, :cond_5c
if-lez v0, :cond_5c
iget-object v1, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
sub-int v0, v1, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
:cond_5c
return-void
:cond_5d
iget-object v2, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v2, v1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/e;)Z
goto :goto_3d
:cond_63
const-string v2, "comment_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_79
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iput-object v1, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
goto :goto_3d
:cond_79
const-string v2, "has_more_comments"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8b
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
iput-boolean v1, p0, Lcom/instagram/feed/d/l;->x:Z
goto :goto_3d
:cond_8b
const-string v2, "caption"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b9
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;
move-result-object v1
if-eqz v1, :cond_9e
iput-object v1, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
:cond_9e
iget-object v1, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
if-eqz v1, :cond_3d
iget-object v1, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b4
iget-object v1, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
invoke-virtual {v1, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V
goto :goto_3d
:cond_b4
const/4 v0, 0x1
const/4 v1, 0x0
iput-object v1, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
goto :goto_3d
:cond_b9
const-string v2, "next_max_id"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3d
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
const-wide/16 v1, -0x1
invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong(J)J
move-result-wide v1
iput-wide v1, p0, Lcom/instagram/feed/d/l;->z:J
goto/16 :goto_3d
.end method
.method public final b(Lcom/instagram/feed/d/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
move-result v0
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->y:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Lcom/instagram/feed/d/e;
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z
:cond_11
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/feed/d/l;->F:Z
return-void
.end method
.method public final c(Landroid/content/Context;)Ljava/lang/CharSequence;
.registers 4
iget-object v0, p0, Lcom/instagram/feed/d/l;->i:Ljava/lang/CharSequence;
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->l()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-double v0, v0
invoke-static {p1, v0, v1}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;D)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->i:Ljava/lang/CharSequence;
:cond_13
iget-object v0, p0, Lcom/instagram/feed/d/l;->i:Ljava/lang/CharSequence;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
return-object v0
.end method
.method public final c(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/d/l;->U:J
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/feed/d/l;->u:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z
invoke-direct {p0}, Lcom/instagram/feed/d/l;->ar()V
return-void
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/feed/d/l;->a:I
return v0
.end method
.method public final e(Ljava/lang/String;)Lcom/instagram/feed/d/b;
.registers 5
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e
:goto_24
return-object v0
:cond_25
const/4 v0, 0x0
goto :goto_24
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Ljava/lang/String;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
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
check-cast p1, Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
if-nez v2, :cond_23
goto :goto_4
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
return-object v0
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/String;
return-void
.end method
.method final g(Ljava/lang/String;)Lcom/instagram/model/b/a;
.registers 5
iget-object v0, p0, Lcom/instagram/feed/d/l;->S:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/b/a;
invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
:goto_20
return-object v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method public final g()Z
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->W:Ljava/lang/String;
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->Y:Ljava/lang/String;
return-object v0
.end method
.method public final j()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
goto :goto_5
.end method
.method public final k()Ljava/lang/Long;
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/l;->h:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final l()Ljava/lang/Long;
.registers 5
iget-wide v0, p0, Lcom/instagram/feed/d/l;->h:J
const-wide/32 v2, 0xf4240
div-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final m()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/d/l;->x:Z
return v0
.end method
.method public final n()J
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/l;->z:J
return-wide v0
.end method
.method public final o()I
.registers 2
iget v0, p0, Lcom/instagram/feed/d/l;->A:I
return v0
.end method
.method public final p()I
.registers 2
iget v0, p0, Lcom/instagram/feed/d/l;->c:I
return v0
.end method
.method public final q()Z
.registers 3
iget v0, p0, Lcom/instagram/feed/d/l;->c:I
sget v1, Lcom/instagram/feed/d/o;->a:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final r()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Ljava/lang/Integer;
return-object v0
.end method
.method public final s()Lcom/instagram/feed/d/e;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
return-object v0
.end method
.method public final t()Lcom/instagram/feed/d/b;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/b;
return-object v0
.end method
.method public final u()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->X:Ljava/lang/String;
return-object v0
.end method
.method public final v()Lcom/instagram/model/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->g:Lcom/instagram/model/a/a;
return-object v0
.end method
.method public final w()Z
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/String;
if-eqz v0, :cond_13
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public final x()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/String;
return-object v0
.end method
.method public final y()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V
return-void
.end method
.method public final z()Lcom/instagram/feed/d/e;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
if-nez v0, :cond_e
iget-object v0, p0, Lcom/instagram/feed/d/l;->s:Lcom/instagram/feed/d/e;
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/instagram/feed/d/l;->as()Lcom/instagram/feed/d/e;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
:cond_e
iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Lcom/instagram/feed/d/e;
return-object v0
.end method