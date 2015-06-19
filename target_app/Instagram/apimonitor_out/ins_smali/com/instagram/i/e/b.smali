.class public final Lcom/instagram/i/e/b;
.super Ljava/lang/Object;
.source "NewsfeedYouStore.java"
.implements Lcom/instagram/common/l/b/a;
.field final synthetic a:Lcom/instagram/i/e/a;
.method public constructor <init>(Lcom/instagram/i/e/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/e/b;->a:Lcom/instagram/i/e/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private c()Z
.registers 5
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/i/e/b;->a:Lcom/instagram/i/e/a;
invoke-static {v2}, Lcom/instagram/i/e/a;->d(Lcom/instagram/i/e/a;)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/32 v2, 0x493e0
cmp-long v0, v0, v2
if-ltz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/i/e/b;->a:Lcom/instagram/i/e/a;
invoke-static {v0}, Lcom/instagram/i/e/a;->c(Lcom/instagram/i/e/a;)Z
move-result v0
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/instagram/i/e/b;->c()Z
move-result v0
if-eqz v0, :cond_15
:cond_e
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V
:cond_15
return-void
.end method