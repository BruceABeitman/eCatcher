.class final Lcom/instagram/android/feed/a/g;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.field final synthetic a:Lcom/instagram/android/feed/a/a;
.field private b:Z
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/ArrayList;
.field private final e:Ljava/util/ArrayList;
.method private constructor <init>(Lcom/instagram/android/feed/a/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/g;-><init>(Lcom/instagram/android/feed/a/a;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/g;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->h()V
return-void
.end method
.method private a(Lcom/instagram/feed/d/l;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_1e
invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/e/b/h;->c(Ljava/lang/String;)V
:goto_1d
return-void
:cond_1e
invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/e/b/h;->c(Ljava/lang/String;)V
goto :goto_1d
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/g;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/feed/a/g;)I
.registers 2
invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->g()I
move-result v0
return v0
.end method
.method private f()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->g()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->ae()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
rem-int/lit8 v0, v0, 0x3
:cond_1d
return v0
.end method
.method private g()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method private h()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/feed/d/l;)V
goto :goto_6
:cond_16
return-void
.end method
.method public final a(I)Lcom/instagram/feed/d/l;
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v2, v0}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z
move-result v2
if-eqz v2, :cond_b
iget-object v2, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_25
return-void
.end method
.method public final a(Ljava/util/List;Z)V
.registers 9
const/4 v3, 0x0
if-eqz p1, :cond_3d
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move v2, v3
:goto_8
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v5
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;
invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/feed/d/l;
if-nez v1, :cond_34
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;
invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p2, :cond_37
iget-object v5, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
add-int/lit8 v1, v2, 0x1
invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
move v2, v1
:goto_31
invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/feed/d/l;)V
:cond_34
move v0, v2
move v2, v0
goto :goto_8
:cond_37
iget-object v1, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_31
:cond_3d
iget-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z
if-eqz v0, :cond_54
iput-boolean v3, p0, Lcom/instagram/android/feed/a/g;->b:Z
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;
move-result-object v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/android/feed/a/f;->a()V
:cond_54
return-void
.end method
.method public final b(I)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
mul-int/lit8 v2, p1, 0x3
const/4 v0, 0x0
:goto_8
const/4 v3, 0x3
if-ge v0, v3, :cond_1d
add-int v3, v2, v0
invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->g()I
move-result v4
if-ge v3, v4, :cond_1a
invoke-virtual {p0, v3}, Lcom/instagram/android/feed/a/g;->a(I)Lcom/instagram/feed/d/l;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1d
return-object v1
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public final c()I
.registers 5
const-wide/high16 v2, 0x4008
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/a/a;->c(Lcom/instagram/android/feed/a/a;)I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_18
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->f()I
move-result v1
sub-int/2addr v0, v1
:goto_17
return v0
:cond_18
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/a/a;->c(Lcom/instagram/android/feed/a/a;)I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->b:I
if-ne v0, v1, :cond_52
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->g()Z
move-result v0
if-nez v0, :cond_36
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->af()Z
move-result v0
if-eqz v0, :cond_44
:cond_36
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
int-to-double v0, v0
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
double-to-int v0, v0
goto :goto_17
:cond_44
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
int-to-double v0, v0
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
goto :goto_17
:cond_52
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "View mode not handled"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final d()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/feed/a/g;->c()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final e()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method