.class  Lcom/twidroid/net/c/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/c/a/c;
.implements Lcom/c/a/p;
.implements Lcom/c/a/q;
.field final synthetic a:Lcom/twidroid/net/c/a;
.method private constructor <init>(Lcom/twidroid/net/c/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/net/c/a;Lcom/twidroid/net/c/a$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/c/d;-><init>(Lcom/twidroid/net/c/a;)V
return-void
.end method
.method public a(Lcom/c/a/r;)Lcom/c/a/k;
.registers 6
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WPS handleError "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/c/a/r;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v0}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
iget-object v2, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v2}, Lcom/twidroid/net/c/a;->c(Lcom/twidroid/net/c/a;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c02fd
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/c/c;->a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v0}, Lcom/twidroid/net/c/a;->f(Lcom/twidroid/net/c/a;)Z
move-result v0
if-nez v0, :cond_3f
sget-object v0, Lcom/c/a/k;->a:Lcom/c/a/k;
:goto_3e
return-object v0
:cond_3f
sget-object v0, Lcom/c/a/k;->b:Lcom/c/a/k;
goto :goto_3e
.end method
.method public a(Lcom/c/a/b;)V
.registers 6
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handleIPLocation "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/c/a/b;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/twidroid/net/c/a;->a(Lcom/c/a/b;)Landroid/location/Address;
move-result-object v0
const-string v1, "GPSUpdateTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handleIPLocation "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/location/Address;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v1}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/net/c/c;->b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
const-string v1, "GPSUpdateTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handleIPLocation DONE "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/location/Address;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method
.method public a(Lcom/c/a/o;)V
.registers 6
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handleWPSLocation "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/c/a/o;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/twidroid/net/c/a;->a(Lcom/c/a/o;)Landroid/location/Address;
move-result-object v0
const-string v1, "GPSUpdateTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handleWPSLocation "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/location/Address;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v1}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/net/c/c;->b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
const-string v1, "GPSUpdateTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handleWPSLocation DONE"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/location/Address;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method
.method public b(Lcom/c/a/o;)Lcom/c/a/k;
.registers 5
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v0}, Lcom/twidroid/net/c/a;->e(Lcom/twidroid/net/c/a;)V
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handleWPSPeriodicLocation "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/c/a/o;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/d;->a:Lcom/twidroid/net/c/a;
invoke-static {v0}, Lcom/twidroid/net/c/a;->f(Lcom/twidroid/net/c/a;)Z
move-result v0
if-nez v0, :cond_2c
sget-object v0, Lcom/c/a/k;->a:Lcom/c/a/k;
:goto_2b
return-object v0
:cond_2c
sget-object v0, Lcom/c/a/k;->b:Lcom/c/a/k;
goto :goto_2b
.end method
.method public q_()V
.registers 1
return-void
.end method