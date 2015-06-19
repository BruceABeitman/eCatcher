.class public final Lcom/google/common/collect/i;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lcom/google/common/collect/ar;
.field private static final b:Ljava/util/Iterator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/common/collect/i$1;
invoke-direct {v0}, Lcom/google/common/collect/i$1;-><init>()V
sput-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
new-instance v0, Lcom/google/common/collect/i$5;
invoke-direct {v0}, Lcom/google/common/collect/i$5;-><init>()V
sput-object v0, Lcom/google/common/collect/i;->b:Ljava/util/Iterator;
return-void
.end method
.method public static a()Lcom/google/common/collect/aq;
.registers 1
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/aq;
.registers 2
new-instance v0, Lcom/google/common/collect/i$4;
invoke-direct {v0, p0}, Lcom/google/common/collect/i$4;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/aq;
.registers 2
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
instance-of v0, p0, Lcom/google/common/collect/aq;
if-eqz v0, :cond_a
check-cast p0, Lcom/google/common/collect/aq;
:goto_9
return-object p0
:cond_a
new-instance v0, Lcom/google/common/collect/i$6;
invoke-direct {v0, p0}, Lcom/google/common/collect/i$6;-><init>(Ljava/util/Iterator;)V
move-object p0, v0
goto :goto_9
.end method
.method public static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/aq;
.registers 3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/common/collect/i$2;
array-length v1, p0
invoke-direct {v0, v1, p0}, Lcom/google/common/collect/i$2;-><init>(I[Ljava/lang/Object;)V
return-object v0
.end method
.method static a([Ljava/lang/Object;III)Lcom/google/common/collect/ar;
.registers 6
if-ltz p2, :cond_12
const/4 v0, 0x1
:goto_3
invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V
add-int v0, p1, p2
array-length v1, p0
invoke-static {p1, v0, v1}, Lcom/google/common/base/i;->a(III)V
new-instance v0, Lcom/google/common/collect/i$3;
invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/common/collect/i$3;-><init>(II[Ljava/lang/Object;I)V
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_3
.end method
.method public static a(Ljava/util/Iterator;Lcom/google/common/base/b;)Ljava/util/Iterator;
.registers 3
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/common/collect/i$8;
invoke-direct {v0, p0, p1}, Lcom/google/common/collect/i$8;-><init>(Ljava/util/Iterator;Lcom/google/common/base/b;)V
return-object v0
.end method
.method public static a(Ljava/util/Iterator;Lcom/google/common/base/j;)Z
.registers 4
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
:goto_4
:cond_4
invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4
invoke-interface {p0}, Ljava/util/Iterator;->remove()V
const/4 v0, 0x1
goto :goto_4
:cond_19
return v0
.end method
.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x1
if-nez p1, :cond_10
:cond_3
invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_21
invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_3
:goto_f
return v0
:cond_10
invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_21
invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
goto :goto_f
:cond_21
const/4 v0, 0x0
goto :goto_f
.end method
.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
.registers 5
const/4 v0, 0x0
:cond_1
invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1d
invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_e
:cond_d
:goto_d
return v0
:cond_e
invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1
goto :goto_d
:cond_1d
invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_d
const/4 v0, 0x1
goto :goto_d
.end method
.method public static b(Ljava/util/Iterator;Lcom/google/common/base/j;)Lcom/google/common/collect/aq;
.registers 3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/common/collect/i$7;
invoke-direct {v0, p0, p1}, Lcom/google/common/collect/i$7;-><init>(Ljava/util/Iterator;Lcom/google/common/base/j;)V
return-object v0
.end method
.method public static b(Ljava/util/Iterator;)Ljava/lang/String;
.registers 4
const-string v0, ", "
invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/String;)Lcom/google/common/base/c;
move-result-object v0
const-string v1, "null"
invoke-virtual {v0, v1}, Lcom/google/common/base/c;->b(Ljava/lang/String;)Lcom/google/common/base/c;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, p0}, Lcom/google/common/base/c;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static c(Ljava/util/Iterator;)Ljava/util/ListIterator;
.registers 1
check-cast p0, Ljava/util/ListIterator;
return-object p0
.end method