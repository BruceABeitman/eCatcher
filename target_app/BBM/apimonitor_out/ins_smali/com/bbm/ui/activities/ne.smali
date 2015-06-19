.class final Lcom/bbm/ui/activities/ne;
.super Lcom/bbm/j/u;
.source "GroupEventDetailsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 11
const-wide/16 v8, 0x3e8
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->b(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v4, v4, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v4}, Lcom/bbm/g/am;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;
move-result-object v4
iget-object v0, v4, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_d5
new-instance v5, Ljava/util/Date;
iget-wide v0, v4, Lcom/bbm/g/s;->h:J
mul-long/2addr v0, v8
invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V
new-instance v1, Ljava/util/Date;
iget-wide v6, v4, Lcom/bbm/g/s;->b:J
mul-long/2addr v6, v8
invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V
iget-boolean v0, v4, Lcom/bbm/g/s;->a:Z
if-eqz v0, :cond_d7
new-instance v0, Ljava/util/Date;
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v6
const-wide/32 v8, 0x5265c00
sub-long/2addr v6, v8
invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V
:goto_3d
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->b:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iget-object v6, v4, Lcom/bbm/g/s;->i:Ljava/lang/String;
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5f
move v3, v2
:goto_56
:cond_56
if-eqz v3, :cond_cf
iget-object v0, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->c(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
:goto_5d
move v0, v2
:goto_5e
return v0
:cond_5f
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iget-object v6, v4, Lcom/bbm/g/s;->d:Ljava/lang/String;
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_79
move v3, v2
goto :goto_56
:cond_79
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->e:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v6, v6, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;
iget-object v7, v4, Lcom/bbm/g/s;->e:Ljava/lang/String;
iget-object v8, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v8, v8, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v6, v7, v8}, Lcom/bbm/g/am;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;
move-result-object v6
iget-object v6, v6, Lcom/bbm/g/b;->f:Ljava/lang/String;
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_a1
move v3, v2
goto :goto_56
:cond_a1
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z
move-result v1
iget-boolean v4, v4, Lcom/bbm/g/s;->a:Z
if-eq v1, v4, :cond_af
move v3, v2
goto :goto_56
:cond_af
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v1}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v1
invoke-virtual {v1, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_bf
move v3, v2
goto :goto_56
:cond_bf
iget-object v1, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->g:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v1}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_56
move v3, v2
goto :goto_56
:cond_cf
iget-object v0, p0, Lcom/bbm/ui/activities/ne;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->finish()V
goto :goto_5d
:cond_d5
move v0, v3
goto :goto_5e
:cond_d7
move-object v0, v1
goto/16 :goto_3d
.end method