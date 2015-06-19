.class final Lcom/bbm/util/f/n;
.super Ljava/lang/Object;
.source "TimestampScheduler.java"
.implements Ljava/lang/Comparable;
.field  a:Lcom/bbm/util/f/a;
.field private final b:Lcom/bbm/util/cr;
.field private c:Ljava/lang/String;
.field private final d:Lcom/bbm/util/f/k;
.field private e:J
.field private final f:J
.method public constructor <init>(Landroid/content/Context;JLcom/bbm/util/f/a;Lcom/bbm/util/f/k;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/f/n;->b:Lcom/bbm/util/cr;
iput-wide p2, p0, Lcom/bbm/util/f/n;->f:J
iput-object p4, p0, Lcom/bbm/util/f/n;->a:Lcom/bbm/util/f/a;
iput-object p5, p0, Lcom/bbm/util/f/n;->d:Lcom/bbm/util/f/k;
invoke-virtual {p0, p1}, Lcom/bbm/util/f/n;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/util/f/n;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/bbm/util/f/n;->b:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "getFormattedTime called on expired TimeObservable: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/util/f/n;->c:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_1b
iget-object v0, p0, Lcom/bbm/util/f/n;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/util/f/n;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/util/f/n;->e:J
return-wide v0
.end method
.method static synthetic c(Lcom/bbm/util/f/n;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/util/f/n;->b:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/util/f/n;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/util/f/n;->f:J
return-wide v0
.end method
.method static synthetic e(Lcom/bbm/util/f/n;)Lcom/bbm/util/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/util/f/n;->a:Lcom/bbm/util/f/a;
return-object v0
.end method
.method public final a(Landroid/content/Context;)V
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-object v0, p0, Lcom/bbm/util/f/n;->a:Lcom/bbm/util/f/a;
iget-wide v1, p0, Lcom/bbm/util/f/n;->f:J
const-wide/16 v6, 0x3e8
mul-long v2, v1, v6
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/bbm/util/f/a;->a(Landroid/content/Context;JJ)Lcom/bbm/util/f/h;
move-result-object v0
iget-object v1, v0, Lcom/bbm/util/f/h;->a:Ljava/lang/String;
iput-object v1, p0, Lcom/bbm/util/f/n;->c:Ljava/lang/String;
iget-wide v1, v0, Lcom/bbm/util/f/h;->b:J
const-wide/16 v6, -0x1
cmp-long v1, v1, v6
if-eqz v1, :cond_27
iget-wide v0, v0, Lcom/bbm/util/f/h;->b:J
add-long/2addr v0, v4
iput-wide v0, p0, Lcom/bbm/util/f/n;->e:J
iget-object v0, p0, Lcom/bbm/util/f/n;->d:Lcom/bbm/util/f/k;
invoke-static {v0, p0}, Lcom/bbm/util/f/k;->a(Lcom/bbm/util/f/k;Lcom/bbm/util/f/n;)V
:cond_27
return-void
.end method
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 6
check-cast p1, Lcom/bbm/util/f/n;
iget-wide v0, p0, Lcom/bbm/util/f/n;->e:J
iget-wide v2, p1, Lcom/bbm/util/f/n;->e:J
cmp-long v0, v0, v2
if-gez v0, :cond_c
const/4 v0, -0x1
:goto_b
return v0
:cond_c
iget-wide v0, p0, Lcom/bbm/util/f/n;->e:J
iget-wide v2, p1, Lcom/bbm/util/f/n;->e:J
cmp-long v0, v0, v2
if-lez v0, :cond_16
const/4 v0, 0x1
goto :goto_b
:cond_16
const/4 v0, 0x0
goto :goto_b
.end method