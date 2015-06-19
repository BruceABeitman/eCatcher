.class final Lcom/bbm/ui/activities/or;
.super Lcom/bbm/d/b/m;
.source "GroupListItemsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/j/r;Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 3
iput-object p2, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0, p1}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
check-cast p1, Lcom/bbm/g/y;
iget-object v2, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v2
if-nez v2, :cond_15
iget-object v2, p1, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;
sget-object v3, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;
if-eq v2, v3, :cond_13
:cond_12
:goto_12
return v0
:cond_13
move v0, v1
goto :goto_12
:cond_15
iget-object v2, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v2
if-ne v2, v0, :cond_25
iget-object v2, p1, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;
sget-object v3, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;
if-eq v2, v3, :cond_12
move v0, v1
goto :goto_12
:cond_25
iget-object v2, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v2
const/4 v3, 0x2
if-eq v2, v3, :cond_12
iget-object v0, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v2, 0x3
if-ne v0, v2, :cond_3a
iget-boolean v0, p1, Lcom/bbm/g/y;->i:Z
goto :goto_12
:cond_3a
iget-object v0, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v2, 0x4
if-ne v0, v2, :cond_5a
iget-object v0, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p1, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/o;->e:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/or;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->j(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
goto :goto_12
:cond_5a
move v0, v1
goto :goto_12
.end method