.class final Lcom/facebook/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Comparable;
.field private final a:Ljava/io/File;
.field private final b:J
.method constructor <init>(Ljava/io/File;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/internal/h;->a:Ljava/io/File;
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/internal/h;->b:J
return-void
.end method
.method private a(Lcom/facebook/internal/h;)I
.registers 6
iget-wide v0, p0, Lcom/facebook/internal/h;->b:J
iget-wide v2, p1, Lcom/facebook/internal/h;->b:J
cmp-long v0, v0, v2
if-gez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-wide v0, p0, Lcom/facebook/internal/h;->b:J
iget-wide v2, p1, Lcom/facebook/internal/h;->b:J
cmp-long v0, v0, v2
if-lez v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
iget-object v0, p0, Lcom/facebook/internal/h;->a:Ljava/io/File;
iget-object v1, p1, Lcom/facebook/internal/h;->a:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I
move-result v0
goto :goto_9
.end method
.method final a()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/h;->a:Ljava/io/File;
return-object v0
.end method
.method final b()J
.registers 3
iget-wide v0, p0, Lcom/facebook/internal/h;->b:J
return-wide v0
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/facebook/internal/h;
invoke-direct {p0, p1}, Lcom/facebook/internal/h;->a(Lcom/facebook/internal/h;)I
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Lcom/facebook/internal/h;
if-eqz v0, :cond_e
check-cast p1, Lcom/facebook/internal/h;
invoke-direct {p0, p1}, Lcom/facebook/internal/h;->a(Lcom/facebook/internal/h;)I
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final hashCode()I
.registers 6
iget-object v0, p0, Lcom/facebook/internal/h;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->hashCode()I
move-result v0
add-int/lit16 v0, v0, 0x431
mul-int/lit8 v0, v0, 0x25
iget-wide v1, p0, Lcom/facebook/internal/h;->b:J
const-wide/32 v3, 0x7fffffff
rem-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method