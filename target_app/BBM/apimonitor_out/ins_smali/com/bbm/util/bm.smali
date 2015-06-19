.class public final Lcom/bbm/util/bm;
.super Ljava/lang/Object;
.source "GroupsUtil.java"
.method public static a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;
.registers 3
iget-boolean v0, p1, Lcom/bbm/g/q;->b:Z
if-eqz v0, :cond_c
const v0, 0x7f0e03c6
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p1, Lcom/bbm/g/q;->i:Ljava/lang/String;
goto :goto_b
.end method