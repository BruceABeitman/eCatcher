.class  Lcom/google/android/gms/internal/dd$a;
.super Landroid/content/MutableContextWrapper;
.field private qd:Landroid/app/Activity;
.field private qe:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dd$a;->setBaseContext(Landroid/content/Context;)V
return-void
.end method
.method public setBaseContext(Landroid/content/Context;)V
.registers 3
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/dd$a;->qe:Landroid/content/Context;
instance-of v0, p1, Landroid/app/Activity;
if-eqz v0, :cond_14
check-cast p1, Landroid/app/Activity;
:goto_c
iput-object p1, p0, Lcom/google/android/gms/internal/dd$a;->qd:Landroid/app/Activity;
iget-object v0, p0, Lcom/google/android/gms/internal/dd$a;->qe:Landroid/content/Context;
invoke-super {p0, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
return-void
:cond_14
const/4 p1, 0x0
goto :goto_c
.end method
.method public startActivity(Landroid/content/Intent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dd$a;->qd:Landroid/app/Activity;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/dd$a;->qd:Landroid/app/Activity;
invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:goto_9
return-void
:cond_a
const/high16 v0, 0x1000
invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
iget-object v0, p0, Lcom/google/android/gms/internal/dd$a;->qe:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_9
.end method