.class final Lcom/squareup/okhttp/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/reflect/InvocationHandler;
.field private final a:Ljava/util/List;
.field private b:Z
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/util/List;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/n;->a:Ljava/util/List;
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/n;)Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/n;->b:Z
return v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/n;->c:Ljava/lang/String;
return-object v0
.end method
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v1, 0x0
const/4 v5, 0x1
const/4 v2, 0x0
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v3
if-nez p3, :cond_f
sget-object p3, Lcom/squareup/okhttp/internal/o;->b:[Ljava/lang/String;
:cond_f
const-string v4, "supports"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_20
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-ne v4, v3, :cond_20
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_1f
return-object v0
:cond_20
const-string v4, "unsupported"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_30
sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v4, v3, :cond_30
iput-boolean v5, p0, Lcom/squareup/okhttp/internal/n;->b:Z
move-object v0, v1
goto :goto_1f
:cond_30
const-string v4, "protocols"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
array-length v4, p3
if-nez v4, :cond_3e
iget-object v0, p0, Lcom/squareup/okhttp/internal/n;->a:Ljava/util/List;
goto :goto_1f
:cond_3e
const-string v4, "selectProtocol"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_85
const-class v4, Ljava/lang/String;
if-ne v4, v3, :cond_85
array-length v3, p3
if-ne v3, v5, :cond_85
aget-object v3, p3, v2
if-eqz v3, :cond_57
aget-object v3, p3, v2
instance-of v3, v3, Ljava/util/List;
if-eqz v3, :cond_85
:cond_57
aget-object v0, p3, v2
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
move v1, v2
:goto_60
if-ge v1, v3, :cond_7a
iget-object v4, p0, Lcom/squareup/okhttp/internal/n;->a:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_77
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/squareup/okhttp/internal/n;->c:Ljava/lang/String;
goto :goto_1f
:cond_77
add-int/lit8 v1, v1, 0x1
goto :goto_60
:cond_7a
iget-object v0, p0, Lcom/squareup/okhttp/internal/n;->a:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/squareup/okhttp/internal/n;->c:Ljava/lang/String;
goto :goto_1f
:cond_85
const-string v3, "protocolSelected"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_98
array-length v0, p3
if-ne v0, v5, :cond_98
aget-object v0, p3, v2
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/squareup/okhttp/internal/n;->c:Ljava/lang/String;
move-object v0, v1
goto :goto_1f
:cond_98
invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_1f
.end method