.class public final Lcom/bbm/ui/activities/mb;
.super Lcom/bbm/j/u;
.source "GroupChatListActivity.java"
.field private final a:Ljava/lang/String;
.field private final b:Landroid/app/Activity;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/bbm/g/am;
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/mb;->d:Lcom/bbm/g/am;
iput-object p1, p0, Lcom/bbm/ui/activities/mb;->b:Landroid/app/Activity;
iput-object p2, p0, Lcom/bbm/ui/activities/mb;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/ui/activities/mb;->a:Ljava/lang/String;
return-void
.end method
.method protected final b()Z
.registers 7
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/mb;->d:Lcom/bbm/g/am;
invoke-virtual {v0}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v2
if-eqz v2, :cond_f
const/4 v0, 0x0
:goto_e
return v0
:cond_f
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v3, v0, Lcom/bbm/g/q;->d:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/activities/mb;->c:Ljava/lang/String;
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_19
iget-object v3, p0, Lcom/bbm/ui/activities/mb;->a:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/g/q;->i:Ljava/lang/String;
invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/mb;->b:Landroid/app/Activity;
iget-object v2, p0, Lcom/bbm/ui/activities/mb;->b:Landroid/app/Activity;
const v3, 0x7f0e03c5
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
move v0, v1
goto :goto_e
:cond_49
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "#"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/mb;->d:Lcom/bbm/g/am;
iget-object v2, v2, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v2, v2, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
new-instance v3, Lcom/bbm/ui/activities/mc;
iget-object v4, p0, Lcom/bbm/ui/activities/mb;->b:Landroid/app/Activity;
invoke-direct {v3, v4, v0}, Lcom/bbm/ui/activities/mc;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-interface {v2, v3}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/mb;->c:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/activities/mb;->a:Ljava/lang/String;
new-instance v5, Lcom/bbm/g/bi;
invoke-direct {v5, v3, v4}, Lcom/bbm/g/bi;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5, v0}, Lcom/bbm/g/bi;->a(Ljava/lang/String;)Lcom/bbm/g/bi;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget v2, v0, Lcom/bbm/c/c;->o:I
add-int/lit8 v2, v2, 0x1
iput v2, v0, Lcom/bbm/c/c;->o:I
move v0, v1
goto/16 :goto_e
.end method