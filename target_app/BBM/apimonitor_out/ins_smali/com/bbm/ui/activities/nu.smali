.class final Lcom/bbm/ui/activities/nu;
.super Ljava/lang/Object;
.source "GroupEventsAddActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 8
const/4 v3, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
if-eqz p2, :cond_3f
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v2}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Date;->getHours()I
move-result v2
iput v2, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->i:I
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iput-boolean v1, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->k:Z
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
iget-object v2, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v2}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v2
invoke-static {v2, v3, v1, v1}, Lcom/bbm/util/bd;->a(Ljava/util/Date;ZII)Ljava/util/Date;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V
:goto_3e
return-void
:cond_3f
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v2}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/bd;->a(Ljava/util/Date;)I
move-result v2
iput v2, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->j:I
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v2, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget-boolean v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->k:Z
if-eqz v0, :cond_7c
move v0, v1
:goto_70
iget-object v4, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget v4, v4, Lcom/bbm/ui/activities/GroupEventsAddActivity;->j:I
invoke-static {v3, v1, v0, v4}, Lcom/bbm/util/bd;->a(Ljava/util/Date;ZII)Ljava/util/Date;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V
goto :goto_3e
:cond_7c
iget-object v0, p0, Lcom/bbm/ui/activities/nu;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;
iget v0, v0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->i:I
goto :goto_70
.end method