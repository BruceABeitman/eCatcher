.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final WIRE:Lcom/squareup/wire/x;
.field private transient cachedSerializedSize:I
.field protected transient hashCode:I
.field private transient haveCachedSerializedSize:Z
.field private transient unknownFields:Lcom/squareup/wire/r;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/squareup/wire/x;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Class;
invoke-direct {v0, v1}, Lcom/squareup/wire/x;-><init>([Ljava/lang/Class;)V
sput-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/x;
return-void
.end method
.method protected constructor <init>(Lcom/squareup/wire/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I
iget-object v0, p1, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;
if-eqz v0, :cond_13
new-instance v0, Lcom/squareup/wire/r;
iget-object v1, p1, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;
invoke-direct {v0, v1}, Lcom/squareup/wire/r;-><init>(Lcom/squareup/wire/r;)V
iput-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
:cond_13
return-void
.end method
.method static synthetic a(Lcom/squareup/wire/Message;)Lcom/squareup/wire/r;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
return-object v0
.end method
.method protected static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_a
if-eqz p0, :cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected static a(Ljava/util/List;Ljava/util/List;)Z
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_a
invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_a
move-object p0, v0
:cond_a
if-eqz p1, :cond_13
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_13
move-object p1, v0
:cond_13
if-eq p0, p1, :cond_1d
if-eqz p0, :cond_1f
invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
:cond_1d
const/4 v0, 0x1
:goto_1e
return v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method
.method protected static b(Ljava/util/List;)Ljava/util/List;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
goto :goto_3
.end method
.method protected static c(Ljava/util/List;)Ljava/util/List;
.registers 2
if-nez p0, :cond_7
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object p0
:goto_6
:cond_6
return-object p0
:cond_7
instance-of v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;
if-nez v0, :cond_6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object p0
goto :goto_6
.end method
.method static synthetic d()Lcom/squareup/wire/x;
.registers 1
sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/x;
return-object v0
.end method
.method public final a(Lcom/squareup/wire/z;)V
.registers 6
iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
iget-object v1, v0, Lcom/squareup/wire/r;->a:Ljava/util/Map;
if-eqz v1, :cond_44
iget-object v0, v0, Lcom/squareup/wire/r;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_34
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/s;
invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/s;->a(ILcom/squareup/wire/z;)V
goto :goto_34
:cond_44
return-void
.end method
.method public final a()[B
.registers 3
sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/x;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/Message;)[B
move-result-object v0
return-object v0
.end method
.method public final b()I
.registers 3
iget-boolean v0, p0, Lcom/squareup/wire/Message;->haveCachedSerializedSize:Z
if-nez v0, :cond_17
sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/x;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;)I
move-result v0
iput v0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/wire/Message;->haveCachedSerializedSize:Z
:cond_17
iget v0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I
return v0
.end method
.method public final c()I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/r;
iget-object v2, v1, Lcom/squareup/wire/r;->a:Ljava/util/Map;
if-eqz v2, :cond_50
iget-object v1, v1, Lcom/squareup/wire/r;->a:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move v2, v0
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1}, Lcom/squareup/wire/z;->a(I)I
move-result v1
add-int/2addr v1, v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_3c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/s;
invoke-virtual {v0}, Lcom/squareup/wire/s;->a()I
move-result v0
add-int/2addr v1, v0
goto :goto_3c
:cond_4e
move v2, v1
goto :goto_17
:cond_50
move v2, v0
:cond_51
move v0, v2
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/x;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/squareup/wire/MessageAdapter;->c(Lcom/squareup/wire/Message;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method