.class public Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ChannelPostPhotoGalleryActivity.java"
.field  a:Lcom/bbm/ui/FooterActionBar;
.field  b:Landroid/widget/ImageView;
.field  c:Landroid/os/Handler;
.field private d:Ljava/util/Timer;
.field private e:[B
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Lcom/bbm/ui/ActionBarItem;
.field private k:Z
.field private l:Lcom/bbm/ui/cj;
.field private final m:Lcom/bbm/ui/c/fq;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->c:Landroid/os/Handler;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k:Z
new-instance v0, Lcom/bbm/ui/activities/dl;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dl;-><init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->m:Lcom/bbm/ui/c/fq;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;I)V
.registers 5
const/4 v1, 0x1
packed-switch p1, :pswitch_data_44
:pswitch_4
:goto_4
return-void
:pswitch_5
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->i:Ljava/lang/String;
invoke-static {v0, p0, v1}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
goto :goto_4
:pswitch_1d
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/SetAsActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "extra_image_path"
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_4
:pswitch_38
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f()V
goto :goto_4
nop
:pswitch_data_44
.packed-switch 0x7f0a0049
:pswitch_5
:pswitch_1d
:pswitch_4
:pswitch_38
.end packed-switch
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;Lcom/bbm/ui/c/fm;)V
.registers 11
const/4 v8, 0x0
const/4 v7, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0049
const v3, 0x7f020277
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e0639
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f0a004a
const v4, 0x7f02027b
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v5, 0x7f0e065d
invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v3, v4, v5, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
const v4, 0x7f0a004c
const v5, 0x7f02027c
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
const v6, 0x7f0e068e
invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
if-nez v4, :cond_56
invoke-virtual {v1, v8}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
invoke-virtual {v2, v8}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
invoke-virtual {v3, v8}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
:cond_56
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v7, v7}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->m:Lcom/bbm/ui/c/fq;
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;[B)[B
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
return-object p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)[B
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Lcom/bbm/ui/ActionBarItem;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->j:Lcom/bbm/ui/ActionBarItem;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k:Z
return v0
.end method
.method private f()V
.registers 6
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/bbm/util/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;
move-result-object v3
:try_start_15
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_54
const-string v0, "android.intent.action.SEND"
invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "android.intent.extra.STREAM"
invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
invoke-static {v2, v0}, Lcom/bbm/util/b/h;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_3e
const-string v0, "image/jpeg"
:cond_3e
invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e043f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V
:goto_53
return-void
:catch_54
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V
goto :goto_53
.end method
.method static synthetic f(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f()V
return-void
.end method
.method static synthetic g(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->k:Z
return v0
.end method
.method private k()Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
if-nez v0, :cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
const-string v1, "file:///"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
const/16 v2, 0x2f
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/bbm/util/ac;->a([BLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
:cond_28
:goto_28
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
return-object v0
:cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
const-string v1, "file:///data/data/com.bbm"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->i:Ljava/lang/String;
if-eqz v0, :cond_75
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->i:Ljava/lang/String;
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_49
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x2e
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/bbm/util/ac;->a([BLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
goto :goto_28
:cond_75
const-string v0, "jpg"
goto :goto_49
:cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
goto :goto_28
.end method
.method final b()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d:Ljava/util/Timer;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
:cond_e
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d:Ljava/util/Timer;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d:Ljava/util/Timer;
new-instance v1, Lcom/bbm/ui/activities/dm;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/dm;-><init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030018
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v0, "imageUri"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
const-string v0, "postId"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->h:Ljava/lang/String;
const-string v0, "mimeType"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->i:Ljava/lang/String;
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
new-instance v0, Lcom/bbm/ui/ActionBarItem;
const v1, 0x7f02027c
const v4, 0x7f0e068e
invoke-direct {v0, p0, v1, v4}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->j:Lcom/bbm/ui/ActionBarItem;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->j:Lcom/bbm/ui/ActionBarItem;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
if-eqz v0, :cond_bf
move v0, v2
:goto_50
invoke-virtual {v1, v0}, Lcom/bbm/ui/ActionBarItem;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->j:Lcom/bbm/ui/ActionBarItem;
const v4, 0x7f0a004c
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
new-instance v0, Lcom/bbm/ui/activities/dk;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dk;-><init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->l:Lcom/bbm/ui/cj;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->l:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const v0, 0x7f0a0136
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b:Landroid/widget/ImageView;
const v0, 0x7f0a0139
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/TouchImageView;
new-instance v1, Lcom/bbm/ui/activities/di;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/di;-><init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
if-nez v1, :cond_c1
const v1, 0x7f0a0138
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ProgressBar;
invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v4, Lcom/bbm/ui/activities/dj;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, p0, v5, v0, v1}, Lcom/bbm/ui/activities/dj;-><init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;Landroid/content/Context;Lcom/bbm/ui/TouchImageView;Landroid/widget/ProgressBar;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
if-eqz v1, :cond_b2
new-array v1, v2, [Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->f:Ljava/lang/String;
aput-object v2, v1, v3
invoke-virtual {v4, v1}, Lcom/bbm/util/ez;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:cond_b2
:goto_b2
invoke-virtual {v0, v3}, Lcom/bbm/ui/TouchImageView;->setLimitedLengthAnimation(Z)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V
iput-boolean v3, p0, Lcom/bbm/ui/activities/ev;->y:Z
const-string v1, " - Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_bf
move v0, v3
goto :goto_50
:cond_c1
new-instance v1, Lcom/bbm/d/fd;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e:[B
invoke-direct {v1, v2, v4}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_b2
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
if-eqz v0, :cond_1d
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_1d
const-string v1, " - Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b()V
:cond_e
const-string v1, " - Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method