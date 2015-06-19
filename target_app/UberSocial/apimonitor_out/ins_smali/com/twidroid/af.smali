.class  Lcom/twidroid/af;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method private constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/UberSocialProfile$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/af;-><init>(Lcom/twidroid/UberSocialProfile;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/ad;)Lcom/twidroid/ae;
.registers 11
const v8, 0x7f0c0027
const/4 v2, 0x0
if-eqz p1, :cond_1c
:try_start_6
array-length v0, p1
if-lez v0, :cond_1c
const/4 v0, 0x0
aget-object v0, p1, v0
iget-object v0, v0, Lcom/twidroid/ad;->a:Lcom/twidroid/activity/r;
move-object v1, v0
:goto_f
if-nez v1, :cond_1e
new-instance v0, Lcom/twidroid/ae;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
const/4 v3, 0x0
const-string v4, ""
invoke-direct {v0, v1, v3, v4}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
:goto_1b
return-object v0
:cond_1c
move-object v1, v2
goto :goto_f
:cond_1e
invoke-static {v1}, Lcom/twidroid/c/f;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_28
invoke-virtual {v1}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v0
:cond_28
new-instance v3, Lcom/twidroid/net/a/c/c;
const/4 v4, 0x0
aget-object v4, p1, v4
iget-object v4, v4, Lcom/twidroid/ad;->c:Lcom/twidroid/model/twitter/c;
new-instance v5, Lcom/twidroid/net/oauth/a;
iget-object v6, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v6}, Lcom/twidroid/UberSocialProfile;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-direct {v5, v6}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V
iget-object v6, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v6}, Lcom/twidroid/UberSocialProfile;->ax(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/d/v;->al()Z
move-result v6
iget-object v7, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v7}, Lcom/twidroid/UberSocialProfile;->ay(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v7
invoke-virtual {v7}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v7
invoke-virtual {v7}, Lcom/twidroid/d/v;->am()Z
move-result v7
invoke-direct {v3, v4, v5, v6, v7}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V
iget-object v4, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v0, v5}, Lcom/twidroid/net/a/c/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
:try_end_62
.catch Lcom/ubermedia/net/a/a/a; {:try_start_6 .. :try_end_62} :catch_a8
.catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_62} :catch_d2
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_62} :catch_f0
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_109
const-wide/16 v3, 0x1388
:try_start_64
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_67
.catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_c6
.catch Lcom/ubermedia/net/a/a/a; {:try_start_64 .. :try_end_67} :catch_a8
.catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_67} :catch_d2
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_f0
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_109
:goto_67
const/4 v0, 0x0
:try_start_68
aget-object v0, p1, v0
iget-object v0, v0, Lcom/twidroid/ad;->b:Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/a;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v1}, Lcom/twidroid/activity/r;->a()Landroid/net/Uri;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const/4 v5, 0x0
aget-object v5, p1, v5
iget-object v5, v5, Lcom/twidroid/ad;->b:Lcom/twidroid/model/twitter/User;
invoke-virtual {v5}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v3, v4}, Lcom/twidroid/ui/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/ae;
iget-object v3, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
const/4 v4, 0x0
invoke-direct {v0, v3, v1, v4}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
:try_end_a6
.catch Lcom/ubermedia/net/a/a/a; {:try_start_68 .. :try_end_a6} :catch_a8
.catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_a6} :catch_d2
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_a6} :catch_f0
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a6} :catch_109
goto/16 :goto_1b
:catch_a8
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
const-string v3, "Upload Twitter Exception"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
new-instance v0, Lcom/twidroid/ae;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
iget-object v3, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v3, v8}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
goto/16 :goto_1b
:catch_c6
move-exception v0
:try_start_c7
const-string v3, "com.twidroid.activity.UberSocialProfile"
const-string v4, "Profile API wait -- sleep interrupted"
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_d1
.catch Lcom/ubermedia/net/a/a/a; {:try_start_c7 .. :try_end_d1} :catch_a8
.catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_d1} :catch_d2
.catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d1} :catch_f0
.catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d1} :catch_109
goto :goto_67
:catch_d2
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
const-string v3, "Upload FileNotFoundException Exception"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
new-instance v0, Lcom/twidroid/ae;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
iget-object v3, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v3, v8}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
goto/16 :goto_1b
:catch_f0
move-exception v0
move-object v1, v0
const-string v0, "com.twidroid.activity.UberSocialProfile"
const-string v3, "Upload IOException Exception"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
new-instance v0, Lcom/twidroid/ae;
iget-object v3, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v3, v2, v1}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
goto/16 :goto_1b
:catch_109
move-exception v0
move-object v1, v0
const-string v0, "com.twidroid.activity.UberSocialProfile"
const-string v3, "Upload Exception Exception"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
new-instance v0, Lcom/twidroid/ae;
iget-object v3, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v3, v2, v1}, Lcom/twidroid/ae;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
goto/16 :goto_1b
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/ad;
invoke-virtual {p0, p1}, Lcom/twidroid/af;->a([Lcom/twidroid/ad;)Lcom/twidroid/ae;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 5
const v3, 0x7f0c0179
const/4 v2, 0x1
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialProfile;->e(Z)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1, v3}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->f(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
sput-boolean v2, Lcom/twidroid/UberSocialProfile;->q:Z
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
new-instance v0, Lcom/twidroid/af$1;
invoke-direct {v0, p0}, Lcom/twidroid/af$1;-><init>(Lcom/twidroid/af;)V
invoke-virtual {v0}, Lcom/twidroid/af$1;->start()V
return-void
.end method
.method protected a(Lcom/twidroid/ae;)V
.registers 6
const/4 v1, 0x0
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->n()V
sput-boolean v1, Lcom/twidroid/UberSocialProfile;->q:Z
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
if-eqz p1, :cond_37
invoke-virtual {p1}, Lcom/twidroid/ae;->a()Lcom/twidroid/activity/r;
move-result-object v0
:goto_16
invoke-static {v1, v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;)V
invoke-virtual {p1}, Lcom/twidroid/ae;->c()Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c0167
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->d(Z)V
:goto_36
return-void
:cond_37
const/4 v0, 0x0
goto :goto_16
:cond_39
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {p1}, Lcom/twidroid/ae;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->h(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
const-string v0, "com.twidroid.activity.UberSocialProfile"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Show error dialog with message: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0, v3}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_36
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/ae;
invoke-virtual {p0, p1}, Lcom/twidroid/af;->a(Lcom/twidroid/ae;)V
return-void
.end method
.method protected b()V
.registers 4
const v2, 0x7f0c0037
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->g(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
const-string v0, "com.twidroid.activity.UberSocialProfile"
const-string v1, "::Upload Photo Cancelled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V
iget-object v0, p0, Lcom/twidroid/af;->a:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x1
invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method