.class public Lcom/twidroid/net/c/t;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "TwitterHandler"
.field private static final b:Lcom/twidroid/b/a/b;
.field private static final c:Lcom/twidroid/net/a/c/c;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
sput-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
sget-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
sput-object v0, Lcom/twidroid/net/c/t;->c:Lcom/twidroid/net/a/c/c;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/twidroid/net/a/c/c;
.registers 1
sget-object v0, Lcom/twidroid/net/c/t;->c:Lcom/twidroid/net/a/c/c;
return-object v0
.end method
.method static synthetic a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
.registers 6
invoke-static/range {p0 .. p5}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static varargs a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;ILjava/lang/String;[Ljava/lang/Runnable;)V
.registers 6
new-instance v0, Lcom/twidroid/net/c/t$3;
invoke-direct {v0, p1}, Lcom/twidroid/net/c/t$3;-><init>(Lcom/twidroid/net/c/a/f;)V
invoke-static {p0, v0, p4}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V
.registers 4
invoke-static {p0, p1, p2, p3}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/twidroid/net/c/t;->d(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const-string v0, "clipboard"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/ClipboardManager;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->p()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0c0153
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const-string v0, "tweet"
const-string v1, "copy_to_clipboard"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2
.end method
.method public static a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
.registers 8
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEND"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "android.intent.extra.SUBJECT"
const v2, 0x7f0c00d4
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->p()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7f0c00d3
invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "tweet"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "tweet_id"
iget-wide v2, p1, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "name"
iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "screenname"
iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "avatar"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "latitude"
iget-wide v2, p1, Lcom/twidroid/model/twitter/Tweet;->al:D
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;
const-string v1, "longitude"
iget-wide v2, p1, Lcom/twidroid/model/twitter/Tweet;->am:D
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;
const-string v1, "uri"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://twitter.com/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "text/plain"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v0, "tweet"
const-string v1, "share"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)V
.registers 14
const/4 v8, 0x0
const/4 v7, 0x0
const v0, 0x7f0c0170
new-array v1, v7, [Ljava/lang/Runnable;
invoke-static {p1, p4, v0, v8, v1}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;ILjava/lang/String;[Ljava/lang/Runnable;)V
:try_start_a
new-instance v6, Ljava/lang/Thread;
new-instance v0, Lcom/twidroid/net/c/t$9;
move-object v1, p2
move-object v2, p1
move-object v3, p4
move-object v4, p3
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/c/t$9;-><init>(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/model/twitter/c;Lcom/twidroid/UberSocialApplication;)V
invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v6}, Ljava/lang/Thread;->start()V
:try_end_1c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_a .. :try_end_1c} :catch_1d
:goto_1c
return-void
:catch_1d
move-exception v0
move-object v6, v0
const v2, 0x7f0c00f9
const v3, 0x7f0c0027
new-array v5, v7, [Ljava/lang/Runnable;
move-object v0, p1
move-object v1, p4
move-object v4, v8
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
const-string v0, "TwitterHandler"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Twitter Exception while sending"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v6}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c
.end method
.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
.registers 11
if-nez p2, :cond_3
:goto_2
return-void
:cond_3
sget-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_25
new-instance v0, Lcom/twidroid/net/c/t$8;
move-object v1, p1
move-object v3, p0
move-object v4, p1
move-object v5, p2
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lcom/twidroid/net/c/t$8;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {v0}, Lcom/twidroid/net/c/t$8;->show()V
:goto_1d
const-string v0, "tweet"
const-string v1, "retweet"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2
:cond_25
sget-object v0, Lcom/twidroid/net/c/t;->c:Lcom/twidroid/net/a/c/c;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-static {p1, p2, v0, p3}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_1d
.end method
.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 12
new-instance v6, Ljava/lang/Thread;
new-instance v0, Lcom/twidroid/net/c/t$1;
move-object v1, p2
move-object v2, p0
move-object v3, p1
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/c/t$1;-><init>(Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v6}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.registers 14
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/ui/themes/r;->h(Landroid/content/Context;)V
sget-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_24
new-instance v0, Lcom/twidroid/net/c/t$10;
move-object v1, p1
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
move-object v6, p4
move-object v7, p5
invoke-direct/range {v0 .. v7}, Lcom/twidroid/net/c/t$10;-><init>(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
invoke-virtual {v0}, Lcom/twidroid/net/c/t$10;->show()V
:goto_23
return-void
:cond_24
invoke-static/range {p0 .. p5}, Lcom/twidroid/net/c/t;->d(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
goto :goto_23
.end method
.method static synthetic b()Lcom/twidroid/b/a/b;
.registers 1
sget-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private static varargs b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
.registers 7
new-instance v0, Lcom/twidroid/net/c/t$5;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/twidroid/net/c/t$5;-><init>(Lcom/twidroid/net/c/a/f;IILjava/lang/String;)V
invoke-static {p0, v0, p5}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static varargs b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V
.registers 5
new-instance v0, Lcom/twidroid/net/c/t$13;
invoke-direct {v0, p1, p2}, Lcom/twidroid/net/c/t$13;-><init>(Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;)V
invoke-static {p0, v0, p3}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/twidroid/net/c/t;->g(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static varargs b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
.registers 6
if-eqz p1, :cond_5
:try_start_2
invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_5
array-length v1, p2
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_15
aget-object v2, p2, v0
invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_e
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_11
add-int/lit8 v0, v0, 0x1
goto :goto_7
:catch_11
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_15
return-void
.end method
.method public static b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 11
sget-object v0, Lcom/twidroid/net/c/t;->b:Lcom/twidroid/b/a/b;
new-instance v1, Ljava/lang/Long;
iget-wide v2, p2, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/Long;)Z
if-eqz p4, :cond_3a
invoke-virtual {p4}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
instance-of v2, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v2, :cond_16
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v0, Lcom/twidroid/model/twitter/Tweet;->x:J
iget-wide v4, p2, Lcom/twidroid/model/twitter/Tweet;->x:J
cmp-long v2, v2, v4
if-nez v2, :cond_16
if-eqz p1, :cond_3a
new-instance v1, Lcom/twidroid/net/c/t$6;
invoke-direct {v1, p4, v0, p1, p3}, Lcom/twidroid/net/c/t$6;-><init>(Lcom/twidroid/ui/a/am;Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_3a
return-void
.end method
.method public static b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.registers 13
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Runnable;
invoke-static {p1, p3, v0}, Lcom/twidroid/net/c/t;->f(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
new-instance v6, Ljava/lang/Thread;
new-instance v0, Lcom/twidroid/net/c/t$11;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p5
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/c/t$11;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;Lcom/twidroid/ui/a/am;)V
invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v6}, Ljava/lang/Thread;->start()V
const-string v0, "tweet"
const-string v1, "unfavorite"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic c(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/twidroid/net/c/t;->e(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
return-void
.end method
.method public static c(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 11
new-instance v0, Lcom/twidroid/net/c/t$7;
move-object v1, p2
move-object v2, p0
move-object v3, p1
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/c/t$7;-><init>(Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/t$7;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method static synthetic c(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.registers 6
invoke-static/range {p0 .. p5}, Lcom/twidroid/net/c/t;->d(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
return-void
.end method
.method private static varargs d(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, v0, p2}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static d(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.registers 8
const/4 v1, 0x0
new-array v0, v1, [Ljava/lang/Runnable;
invoke-static {p1, p3, v0}, Lcom/twidroid/net/c/t;->f(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
const v0, 0x7f0c014d
invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/net/c/t$12;
invoke-direct {v1, p2, p1, p3, p5}, Lcom/twidroid/net/c/t$12;-><init>(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
const-string v0, "tweet"
const-string v1, "favorite"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static varargs e(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 4
new-instance v0, Lcom/twidroid/net/c/t$2;
invoke-direct {v0, p1}, Lcom/twidroid/net/c/t$2;-><init>(Lcom/twidroid/net/c/a/f;)V
invoke-static {p0, v0, p2}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static varargs f(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 6
const/4 v0, -0x1
const/4 v1, 0x0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Runnable;
invoke-static {p0, p1, v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;ILjava/lang/String;[Ljava/lang/Runnable;)V
return-void
.end method
.method private static varargs g(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.registers 4
new-instance v0, Lcom/twidroid/net/c/t$4;
invoke-direct {v0, p1}, Lcom/twidroid/net/c/t$4;-><init>(Lcom/twidroid/net/c/a/f;)V
invoke-static {p0, v0, p2}, Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
return-void
.end method