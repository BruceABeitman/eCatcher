.class public Lcom/bbm/ui/e/ag;
.super Ljava/lang/Object;
.source "GroupListUpdate.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/g/ak;)V
.registers 6
const-string v0, "Clicked"
const-class v1, Lcom/bbm/ui/e/ag;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "listUri"
iget-object v2, p2, Lcom/bbm/g/ak;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static a(Lcom/bbm/g/al;)Z
.registers 2
sget-object v0, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;
if-eq v0, p0, :cond_10
sget-object v0, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;
if-eq v0, p0, :cond_10
sget-object v0, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;
if-eq v0, p0, :cond_10
sget-object v0, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;
if-ne v0, p0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method