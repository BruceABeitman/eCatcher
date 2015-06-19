.class  Lcom/twidroid/activity/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field  a:Lcom/twidroid/model/a;
.field final synthetic b:Lcom/twidroid/activity/MutedUsers;
.method public constructor <init>(Lcom/twidroid/activity/MutedUsers;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/a;
iget-wide v0, v0, Lcom/twidroid/model/a;->a:J
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/4 v8, 0x0
const/4 v6, 0x1
if-nez p2, :cond_4a
iget-object v0, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->e:Landroid/view/LayoutInflater;
const v1, 0x7f030051
invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v1, Lcom/twidroid/activity/m;
invoke-direct {v1}, Lcom/twidroid/activity/m;-><init>()V
const v0, 0x7f0900f4
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/m;->a:Landroid/widget/TextView;
const v0, 0x7f090040
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
iput-object v0, v1, Lcom/twidroid/activity/m;->c:Lcom/twidroid/ui/widgets/CachedImageView;
const v0, 0x7f09010e
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/m;->b:Landroid/widget/TextView;
iget-object v0, v1, Lcom/twidroid/activity/m;->b:Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v2, v2, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/d/v;->az()I
move-result v2
int-to-float v2, v2
invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_4a
invoke-virtual {p0, p1}, Lcom/twidroid/activity/l;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/a;
iput-object v0, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/m;
iget-object v1, v0, Lcom/twidroid/activity/m;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
iget-object v2, v2, Lcom/twidroid/model/a;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_start_61
iget-object v1, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v1, v1, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-le v1, v6, :cond_108
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, " by @"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
iget-object v2, v2, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
iget v3, v3, Lcom/twidroid/model/a;->f:I
invoke-virtual {v2, v3}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_99
.catch Ljava/lang/Exception; {:try_start_61 .. :try_end_99} :catch_10b
move-result-object v1
:goto_9a
iget-object v2, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
iget-wide v2, v2, Lcom/twidroid/model/a;->c:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
const-wide/32 v4, 0x1914456
cmp-long v2, v2, v4
if-gez v2, :cond_10f
iget-object v2, v0, Lcom/twidroid/activity/m;->b:Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
const v5, 0x7f0c01fc
invoke-virtual {v4, v5}, Lcom/twidroid/activity/MutedUsers;->e(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v6, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;
move-result-object v4
new-instance v5, Ljava/util/Date;
iget-object v6, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
iget-wide v6, v6, Lcom/twidroid/model/a;->c:J
invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_e7
iget-object v1, v0, Lcom/twidroid/activity/m;->c:Lcom/twidroid/ui/widgets/CachedImageView;
invoke-virtual {v1, v8}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
iget-object v1, v1, Lcom/twidroid/model/a;->b:Ljava/lang/String;
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_107
new-instance v1, Lcom/twidroid/a/d;
iget-object v0, v0, Lcom/twidroid/activity/m;->c:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v2, p0, Lcom/twidroid/activity/l;->a:Lcom/twidroid/model/a;
invoke-direct {v1, v0, v8, v2}, Lcom/twidroid/a/d;-><init>(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/a;)V
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Void;
invoke-virtual {v1, v0}, Lcom/twidroid/a/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_107
return-object p2
:try_start_108
:cond_108
const-string v1, ""
:try_end_10a
.catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10a} :catch_10b
goto :goto_9a
:catch_10b
move-exception v1
const-string v1, ""
goto :goto_9a
:cond_10f
iget-object v2, v0, Lcom/twidroid/activity/m;->b:Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/twidroid/activity/l;->b:Lcom/twidroid/activity/MutedUsers;
const v5, 0x7f0c02b0
invoke-virtual {v4, v5}, Lcom/twidroid/activity/MutedUsers;->e(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_e7
.end method