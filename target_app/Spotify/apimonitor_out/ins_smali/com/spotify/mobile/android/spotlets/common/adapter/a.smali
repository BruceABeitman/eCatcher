.class public final Lcom/spotify/mobile/android/spotlets/common/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
.field private b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
.field private final c:I
.field private final d:Ljava/util/Map;
.field private final e:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/a$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/a$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/common/adapter/d;Ljava/util/List;Z)V
.registers 13
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v5, 0x1
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
if-eqz p3, :cond_76
move-object v3, v4
:goto_9
const-string v0, "null binders list!"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_7d
move v0, v5
:goto_18
const-string v1, "cannot create DelegableAdapter with no binders!"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
new-instance v0, Ljava/util/HashMap;
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->e:Ljava/util/Map;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
const/high16 v2, 0x3f40
invoke-direct {v0, v1, v2, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->d:Ljava/util/Map;
const/4 v0, -0x1
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
move v7, v0
:goto_3b
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_86
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/f;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/common/adapter/f;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/f;->b()Ljava/lang/Class;
move-result-object v2
invoke-direct {p0, v2, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)V
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/f;->a()Ljava/lang/Class;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Class;
if-eqz p3, :cond_7f
move-object v2, v4
:goto_61
if-nez v2, :cond_6e
add-int/lit8 v7, v7, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
if-eqz v3, :cond_6e
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_6e
move v1, v7
iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->e:Ljava/util/Map;
invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v7, v1
goto :goto_3b
:cond_76
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
move-object v3, v0
goto :goto_9
:cond_7d
move v0, v6
goto :goto_18
:cond_7f
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
goto :goto_61
:cond_86
add-int/lit8 v0, v7, 0x1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->c:I
if-lez v0, :cond_93
:goto_8c
invoke-static {v5}, Lcom/google/common/base/i;->b(Z)V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)V
return-void
:cond_93
move v5, v6
goto :goto_8c
.end method
.method private a(Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/f;
.registers 7
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->d:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/f;
if-nez v0, :cond_4a
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->d:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_48
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/common/adapter/f;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/f;->b()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v4
if-eqz v4, :cond_18
invoke-direct {p0, v2, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)V
:goto_31
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "No mapping for item type "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
:goto_47
return-object v1
:cond_48
move-object v1, v0
goto :goto_31
:cond_4a
move-object v1, v0
goto :goto_47
.end method
.method private a(Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->d:Ljava/util/Map;
const-string v1, "null class!"
invoke-static {p1, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_26
const/4 v0, 0x1
:goto_f
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "More than one binder for class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
return-void
:cond_26
const/4 v0, 0x0
goto :goto_f
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)V
.registers 4
if-nez p1, :cond_26
sget-object v1, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
:goto_4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
instance-of v0, v0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/a;)V
:cond_19
instance-of v0, v1, Lcom/spotify/mobile/android/spotlets/common/adapter/b;
if-eqz v0, :cond_23
move-object v0, v1
check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/a;)V
:cond_23
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
:cond_25
return-void
:cond_26
move-object v1, p1
goto :goto_4
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/d;->getCount()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
const-string v1, "illegal null item at position %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/d;->getItemId(I)J
move-result-wide v0
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->e:Ljava/util/Map;
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->getItem(I)Ljava/lang/Object;
move-result-object v1
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/f;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/f;
move-result-object v1
if-nez p2, :cond_e
invoke-interface {v1, p1, p3}, Lcom/spotify/mobile/android/spotlets/common/adapter/f;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_e
invoke-interface {v1, p1, p2, v0, p3}, Lcom/spotify/mobile/android/spotlets/common/adapter/f;->a(ILandroid/view/View;Ljava/lang/Object;Landroid/view/ViewGroup;)V
return-object p2
.end method
.method public final getViewTypeCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->c:I
return v0
.end method
.method public final hasStableIds()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/d;->hasStableIds()Z
move-result v0
return v0
.end method
.method public final isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/d;->isEnabled(I)Z
move-result v0
return v0
.end method