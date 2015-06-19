.class final Lcom/bbm/ui/activities/oq;
.super Lcom/bbm/d/b/o;
.source "GroupListItemsActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/j/r;Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 3
iput-object p2, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0, p1}, Lcom/bbm/d/b/o;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 8
const/4 v0, 0x1
check-cast p1, Lcom/bbm/g/y;
check-cast p2, Lcom/bbm/g/y;
iget-object v1, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v1
if-nez v1, :cond_27
iget-wide v1, p1, Lcom/bbm/g/y;->h:J
iget-wide v3, p2, Lcom/bbm/g/y;->h:J
cmp-long v1, v1, v3
if-lez v1, :cond_16
:goto_15
return v0
:cond_16
iget-wide v0, p1, Lcom/bbm/g/y;->h:J
iget-wide v2, p2, Lcom/bbm/g/y;->h:J
cmp-long v0, v0, v2
if-gez v0, :cond_20
const/4 v0, -0x1
goto :goto_15
:cond_20
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {p1, p2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/g/y;Lcom/bbm/g/y;)I
move-result v0
goto :goto_15
:cond_27
iget-object v1, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v1
if-ne v1, v0, :cond_36
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {p1, p2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/g/y;Lcom/bbm/g/y;)I
move-result v0
goto :goto_15
:cond_36
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_59
iget-object v0, p1, Lcom/bbm/g/y;->c:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/g/y;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_52
iget-object v0, p1, Lcom/bbm/g/y;->c:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/g/y;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
goto :goto_15
:cond_52
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {p1, p2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/g/y;Lcom/bbm/g/y;)I
move-result v0
goto :goto_15
:cond_59
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_7c
iget-object v0, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_75
iget-object v0, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
goto :goto_15
:cond_75
iget-object v0, p0, Lcom/bbm/ui/activities/oq;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {p1, p2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/g/y;Lcom/bbm/g/y;)I
move-result v0
goto :goto_15
:cond_7c
const/4 v0, 0x0
goto :goto_15
.end method