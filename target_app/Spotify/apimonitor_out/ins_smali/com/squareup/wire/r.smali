.class final Lcom/squareup/wire/r;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/util/Map;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method constructor <init>(Lcom/squareup/wire/r;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/squareup/wire/r;->a:Ljava/util/Map;
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/squareup/wire/r;->a()Ljava/util/Map;
move-result-object v0
iget-object v1, p1, Lcom/squareup/wire/r;->a:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_10
return-void
.end method
.method private a()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/r;->a:Ljava/util/Map;
if-nez v0, :cond_b
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/r;->a:Ljava/util/Map;
:cond_b
iget-object v0, p0, Lcom/squareup/wire/r;->a:Ljava/util/Map;
return-object v0
.end method
.method private static a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
.registers 8
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_7f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_19
sget-object v0, Lcom/squareup/wire/r$1;->a:[I
invoke-virtual {p3}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_82
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unsupported wireType = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_39
check-cast p2, Ljava/lang/Long;
new-instance v0, Lcom/squareup/wire/w;
invoke-direct {v0, p1, p2}, Lcom/squareup/wire/w;-><init>(ILjava/lang/Long;)V
move-object v2, v0
:goto_41
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_7b
const/4 v0, 0x0
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/s;
invoke-virtual {v0}, Lcom/squareup/wire/s;->b()Lcom/squareup/wire/WireType;
move-result-object v0
invoke-virtual {v2}, Lcom/squareup/wire/s;->b()Lcom/squareup/wire/WireType;
move-result-object v3
if-eq v0, v3, :cond_7b
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Wire type differs from previous type for tag"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_60
check-cast p2, Ljava/lang/Integer;
new-instance v0, Lcom/squareup/wire/t;
invoke-direct {v0, p1, p2}, Lcom/squareup/wire/t;-><init>(ILjava/lang/Integer;)V
move-object v2, v0
goto :goto_41
:pswitch_69
check-cast p2, Ljava/lang/Long;
new-instance v0, Lcom/squareup/wire/u;
invoke-direct {v0, p1, p2}, Lcom/squareup/wire/u;-><init>(ILjava/lang/Long;)V
move-object v2, v0
goto :goto_41
:pswitch_72
check-cast p2, Lokio/ByteString;
new-instance v0, Lcom/squareup/wire/v;
invoke-direct {v0, p1, p2}, Lcom/squareup/wire/v;-><init>(ILokio/ByteString;)V
move-object v2, v0
goto :goto_41
:cond_7b
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
:cond_7f
move-object v1, v0
goto :goto_19
nop
:pswitch_data_82
.packed-switch 0x1
:pswitch_39
:pswitch_60
:pswitch_69
:pswitch_72
.end packed-switch
.end method
.method final a(ILjava/lang/Integer;)V
.registers 5
invoke-direct {p0}, Lcom/squareup/wire/r;->a()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;
invoke-static {v0, p1, p2, v1}, Lcom/squareup/wire/r;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
return-void
.end method
.method final a(ILjava/lang/Long;)V
.registers 5
invoke-direct {p0}, Lcom/squareup/wire/r;->a()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;
invoke-static {v0, p1, p2, v1}, Lcom/squareup/wire/r;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
return-void
.end method
.method final a(ILokio/ByteString;)V
.registers 5
invoke-direct {p0}, Lcom/squareup/wire/r;->a()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;
invoke-static {v0, p1, p2, v1}, Lcom/squareup/wire/r;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
return-void
.end method
.method final b(ILjava/lang/Long;)V
.registers 5
invoke-direct {p0}, Lcom/squareup/wire/r;->a()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;
invoke-static {v0, p1, p2, v1}, Lcom/squareup/wire/r;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
return-void
.end method