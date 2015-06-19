.class final Lcom/bbm/ui/activities/ahf;
.super Lcom/bbm/j/k;
.source "ShowBarCodeActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->e(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
:goto_d
iget-object v0, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_63
iget-object v0, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->g(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_5c
iget-object v2, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "bbm:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
:cond_5c
:goto_5c
return-void
:cond_5d
iget-object v0, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
goto :goto_d
:cond_63
iget-object v1, p0, Lcom/bbm/ui/activities/ahf;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "www.pin.bbm.com/"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
goto :goto_5c
.end method