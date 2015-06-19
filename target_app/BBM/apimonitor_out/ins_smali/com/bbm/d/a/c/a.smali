.class public final Lcom/bbm/d/a/c/a;
.super Ljava/lang/Object;
.source "SparseList.java"
.implements Lcom/bbm/j/x;
.field protected a:Lcom/bbm/j/i;
.field private b:Lcom/bbm/d/a/c/d;
.field private c:Ljava/util/ArrayList;
.field private final d:Lcom/bbm/d/a/c;
.field private e:Z
.field private f:Z
.field private g:Z
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Z
.field private l:Z
.field private final m:Ljava/lang/Class;
.field private final n:Lcom/bbm/d/a/d;
.field private final o:Lcom/bbm/f/a;
.field private p:I
.field private q:Z
.field private final r:Ljava/util/Comparator;
.field private final s:Ljava/util/Comparator;
.field private final t:Ljava/util/Comparator;
.method public constructor <init>(Lcom/bbm/d/a/c;ZLcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;)V
.registers 8
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/d/a/c/d;
invoke-direct {v0, p0, v1}, Lcom/bbm/d/a/c/d;-><init>(Lcom/bbm/d/a/c/a;B)V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
iput-boolean v1, p0, Lcom/bbm/d/a/c/a;->e:Z
iput-boolean v1, p0, Lcom/bbm/d/a/c/a;->f:Z
iput-boolean v1, p0, Lcom/bbm/d/a/c/a;->g:Z
iput-boolean v1, p0, Lcom/bbm/d/a/c/a;->q:Z
new-instance v0, Lcom/bbm/j/i;
invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
new-instance v0, Lcom/bbm/d/a/c/b;
invoke-direct {v0, p0}, Lcom/bbm/d/a/c/b;-><init>(Lcom/bbm/d/a/c/a;)V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->s:Ljava/util/Comparator;
new-instance v0, Lcom/bbm/d/a/c/c;
invoke-direct {v0, p0}, Lcom/bbm/d/a/c/c;-><init>(Lcom/bbm/d/a/c/a;)V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->t:Ljava/util/Comparator;
iput-boolean p2, p0, Lcom/bbm/d/a/c/a;->q:Z
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/bbm/d/a/c/a;->t:Ljava/util/Comparator;
:goto_37
iput-object v0, p0, Lcom/bbm/d/a/c/a;->r:Ljava/util/Comparator;
iput-object p1, p0, Lcom/bbm/d/a/c/a;->d:Lcom/bbm/d/a/c;
iput-object p5, p0, Lcom/bbm/d/a/c/a;->m:Ljava/lang/Class;
iput-object p3, p0, Lcom/bbm/d/a/c/a;->n:Lcom/bbm/d/a/d;
iput-object p4, p0, Lcom/bbm/d/a/c/a;->o:Lcom/bbm/f/a;
return-void
:cond_42
iget-object v0, p0, Lcom/bbm/d/a/c/a;->s:Ljava/util/Comparator;
goto :goto_37
.end method
.method private a(Ljava/lang/String;Z)I
.registers 7
const/4 v2, 0x0
move v1, v2
:goto_2
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
if-ge v1, v0, :cond_22
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0, v1}, Lcom/bbm/d/a/c/d;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_2b
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v0, :cond_26
if-eqz p2, :cond_23
:goto_22
:cond_22
return v1
:cond_23
add-int/lit8 v1, v1, -0x1
goto :goto_22
:cond_26
if-nez p2, :cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_2b
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v3, :cond_31
if-lez v0, :cond_37
:cond_31
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->q:Z
if-nez v3, :cond_45
if-ltz v0, :cond_45
:cond_37
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iget-boolean v1, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v1, :cond_42
add-int/lit8 v1, v0, -0x1
goto :goto_22
:cond_42
add-int/lit8 v1, v0, 0x1
goto :goto_22
:cond_45
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
invoke-virtual {p0}, Lcom/bbm/d/a/c/a;->b()Z
move-result v0
if-nez v0, :cond_46
:try_start_9
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "type"
iget-object v2, p0, Lcom/bbm/d/a/c/a;->n:Lcom/bbm/d/a/d;
iget-object v2, v2, Lcom/bbm/d/a/d;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "id"
iget-object v2, p0, Lcom/bbm/d/a/c/a;->n:Lcom/bbm/d/a/d;
iget-object v2, v2, Lcom/bbm/d/a/d;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "minId"
invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "maxId"
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "limit"
invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v1, Lcom/bbm/f/ab;
const-string v2, "requestSparseElements"
invoke-direct {v1, v2, v0}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->e:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->f:Z
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->o:Lcom/bbm/f/a;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
:try_end_46
.catch Lorg/json/JSONException; {:try_start_9 .. :try_end_46} :catch_47
:goto_46
:cond_46
return-void
:catch_47
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_46
.end method
.method private b(Ljava/lang/String;Z)I
.registers 7
const/4 v2, 0x0
move v1, v2
:goto_2
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
if-ge v1, v0, :cond_22
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0, v1}, Lcom/bbm/d/a/c/d;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_2b
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v0, :cond_26
if-eqz p2, :cond_23
:goto_22
:cond_22
return v1
:cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_26
if-nez p2, :cond_22
add-int/lit8 v1, v1, -0x1
goto :goto_22
:cond_2b
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v3, :cond_31
if-lez v0, :cond_37
:cond_31
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->q:Z
if-nez v3, :cond_45
if-ltz v0, :cond_45
:cond_37
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iget-boolean v1, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v1, :cond_42
add-int/lit8 v1, v0, -0x1
goto :goto_22
:cond_42
add-int/lit8 v1, v0, 0x1
goto :goto_22
:cond_45
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/d/a/a;
.registers 5
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/c/d;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
if-nez v0, :cond_20
const/4 v0, 0x0
new-instance v1, Ljava/lang/String;
const-string v2, "1"
invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1, v0, v1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->m:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
:cond_20
return-object v0
.end method
.method public final a(II)Ljava/util/List;
.registers 6
const/4 v2, 0x0
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->isEmpty()Z
move-result v0
if-eqz v0, :cond_19
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v2, v2, v0}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_18
return-object v0
:cond_19
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
if-le p2, v0, :cond_72
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1}, Lcom/bbm/d/a/c/d;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/bbm/d/a/c/d;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
sub-int v1, p2, p1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v2, v0, v1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_42
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v2, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v2}, Lcom/bbm/d/a/c/d;->size()I
move-result v2
invoke-virtual {v1, p1, v2}, Lcom/bbm/d/a/c/d;->subList(II)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
goto :goto_18
:cond_54
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1}, Lcom/bbm/d/a/c/d;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/bbm/d/a/c/d;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
sub-int v1, p2, p1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v2, v1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_42
:cond_72
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1, p1, p2}, Lcom/bbm/d/a/c/d;->subList(II)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
goto :goto_18
.end method
.method public final a()V
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->e:Z
if-nez v0, :cond_16
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->e:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->f:Z
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
:cond_16
return-void
.end method
.method public final a(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 10
const/4 v6, 0x1
const/4 v2, 0x0
const-string v0, "last"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v3
const-string v0, "elements"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
move v1, v2
:goto_f
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v1, v0, :cond_32
iget-object v0, p0, Lcom/bbm/d/a/c/a;->m:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-interface {v0, v5}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-interface {v0, v5}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
iget-object v5, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_32
if-eqz v3, :cond_6d
const-string v0, "SparseList %s last chunk received"
new-array v1, v6, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/d/a/c/a;->d:Lcom/bbm/d/a/c;
iget-object v3, v3, Lcom/bbm/d/a/c;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_6e
:cond_4d
iget-object v0, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_6e
:cond_59
const-string v0, "No more items"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-boolean v6, p0, Lcom/bbm/d/a/c/a;->g:Z
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->e:Z
if-eqz v0, :cond_6d
iput-boolean v2, p0, Lcom/bbm/d/a/c/a;->e:Z
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
:goto_6d
:cond_6d
return-void
:cond_6e
iput-boolean v2, p0, Lcom/bbm/d/a/c/a;->e:Z
iget-object v0, p0, Lcom/bbm/d/a/c/a;->r:Ljava/util/Comparator;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->r:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_7b
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
if-gtz v0, :cond_90
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v1, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Lcom/bbm/d/a/c/d;->addAll(Ljava/util/Collection;)Z
:cond_8a
:goto_8a
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
goto :goto_6d
:cond_90
iget-object v0, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v0, :cond_d3
iget-object v0, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
iget-boolean v1, p0, Lcom/bbm/d/a/c/a;->l:Z
invoke-direct {p0, v0, v1}, Lcom/bbm/d/a/c/a;->b(Ljava/lang/String;Z)I
move-result v0
:goto_a2
iget-boolean v1, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v1, :cond_dc
iget-object v1, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->k:Z
invoke-direct {p0, v1, v3}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Z)I
move-result v1
move v3, v1
:goto_af
if-nez v4, :cond_e6
iget-object v1, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
iget-object v5, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e6
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1}, Lcom/bbm/d/a/c/d;->size()I
move-result v1
if-le v1, v0, :cond_8a
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v2, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a/c/d;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_8a
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1, v0}, Lcom/bbm/d/a/c/d;->remove(I)Ljava/lang/Object;
goto :goto_8a
:cond_d3
iget-object v0, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
iget-boolean v1, p0, Lcom/bbm/d/a/c/a;->k:Z
invoke-direct {p0, v0, v1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Z)I
move-result v0
goto :goto_a2
:cond_dc
iget-object v1, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
iget-boolean v3, p0, Lcom/bbm/d/a/c/a;->l:Z
invoke-direct {p0, v1, v3}, Lcom/bbm/d/a/c/a;->b(Ljava/lang/String;Z)I
move-result v1
move v3, v1
goto :goto_af
:cond_e6
iget-object v1, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
move-result-object v5
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1}, Lcom/bbm/d/a/c/d;->size()I
move-result v4
if-ne v0, v3, :cond_153
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_153
move v4, v2
:goto_fb
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v0
if-ge v4, v0, :cond_8a
invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lcom/bbm/d/a/a;
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v3, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-static {v1}, Lcom/bbm/d/a/c/d;->a(Lcom/bbm/d/a/a;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/d/a/c/d;->a(Ljava/lang/Object;)I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_14d
invoke-interface {v1}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v6
move v3, v2
:goto_11c
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
if-ge v3, v0, :cond_140
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0, v3}, Lcom/bbm/d/a/c/d;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
iget-boolean v7, p0, Lcom/bbm/d/a/c/a;->q:Z
if-eqz v7, :cond_13a
if-lez v0, :cond_140
:cond_13a
iget-boolean v7, p0, Lcom/bbm/d/a/c/a;->q:Z
if-nez v7, :cond_149
if-ltz v0, :cond_149
:cond_140
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0, v3, v1}, Lcom/bbm/d/a/c/d;->add(ILjava/lang/Object;)V
:goto_145
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_fb
:cond_149
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_11c
:cond_14d
iget-object v3, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v3, v0, v1}, Lcom/bbm/d/a/c/d;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_145
:cond_153
if-gt v0, v3, :cond_8a
if-ltz v0, :cond_8a
if-lez v3, :cond_8a
if-ge v0, v4, :cond_8a
if-gt v3, v4, :cond_8a
if-nez v0, :cond_184
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
move-object v1, v0
:goto_165
if-lt v3, v4, :cond_18c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_16c
new-instance v3, Lcom/bbm/d/a/c/d;
invoke-direct {v3, p0, v2}, Lcom/bbm/d/a/c/d;-><init>(Lcom/bbm/d/a/c/a;B)V
iput-object v3, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
iget-object v2, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v2, v1}, Lcom/bbm/d/a/c/d;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1, v5}, Lcom/bbm/d/a/c/d;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1, v0}, Lcom/bbm/d/a/c/d;->addAll(Ljava/util/Collection;)Z
goto/16 :goto_8a
:cond_184
iget-object v1, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v1, v2, v0}, Lcom/bbm/d/a/c/d;->subList(II)Ljava/util/List;
move-result-object v0
move-object v1, v0
goto :goto_165
:cond_18c
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
add-int/lit8 v3, v3, 0x1
invoke-virtual {v0, v3, v4}, Lcom/bbm/d/a/c/d;->subList(II)Ljava/util/List;
move-result-object v0
goto :goto_16c
.end method
.method public final a(Z)V
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->clear()V
:cond_b
invoke-direct {p0, v1, v1, v1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final synthetic b(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/a;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V
return-void
.end method
.method public final b(Lorg/json/JSONObject;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/d/a/c/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iput-boolean v3, p0, Lcom/bbm/d/a/c/a;->g:Z
const-string v0, "temporaryError"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_23
iput-object v0, p0, Lcom/bbm/d/a/c/a;->h:Ljava/lang/String;
iput-boolean v2, p0, Lcom/bbm/d/a/c/a;->f:Z
iput-boolean v3, p0, Lcom/bbm/d/a/c/a;->e:Z
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
:goto_22
return-void
:cond_23
const-string v0, "estimatedTotal"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/d/a/c/a;->p:I
const-string v0, "minId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/c/a;->i:Ljava/lang/String;
const-string v0, "maxId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/c/a;->j:Ljava/lang/String;
const-string v0, "minIdInclusive"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->k:Z
const-string v0, "maxIdInclusive"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/a/c/a;->l:Z
goto :goto_22
.end method
.method public final b()Z
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->e:Z
return v0
.end method
.method public final c()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget v0, p0, Lcom/bbm/d/a/c/a;->p:I
return v0
.end method
.method public final c(Lorg/json/JSONObject;)V
.registers 7
const-string v0, "elements"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
const/4 v0, 0x0
move v1, v0
:goto_8
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v1, v0, :cond_32
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
iget-object v0, p0, Lcom/bbm/d/a/c/a;->m:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0, v3}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
iget-object v4, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/bbm/d/a/c/d;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
if-eqz v0, :cond_2e
invoke-interface {v0, v3}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
:cond_2e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_32
iget-object v0, p0, Lcom/bbm/d/a/c/a;->a:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
return-void
.end method
.method public final d()Z
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->f:Z
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->h:Ljava/lang/String;
return-object v0
.end method
.method public final f()Z
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v0, p0, Lcom/bbm/d/a/c/a;->g:Z
return v0
.end method
.method public final g()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/c/a;->b:Lcom/bbm/d/a/c/d;
invoke-virtual {v0}, Lcom/bbm/d/a/c/d;->size()I
move-result v0
return v0
.end method