.class public final Lcom/google/common/collect/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lcom/google/common/base/c;
.method static constructor <clinit>()V
.registers 2
const-string v0, ", "
invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/String;)Lcom/google/common/base/c;
move-result-object v0
const-string v1, "null"
invoke-virtual {v0, v1}, Lcom/google/common/base/c;->b(Ljava/lang/String;)Lcom/google/common/base/c;
move-result-object v0
sput-object v0, Lcom/google/common/collect/d;->a:Lcom/google/common/base/c;
return-void
.end method
.method static a(Ljava/util/Collection;)Ljava/lang/String;
.registers 5
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
invoke-static {v0}, Lcom/google/common/collect/d;->a(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/google/common/collect/d;->a:Lcom/google/common/base/c;
new-instance v2, Lcom/google/common/collect/d$1;
invoke-direct {v2, p0}, Lcom/google/common/collect/d$1;-><init>(Ljava/util/Collection;)V
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Lcom/google/common/collect/h$2;
invoke-direct {v3, p0, v2}, Lcom/google/common/collect/h$2;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V
invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/google/common/base/c;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(I)Ljava/lang/StringBuilder;
.registers 6
if-ltz p0, :cond_1a
const/4 v0, 0x1
:goto_3
const-string v1, "size must be non-negative"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
new-instance v0, Ljava/lang/StringBuilder;
int-to-long v1, p0
const-wide/16 v3, 0x8
mul-long/2addr v1, v3
const-wide/32 v3, 0x40000000
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J
move-result-wide v1
long-to-int v1, v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
return-object v0
:cond_1a
const/4 v0, 0x0
goto :goto_3
.end method
.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
.registers 1
check-cast p0, Ljava/util/Collection;
return-object p0
.end method
.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_7
const/4 v0, 0x0
:goto_18
return v0
:cond_19
const/4 v0, 0x1
goto :goto_18
.end method