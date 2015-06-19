.class public Lcom/instagram/notifications/a/b;
.super Ljava/lang/Object;
.source "IgNotification.java"
.implements Lcom/instagram/common/q/c/a;
.field private static final l:Ljava/lang/Class;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Ljava/lang/String;
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:Ljava/lang/String;
.field  k:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/notifications/a/b;
sput-object v0, Lcom/instagram/notifications/a/b;->l:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Intent;)Lcom/instagram/notifications/a/b;
.registers 3
const-string v0, "data"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/notifications/a/b;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
move-result-object v1
const-string v0, "collapse_key"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_15
:goto_12
iput-object v0, v1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
return-object v1
:cond_15
sget-object v0, Lcom/instagram/notifications/a/a;->l:Ljava/lang/String;
goto :goto_12
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
.registers 2
:try_start_0
invoke-static {p0}, Lcom/instagram/notifications/a/c;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
sget-object v0, Lcom/instagram/notifications/a/b;->l:Ljava/lang/Class;
const/4 v0, 0x0
goto :goto_4
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, "Instagram"
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;
goto :goto_6
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;
goto :goto_8
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/instagram/notifications/a/b;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/instagram/notifications/a/b;
invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->e()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->f()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;
iget-object v2, p1, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/instagram/common/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;
goto :goto_6
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;
return-object v0
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
iget-object v2, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x5
iget-object v2, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x6
iget-object v2, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x7
iget-object v2, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0x8
iget-object v2, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0x9
iget-object v2, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0xa
iget-object v2, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/instagram/common/i/a/d;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;
return-object v0
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;
return-object v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
return-object v0
.end method
.method public final l()Ljava/lang/String;
.registers 4
:try_start_0
invoke-static {p0}, Lcom/instagram/notifications/a/c;->a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
const-class v1, Lcom/instagram/notifications/a/b;
const-string v2, "Unexpected IO exception"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
goto :goto_4
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "IgNotification{"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "mTitle=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mMessage=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mTickerText=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mIgAction=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mIgActionOverride=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mOptionalImage=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mOptionalAvatarUrl=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mCollapseKey=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mSound=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mPushId=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, ", mIntendedRecipientUserid=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method