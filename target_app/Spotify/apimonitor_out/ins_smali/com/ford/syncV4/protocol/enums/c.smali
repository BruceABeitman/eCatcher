.class public final Lcom/ford/syncV4/protocol/enums/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)I
.registers 2
sget-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
if-nez v0, :cond_7
invoke-static {}, Lcom/ford/syncV4/protocol/enums/c;->a()V
:cond_7
sget-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_16
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_15
return v0
:cond_16
const/4 v0, -0x1
goto :goto_15
.end method
.method public static a(I)Ljava/lang/String;
.registers 4
sget-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
if-nez v0, :cond_7
invoke-static {}, Lcom/ford/syncV4/protocol/enums/c;->a()V
:cond_7
sget-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne p0, v1, :cond_11
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_2f
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_2f
.end method
.method private static a()V
.registers 1
new-instance v0, Lcom/ford/syncV4/protocol/enums/FunctionID$1;
invoke-direct {v0}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;-><init>()V
sput-object v0, Lcom/ford/syncV4/protocol/enums/c;->a:Ljava/util/Map;
return-void
.end method