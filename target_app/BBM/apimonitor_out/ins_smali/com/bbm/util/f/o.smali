.class final Lcom/bbm/util/f/o;
.super Ljava/lang/Object;
.source "TimestampScheduler.java"
.field private final a:J
.field private final b:Lcom/bbm/util/f/a;
.method public constructor <init>(JLcom/bbm/util/f/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/bbm/util/f/o;->a:J
iput-object p3, p0, Lcom/bbm/util/f/o;->b:Lcom/bbm/util/f/a;
return-void
.end method
.method public constructor <init>(Lcom/bbm/util/f/n;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/bbm/util/f/n;->d(Lcom/bbm/util/f/n;)J
move-result-wide v0
iput-wide v0, p0, Lcom/bbm/util/f/o;->a:J
invoke-static {p1}, Lcom/bbm/util/f/n;->e(Lcom/bbm/util/f/n;)Lcom/bbm/util/f/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/f/o;->b:Lcom/bbm/util/f/a;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/bbm/util/f/o;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/bbm/util/f/o;
iget-wide v2, p0, Lcom/bbm/util/f/o;->a:J
iget-wide v4, p1, Lcom/bbm/util/f/o;->a:J
cmp-long v2, v2, v4
if-nez v2, :cond_1b
iget-object v2, p0, Lcom/bbm/util/f/o;->b:Lcom/bbm/util/f/a;
iget-object v3, p1, Lcom/bbm/util/f/o;->b:Lcom/bbm/util/f/a;
if-eq v2, v3, :cond_4
:cond_1b
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget-wide v0, p0, Lcom/bbm/util/f/o;->a:J
long-to-int v0, v0
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/bbm/util/f/o;->b:Lcom/bbm/util/f/a;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method