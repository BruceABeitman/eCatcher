.class abstract Lcom/squareup/wire/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:Ljava/util/Comparator;
.field  a:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/squareup/wire/o$1;
invoke-direct {v0}, Lcom/squareup/wire/o$1;-><init>()V
sput-object v0, Lcom/squareup/wire/o;->b:Ljava/util/Comparator;
return-void
.end method
.method protected constructor <init>(Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/wire/o;->b(Ljava/util/Map;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/squareup/wire/o;->a:Ljava/util/List;
return-void
.end method
.method public static a(Ljava/util/Map;)Lcom/squareup/wire/o;
.registers 4
const/4 v0, -0x1
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-le v0, v1, :cond_3e
:goto_1c
move v1, v0
goto :goto_a
:cond_1e
invoke-interface {p0}, Ljava/util/Map;->size()I
move-result v0
const/16 v2, 0x40
if-le v1, v2, :cond_2f
int-to-float v0, v0
int-to-float v2, v1
div-float/2addr v0, v2
const/high16 v2, 0x3f40
cmpl-float v0, v0, v2
if-lez v0, :cond_37
:cond_2f
const/4 v0, 0x1
:goto_30
if-eqz v0, :cond_39
invoke-static {p0, v1}, Lcom/squareup/wire/p;->a(Ljava/util/Map;I)Lcom/squareup/wire/p;
move-result-object v0
:goto_36
return-object v0
:cond_37
const/4 v0, 0x0
goto :goto_30
:cond_39
invoke-static {p0}, Lcom/squareup/wire/q;->b(Ljava/util/Map;)Lcom/squareup/wire/q;
move-result-object v0
goto :goto_36
:cond_3e
move v0, v1
goto :goto_1c
.end method
.method private static b(Ljava/util/Map;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/util/TreeSet;
sget-object v1, Lcom/squareup/wire/o;->b:Ljava/util/Comparator;
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_2b
return-object v1
.end method
.method public abstract a(I)Ljava/lang/Object;
.end method
.method public abstract b(I)Z
.end method