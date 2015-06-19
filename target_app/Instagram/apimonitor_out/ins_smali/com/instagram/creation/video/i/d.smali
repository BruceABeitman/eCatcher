.class public final Lcom/instagram/creation/video/i/d;
.super Lcom/instagram/creation/video/b/a;
.source "ClipStack.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/b/a;-><init>()V
return-void
.end method
.method public final c()I
.registers 8
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/creation/video/i/d;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/i/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->b()I
move-result v3
sget v4, Lcom/instagram/creation/video/i/c;->d:I
if-eq v3, v4, :cond_2a
int-to-long v3, v1
const-wide/16 v5, 0x0
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v0
invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
add-long/2addr v0, v3
long-to-int v0, v0
:goto_27
move v1, v0
goto :goto_6
:cond_29
return v1
:cond_2a
move v0, v1
goto :goto_27
.end method
.method public final d()Lcom/instagram/creation/video/i/a;
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/i/d;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/i/a;
return-object v0
.end method