.class  Lcom/twidroid/activity/ab;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity;
.field private b:Lcom/twidroid/activity/aa;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/activity/ac;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/ab;->a([Lcom/twidroid/activity/ac;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/activity/ac;)Ljava/lang/String;
.registers 13
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v10
:try_start_14
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->h()V
const/4 v0, 0x0
aget-object v0, p1, v0
iget-object v0, v0, Lcom/twidroid/activity/ac;->e:Lcom/twidroid/activity/aa;
iput-object v0, p0, Lcom/twidroid/activity/ab;->b:Lcom/twidroid/activity/aa;
const-string v4, ""
const/4 v0, 0x0
aget-object v0, p1, v0
iget-object v0, v0, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
:try_end_32
.catchall {:try_start_14 .. :try_end_32} :catchall_237
.catch Lcom/ubermedia/net/a/a/a; {:try_start_14 .. :try_end_32} :catch_1b3
move-result v0
if-eqz v0, :cond_4e
:try_start_35
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-object v1, v1, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
:try_end_4d
.catchall {:try_start_35 .. :try_end_4d} :catchall_237
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_1a9
.catch Lcom/ubermedia/net/a/a/a; {:try_start_35 .. :try_end_4d} :catch_1b3
move-result-object v4
:try_start_4e
:cond_4e
:goto_4e
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-object v1, v1, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const/4 v2, 0x0
aget-object v2, p1, v2
iget-wide v2, v2, Lcom/twidroid/activity/ac;->c:J
const/4 v5, 0x0
aget-object v5, p1, v5
iget-object v5, v5, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const-string v6, "@"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
const/4 v6, 0x0
aget-object v6, p1, v6
iget v6, v6, Lcom/twidroid/activity/ac;->a:I
invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;JLjava/lang/String;ZI)V
const/4 v0, 0x0
aget-object v0, p1, v0
iget v0, v0, Lcom/twidroid/activity/ac;->a:I
const/4 v1, -0x1
if-eq v0, v1, :cond_ad
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
const/4 v2, 0x0
aget-object v2, p1, v2
iget v2, v2, Lcom/twidroid/activity/ac;->a:I
invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->b(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_ad
const-wide/32 v0, 0x1914456
const/4 v2, 0x0
aget-object v2, p1, v2
iget-boolean v2, v2, Lcom/twidroid/activity/ac;->f:Z
if-eqz v2, :cond_de
const/4 v2, 0x0
aget-object v2, p1, v2
iget-object v2, v2, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_de
iget-object v2, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
const/4 v3, 0x0
aget-object v3, p1, v3
iget-object v3, v3, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Z)Lcom/twidroid/model/twitter/User;
:cond_de
new-instance v2, Ljava/util/Date;
const/4 v3, 0x0
aget-object v3, p1, v3
iget-wide v3, v3, Lcom/twidroid/activity/ac;->c:J
invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
const/4 v3, 0x0
aget-object v3, p1, v3
iget-boolean v3, v3, Lcom/twidroid/activity/ac;->d:Z
if-eqz v3, :cond_180
const/4 v3, 0x0
aget-object v3, p1, v3
iget-wide v3, v3, Lcom/twidroid/activity/ac;->c:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v3, v5
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
cmp-long v0, v3, v0
if-gez v0, :cond_1dc
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x0
aget-object v4, p1, v4
iget-object v4, v4, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v5, 0x7f0c01f3
invoke-virtual {v4, v5}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x1
const/4 v5, 0x1
invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v4, 0x7f0c01f4
invoke-virtual {v3, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "@@"
const-string v4, "@"
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, 0x0
const-wide/16 v6, 0x0
const-wide/16 v8, 0x0
invoke-virtual/range {v0 .. v9}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;ZDDJ)Lcom/twidroid/model/twitter/Tweet;
:cond_180
:goto_180
const-string v0, "OK"
:try_end_182
.catchall {:try_start_4e .. :try_end_182} :catchall_237
.catch Lcom/ubermedia/net/a/a/a; {:try_start_4e .. :try_end_182} :catch_1b3
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2, v10}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v10}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
:goto_1a8
return-object v0
:catch_1a9
move-exception v0
:try_start_1aa
const-string v1, "UberSocialBaseActivity"
const-string v2, "cant get user for blocking"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1b1
.catchall {:try_start_1aa .. :try_end_1b1} :catchall_237
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1aa .. :try_end_1b1} :catch_1b3
goto/16 :goto_4e
:catch_1b3
move-exception v0
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2, v10}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v10}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
goto :goto_1a8
:try_start_1dc
:cond_1dc
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x0
aget-object v3, p1, v3
iget-object v3, v3, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v4, 0x7f0c01f2
invoke-virtual {v3, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "@@"
const-string v4, "@"
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, 0x0
const-wide/16 v6, 0x0
const-wide/16 v8, 0x0
invoke-virtual/range {v0 .. v9}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;ZDDJ)Lcom/twidroid/model/twitter/Tweet;
:try_end_235
.catchall {:try_start_1dc .. :try_end_235} :catchall_237
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1dc .. :try_end_235} :catch_1b3
goto/16 :goto_180
:catchall_237
move-exception v0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2, v10}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v10}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
throw v0
.end method
.method protected a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
new-instance v0, Lcom/twidroid/activity/ab$1;
invoke-direct {v0, p0}, Lcom/twidroid/activity/ab$1;-><init>(Lcom/twidroid/activity/ab;)V
invoke-virtual {v0}, Lcom/twidroid/activity/ab$1;->start()V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/ab;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->e(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
new-instance v1, Landroid/content/Intent;
sget-object v2, Lcom/twidroid/fragments/e/g;->H:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->sendBroadcast(Landroid/content/Intent;)V
if-eqz p1, :cond_49
const-string v0, "UberSocialBaseActivity"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->b:Lcom/twidroid/activity/aa;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/twidroid/activity/ab;->b:Lcom/twidroid/activity/aa;
invoke-interface {v0}, Lcom/twidroid/activity/aa;->a()V
:goto_43
:cond_43
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v0, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->d(Z)V
return-void
:cond_49
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v2, 0x7f0c0028
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-static {v0, v3}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_43
.end method
.method protected b()V
.registers 3
const-string v0, "UberSocialBaseActivity"
const-string v1, "::FlagAbuseTask Cancelled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/ab;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const/16 v1, 0x187
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method