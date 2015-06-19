.class public final Lcom/instagram/android/maps/a/a;
.super Lcom/instagram/ui/d/a;
.source "GeoMediaAdapter.java"
.field private a:Ljava/util/List;
.field private b:Lcom/instagram/android/maps/d/a;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/d/a;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/instagram/android/maps/a/a;->b:Lcom/instagram/android/maps/d/a;
return-void
.end method
.method private a()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method private a(I)Ljava/util/ArrayList;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
mul-int/lit8 v2, p1, 0x3
const/4 v0, 0x0
:goto_8
const/4 v3, 0x3
if-ge v0, v3, :cond_1d
add-int v3, v2, v0
invoke-direct {p0}, Lcom/instagram/android/maps/a/a;->a()I
move-result v4
if-ge v3, v4, :cond_1a
invoke-direct {p0, v3}, Lcom/instagram/android/maps/a/a;->b(I)Lcom/instagram/android/h/b;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1d
return-object v1
.end method
.method private b(I)Lcom/instagram/android/h/b;
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
return-object v0
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 5
const/4 v0, 0x3
invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 10
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/b/w;
invoke-direct {p0, p3}, Lcom/instagram/android/maps/a/a;->a(I)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->getCount()I
move-result v2
if-ne p3, v2, :cond_20
const/4 v2, 0x1
:goto_11
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v3
iget-object v5, p0, Lcom/instagram/android/maps/a/a;->b:Lcom/instagram/android/maps/d/a;
move v4, p3
invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V
return-void
:cond_20
const/4 v2, 0x0
goto :goto_11
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_6
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V
const/4 v0, 0x1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method public final getCount()I
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-double v0, v0
const-wide/high16 v2, 0x4008
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
return v0
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method