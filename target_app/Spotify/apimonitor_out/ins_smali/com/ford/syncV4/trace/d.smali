.class final Lcom/ford/syncV4/trace/d;
.super Lcom/ford/syncV4/proxy/b;
.source "SourceFile"
.method private constructor <init>()V
.registers 2
const-string v0, ""
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/b;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/ford/syncV4/proxy/b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/b;-><init>(Lcom/ford/syncV4/proxy/b;)V
return-void
.end method
.method private constructor <init>(Lcom/ford/syncV4/proxy/g;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/b;-><init>(Lcom/ford/syncV4/proxy/g;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
.registers 6
instance-of v0, p2, Ljava/util/Hashtable;
if-eqz v0, :cond_14
const-string v0, "["
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
check-cast p2, Ljava/util/Hashtable;
invoke-direct {p0, p2, p3}, Lcom/ford/syncV4/trace/d;->a(Ljava/util/Hashtable;Ljava/lang/StringBuilder;)V
const-string v0, "]"
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_13
return-void
:cond_14
instance-of v0, p2, Lcom/ford/syncV4/proxy/g;
if-eqz v0, :cond_2d
const-string v0, "["
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Lcom/ford/syncV4/trace/d;
check-cast p2, Lcom/ford/syncV4/proxy/g;
invoke-direct {v0, p2}, Lcom/ford/syncV4/trace/d;-><init>(Lcom/ford/syncV4/proxy/g;)V
invoke-direct {v0, p3}, Lcom/ford/syncV4/trace/d;->a(Ljava/lang/StringBuilder;)V
const-string v0, "]"
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_2d
instance-of v0, p2, Ljava/util/Vector;
if-eqz v0, :cond_56
const-string v0, "["
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
check-cast p2, Ljava/util/Vector;
const/4 v0, 0x0
:goto_39
invoke-virtual {p2}, Ljava/util/Vector;->size()I
move-result v1
if-ge v0, v1, :cond_50
if-lez v0, :cond_46
const-string v1, ", "
invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_46
invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
invoke-direct {p0, p1, v1, p3}, Lcom/ford/syncV4/trace/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
add-int/lit8 v0, v0, 0x1
goto :goto_39
:cond_50
const-string v0, "]"
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_56
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\" = \""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
.end method
.method private a(Ljava/lang/StringBuilder;)V
.registers 3
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/ford/syncV4/trace/d;->b:Ljava/util/Hashtable;
invoke-direct {p0, v0, p1}, Lcom/ford/syncV4/trace/d;->a(Ljava/util/Hashtable;Ljava/lang/StringBuilder;)V
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method private a(Ljava/util/Hashtable;Ljava/lang/StringBuilder;)V
.registers 8
invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
const/4 v0, 0x1
move v1, v0
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v1, :cond_21
const/4 v1, 0x0
:goto_1d
invoke-direct {p0, v0, v3, p2}, Lcom/ford/syncV4/trace/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto :goto_a
:cond_21
const-string v4, ", "
invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1d
:cond_27
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/ford/syncV4/trace/d;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/ford/syncV4/trace/d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-direct {p0, v0}, Lcom/ford/syncV4/trace/d;->a(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method