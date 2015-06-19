.class public final Lcom/instagram/feed/d/b;
.super Ljava/lang/Object;
.source "Comment.java"
.implements Ljava/lang/Comparable;
.field  a:Ljava/lang/String;
.field  b:J
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Lcom/instagram/user/c/a;
.field  f:I
.field private g:Lcom/instagram/feed/d/l;
.field private h:Lcom/instagram/feed/d/c;
.field private i:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lcom/instagram/feed/d/d;->a:I
iput v0, p0, Lcom/instagram/feed/d/b;->f:I
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
return-void
.end method
.method private a(Lcom/instagram/feed/d/b;)I
.registers 10
const-wide/16 v6, 0x0
const/4 v1, 0x1
const/4 v0, -0x1
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c
const/4 v0, 0x0
:cond_b
:goto_b
return v0
:cond_c
iget v2, p0, Lcom/instagram/feed/d/b;->f:I
iget v3, p1, Lcom/instagram/feed/d/b;->f:I
if-eq v2, v3, :cond_1a
iget v2, p0, Lcom/instagram/feed/d/b;->f:I
sget v3, Lcom/instagram/feed/d/d;->b:I
if-eq v2, v3, :cond_b
move v0, v1
goto :goto_b
:cond_1a
iget-wide v2, p0, Lcom/instagram/feed/d/b;->b:J
iget-wide v4, p1, Lcom/instagram/feed/d/b;->b:J
sub-long/2addr v2, v4
cmp-long v4, v2, v6
if-nez v4, :cond_3f
iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
if-eqz v0, :cond_35
iget-object v0, p1, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_b
:cond_35
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
sub-int/2addr v0, v1
goto :goto_b
:cond_3f
cmp-long v2, v2, v6
if-lez v2, :cond_b
move v0, v1
goto :goto_b
.end method
.method static a(Lcom/fasterxml/jackson/a/l;)J
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
:goto_10
return-wide v0
:cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v0
const-wide/32 v2, 0xf4240
mul-long/2addr v0, v2
goto :goto_10
.end method
.method private o()J
.registers 5
iget-wide v0, p0, Lcom/instagram/feed/d/b;->b:J
const-wide/32 v2, 0xf4240
div-long/2addr v0, v2
return-wide v0
.end method
.method final a()Lcom/instagram/feed/d/b;
.registers 2
sget-object v0, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V
return-object p0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
.registers 4
invoke-direct {p0}, Lcom/instagram/feed/d/b;->o()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/d/b;->b:J
return-void
.end method
.method public final a(Lcom/instagram/feed/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/d/b;->g:Lcom/instagram/feed/d/l;
if-nez p1, :cond_8
const/4 v0, 0x0
:goto_5
iput-object v0, p0, Lcom/instagram/feed/d/b;->c:Ljava/lang/String;
return-void
:cond_8
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/d/b;->e:Lcom/instagram/user/c/a;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/d/b;->d:Ljava/lang/String;
return-void
.end method
.method public final a(ZLjava/lang/String;)V
.registers 4
sget-object v0, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;
iput-object v0, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;
if-eqz p1, :cond_a
if-eqz p2, :cond_a
iput-object p2, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;
:cond_a
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
if-eqz v0, :cond_6
if-nez p1, :cond_8
:cond_6
const/4 v0, 0x0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_7
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/instagram/feed/d/b;->b:J
return-wide v0
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/instagram/feed/d/b;
invoke-direct {p0, p1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/b;)I
move-result v0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public final e()Lcom/instagram/feed/d/l;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->g:Lcom/instagram/feed/d/l;
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public final g()Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->e:Lcom/instagram/user/c/a;
return-object v0
.end method
.method public final h()Lcom/instagram/feed/d/c;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;
return-object v0
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/instagram/feed/d/b;->f:I
return v0
.end method
.method public final j()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;
return-object v0
.end method
.method public final l()V
.registers 2
sget-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->F()V
return-void
.end method
.method public final m()V
.registers 2
sget-object v0, Lcom/instagram/feed/d/c;->d:Lcom/instagram/feed/d/c;
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->G()V
return-void
.end method
.method public final n()V
.registers 2
sget-object v0, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->H()V
return-void
.end method