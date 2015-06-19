.class public Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupPictureCommentsActivity.java"
.field private F:I
.field private G:I
.field private H:Ljava/lang/String;
.field private I:Lcom/bbm/util/d/d;
.field private J:Z
.field private final K:Landroid/text/TextWatcher;
.field private final L:Lcom/bbm/j/k;
.field private final M:Landroid/view/View$OnTouchListener;
.field private final N:Lcom/bbm/j/k;
.field private final O:Lcom/bbm/ui/cj;
.field private final P:Lcom/bbm/ui/c/fq;
.field private final Q:Lcom/bbm/j/u;
.field private final R:Lcom/bbm/j/u;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field private e:Lcom/bbm/ui/slidingmenu/a;
.field private f:Lcom/bbm/ui/FooterActionBar;
.field private g:Landroid/widget/ImageView;
.field private h:Landroid/widget/ImageView;
.field private i:Landroid/widget/ImageView;
.field private j:Landroid/widget/ListView;
.field private k:Lcom/bbm/ui/activities/sg;
.field private l:Lcom/bbm/ui/SendEditText;
.field private m:Lcom/bbm/ui/EmoticonInputPanel;
.field private final n:Landroid/os/Handler;
.field private o:Lcom/bbm/g/af;
.field private p:Ljava/util/Timer;
.field private q:Ljava/util/TimerTask;
.field private r:Landroid/widget/TextView;
.field private s:Landroid/widget/TextView;
.field private t:Landroid/widget/TextView;
.field private u:Landroid/widget/TextView;
.field private v:Landroid/view/View;
.field private w:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e:Lcom/bbm/ui/slidingmenu/a;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->n:Landroid/os/Handler;
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->J:Z
new-instance v0, Lcom/bbm/ui/activities/rj;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rj;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->K:Landroid/text/TextWatcher;
new-instance v0, Lcom/bbm/ui/activities/rw;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rw;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->L:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/ry;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ry;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->M:Landroid/view/View$OnTouchListener;
new-instance v0, Lcom/bbm/ui/activities/rk;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rk;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->N:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/rl;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rl;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->O:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/rp;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rp;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->P:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/ui/activities/rs;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rs;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->Q:Lcom/bbm/j/u;
new-instance v0, Lcom/bbm/ui/activities/rt;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rt;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->R:Lcom/bbm/j/u;
return-void
.end method
.method static synthetic A(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 3
const-string v0, "simple text"
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->F:I
return p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/g/af;)Lcom/bbm/g/af;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/util/d/d;)Lcom/bbm/util/d/d;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->I:Lcom/bbm/util/d/d;
return-object p1
.end method
.method static a(Ljava/lang/String;)Ljava/io/File;
.registers 9
const/4 v1, 0x0
new-instance v2, Ljava/io/File;
invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ba
new-instance v0, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/share.jpg"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object v6, v0
:goto_33
:try_start_33
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
:try_end_3b
.catchall {:try_start_33 .. :try_end_3b} :catchall_88
.catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3b} :catch_5e
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_73
move-result-object v0
:try_start_3c
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
:try_end_44
.catchall {:try_start_3c .. :try_end_44} :catchall_9a
.catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_44} :catch_b0
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_a6
move-result-object v5
const-wide/16 v1, 0x0
:try_start_47
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
move-result-wide v3
invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
:try_end_4e
.catchall {:try_start_47 .. :try_end_4e} :catchall_9f
.catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4e} :catch_b5
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_ab
if-eqz v0, :cond_53
:try_start_50
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
:cond_53
if-eqz v5, :cond_58
invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
:cond_58
:goto_58
:try_end_58
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_59
return-object v6
:catch_59
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_58
:catch_5e
move-exception v0
move-object v2, v1
:try_start_60
:goto_60
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_63
.catchall {:try_start_60 .. :try_end_63} :catchall_a4
if-eqz v2, :cond_68
:try_start_65
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
:cond_68
if-eqz v1, :cond_58
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
:try_end_6d
.catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_6e
goto :goto_58
:catch_6e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_58
:catch_73
move-exception v0
move-object v2, v1
:goto_75
:try_start_75
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_78
.catchall {:try_start_75 .. :try_end_78} :catchall_a4
if-eqz v2, :cond_7d
:try_start_7a
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
:cond_7d
if-eqz v1, :cond_58
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
:try_end_82
.catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_83
goto :goto_58
:catch_83
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_58
:catchall_88
move-exception v0
move-object v2, v1
:goto_8a
if-eqz v2, :cond_8f
:try_start_8c
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
:cond_8f
if-eqz v1, :cond_94
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
:cond_94
:try_end_94
.catch Ljava/io/IOException; {:try_start_8c .. :try_end_94} :catch_95
:goto_94
throw v0
:catch_95
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_94
:catchall_9a
move-exception v2
move-object v7, v2
move-object v2, v0
move-object v0, v7
goto :goto_8a
:catchall_9f
move-exception v1
move-object v2, v0
move-object v0, v1
move-object v1, v5
goto :goto_8a
:catchall_a4
move-exception v0
goto :goto_8a
:catch_a6
move-exception v2
move-object v7, v2
move-object v2, v0
move-object v0, v7
goto :goto_75
:catch_ab
move-exception v1
move-object v2, v0
move-object v0, v1
move-object v1, v5
goto :goto_75
:catch_b0
move-exception v2
move-object v7, v2
move-object v2, v0
move-object v0, v7
goto :goto_60
:catch_b5
move-exception v1
move-object v2, v0
move-object v0, v1
move-object v1, v5
goto :goto_60
:cond_ba
move-object v6, v1
goto/16 :goto_33
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/ui/c/fm;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/c/fm;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->d()Z
move-result v0
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2a
:cond_17
const/4 v0, 0x1
:goto_18
if-nez v0, :cond_29
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->g:Landroid/widget/ImageView;
if-eqz p1, :cond_2c
move v0, v1
:goto_1f
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
if-eqz p1, :cond_2e
:goto_26
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
:cond_29
return-void
:cond_2a
move v0, v1
goto :goto_18
:cond_2c
move v0, v2
goto :goto_1f
:cond_2e
move v1, v2
goto :goto_26
.end method
.method private a(Lcom/bbm/ui/c/fm;)V
.registers 7
const/4 v4, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0203cf
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0423
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b()Z
move-result v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-boolean v0, v0, Lcom/bbm/g/af;->b:Z
if-eqz v0, :cond_8a
const v0, 0x7f0e0441
:goto_2c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-boolean v0, v0, Lcom/bbm/g/af;->b:Z
if-eqz v0, :cond_8e
const v0, 0x7f020415
:goto_39
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-direct {v3, v0, v2, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f020395
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0422
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0203e4
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e043f
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v1, v4, v4}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e:Lcom/bbm/ui/slidingmenu/a;
if-eqz v0, :cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/ro;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ro;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
:cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->P:Lcom/bbm/ui/c/fq;
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
return-void
:cond_8a
const v0, 0x7f0e03ff
goto :goto_2c
:cond_8e
const v0, 0x7f0202ff
goto :goto_39
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b()Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->w:I
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b:Ljava/lang/String;
return-object p1
.end method
.method private b()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {v0}, Lcom/bbm/ui/SendEditText;->length()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->J:Z
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->G:I
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->H:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/activities/sg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/util/d/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->I:Lcom/bbm/util/d/d;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/EmoticonInputPanel;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m:Lcom/bbm/ui/EmoticonInputPanel;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {v1}, Lcom/bbm/ui/SendEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
new-instance v3, Lcom/bbm/g/ch;
invoke-direct {v3, v1, v2}, Lcom/bbm/g/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic j(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o()V
return-void
.end method
.method static synthetic k(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->w:I
return v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->F:I
return v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->r:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->s:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
.registers 12
const-wide/16 v9, 0x3e8
const/4 v5, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-object v1, v1, Lcom/bbm/g/af;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-wide v3, v3, Lcom/bbm/g/af;->k:J
mul-long/2addr v3, v9
sub-long/2addr v1, v3
const-wide/32 v3, 0x5265c00
cmp-long v3, v1, v3
if-gtz v3, :cond_47
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e041e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-wide v3, v3, Lcom/bbm/g/af;->k:J
mul-long/2addr v3, v9
const/16 v5, 0x101
invoke-static {p0, v3, v4, v5}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v7
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
aput-object v0, v2, v8
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_46
return-object v0
:cond_47
const-wide/32 v3, 0xa4cb800
cmp-long v3, v1, v3
if-gtz v3, :cond_64
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e041f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v8, [Ljava/lang/Object;
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
aput-object v0, v2, v7
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_46
:cond_64
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e041d
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
new-array v4, v5, [Ljava/lang/Object;
long-to-double v1, v1
const-wide v5, 0x4194997000000000L
div-double/2addr v1, v5
invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D
move-result-wide v1
double-to-long v1, v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v4, v7
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
aput-object v0, v4, v8
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_46
.end method
.method static synthetic p(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->t:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-boolean v0, v0, Lcom/bbm/g/af;->d:Z
if-nez v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o:Lcom/bbm/g/af;
iget-boolean v0, v0, Lcom/bbm/g/af;->e:Z
if-eqz v0, :cond_2c
:cond_c
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/bb;
invoke-direct {v2, v1}, Lcom/bbm/g/bb;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/bc;
invoke-direct {v2, v1}, Lcom/bbm/g/bc;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_2c
return-void
.end method
.method static synthetic r(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->H:Ljava/lang/String;
return-object v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->i:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->u:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic v(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->n:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic w(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/j/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->R:Lcom/bbm/j/u;
return-object v0
.end method
.method static synthetic x(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->v:Landroid/view/View;
return-object v0
.end method
.method static synthetic y(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 5
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f020268
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const v2, 0x7f0e03dd
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e:Lcom/bbm/ui/slidingmenu/a;
return-void
.end method
.method static synthetic z(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->J:Z
return v0
.end method
.method protected final a()V
.registers 4
invoke-super {p0}, Lcom/bbm/ui/activities/md;->a()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
iget v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->G:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V
return-void
.end method
.method public final a(Z)V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/ci;
invoke-direct {v2, p1, v1}, Lcom/bbm/g/ci;-><init>(ZLjava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const v0, 0x7f0e058c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->finish()V
return-void
.end method
.method protected final e()V
.registers 1
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const/4 v2, 0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030031
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->setContentView(I)V
const v0, 0x7f0a01da
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/EmoticonPanelViewLayout;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v4, "pictureUri"
invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
if-eqz v1, :cond_3d
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_3d
move v1, v2
:goto_34
const-string v4, "GroupPictureCommentsActivity invoked without group picture uri"
invoke-static {p0, v1, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3f
:goto_3c
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3d
move v1, v3
goto :goto_34
:cond_3f
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v4, "pictureIndex"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->w:I
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v4, "pictureGroupSize"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->F:I
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->L:Lcom/bbm/j/k;
invoke-virtual {v1}, Lcom/bbm/j/k;->c()V
const v1, 0x7f0a01dd
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->M:Landroid/view/View$OnTouchListener;
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v1, 0x7f0a01e3
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->i:Landroid/widget/ImageView;
const v1, 0x7f0a00be
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/bbm/ui/FooterActionBar;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
new-instance v4, Lcom/bbm/ui/ActionBarItem;
const v5, 0x7f0203cf
const v6, 0x7f0e0657
invoke-direct {v4, p0, v5, v6}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v1, v4, v3}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->O:Lcom/bbm/ui/cj;
invoke-virtual {v1, v3}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const v1, 0x7f0a0136
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->g:Landroid/widget/ImageView;
const v1, 0x7f0a0570
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/bbm/ui/SendEditText;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
new-instance v1, Lcom/bbm/ui/activities/sg;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v4, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/g/am;->d(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v3
invoke-direct {v1, p0, v3}, Lcom/bbm/ui/activities/sg;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/j/r;)V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
const v1, 0x7f0a01e4
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ListView;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
const/4 v3, 0x2
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
invoke-virtual {v3}, Lcom/bbm/ui/activities/sg;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
new-instance v3, Lcom/bbm/ui/activities/rz;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/rz;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
new-instance v3, Lcom/bbm/ui/activities/sb;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/sb;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v1, Lcom/bbm/ui/activities/sc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/sc;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b010a
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
mul-int/lit8 v3, v3, 0x2
const v4, 0x4089999a
iget-object v5, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {v5}, Lcom/bbm/ui/SendEditText;->getLineHeight()I
move-result v5
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
add-int/2addr v3, v4
invoke-virtual {v1, v3}, Lcom/bbm/ui/SendEditText;->setMaxHeight(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
new-instance v3, Lcom/bbm/ui/activities/sd;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/sd;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {v1, v3}, Lcom/bbm/ui/SendEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->K:Landroid/text/TextWatcher;
invoke-virtual {v1, v3}, Lcom/bbm/ui/SendEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
const/16 v3, 0x100
invoke-static {v1, v3}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v1, 0x7f0a0164
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/bbm/ui/EmoticonInputPanel;
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m:Lcom/bbm/ui/EmoticonInputPanel;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setEmoticonInputPanel(Lcom/bbm/ui/EmoticonInputPanel;)V
new-instance v1, Lcom/bbm/ui/activities/se;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/se;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setLowerPanelVisibilityListener(Lcom/bbm/ui/bo;)V
const v0, 0x7f0a01df
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->r:Landroid/widget/TextView;
const v0, 0x7f0a01e2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->t:Landroid/widget/TextView;
const v0, 0x7f0a01e1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->s:Landroid/widget/TextView;
const v0, 0x7f0a01de
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->v:Landroid/view/View;
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v3, 0x3f80
invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v3, 0x5dc
invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->v:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
if-nez v0, :cond_1ad
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
:cond_1ad
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q:Ljava/util/TimerTask;
if-eqz v0, :cond_1b6
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q:Ljava/util/TimerTask;
invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
:cond_1b6
new-instance v0, Lcom/bbm/ui/activities/rq;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rq;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q:Ljava/util/TimerTask;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q:Ljava/util/TimerTask;
const-wide/16 v2, 0xfa0
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
const v0, 0x7f0a01e5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->u:Landroid/widget/TextView;
new-instance v0, Lcom/bbm/ui/activities/sf;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sf;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/slidingmenu/lib/a/b;)V
goto/16 :goto_3c
.end method
.method protected onDestroy()V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
:cond_d
iput-object v2, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p:Ljava/util/Timer;
iput-object v2, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q:Ljava/util/TimerTask;
iput-object v2, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e:Lcom/bbm/ui/slidingmenu/a;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->j:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {v0, v2}, Lcom/bbm/ui/SendEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->K:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l:Lcom/bbm/ui/SendEditText;
invoke-virtual {v0, v2}, Lcom/bbm/ui/SendEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/slidingmenu/lib/a/b;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->i:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->N:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->L:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->Q:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->R:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
invoke-virtual {v0}, Lcom/bbm/ui/activities/sg;->b()V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
new-instance v0, Lcom/bbm/ui/activities/rm;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/rm;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "picture"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->N:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->Q:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k:Lcom/bbm/ui/activities/sg;
invoke-virtual {v0}, Lcom/bbm/ui/activities/sg;->c()V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f:Lcom/bbm/ui/FooterActionBar;
const/4 v1, 0x0
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b()Z
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureCommentsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method