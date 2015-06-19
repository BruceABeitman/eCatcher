.class public Lcom/bbm/ui/e/s;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private static l:Lcom/bbm/d/fg;
.field  a:Lcom/bbm/ui/ObservingImageView;
.field  b:Landroid/widget/TextView;
.field  c:Landroid/widget/TextView;
.field  d:Landroid/widget/ProgressBar;
.field  e:Landroid/widget/Button;
.field  f:Landroid/widget/Button;
.field  g:Landroid/widget/Button;
.field  h:Landroid/widget/ImageButton;
.field  i:Landroid/view/View$OnTouchListener;
.field private final j:Landroid/content/Context;
.field private k:Landroid/widget/TextView;
.field private m:Lcom/bbm/d/fg;
.field private final n:Lcom/bbm/ui/e/bi;
.field private final o:Lcom/bbm/ui/e/bh;
.field private final p:Lcom/bbm/d/a;
.field private q:Lcom/bbm/ui/FileTransferMessageView;
.field private final r:Lcom/bbm/util/b/i;
.field private final s:Lcom/bbm/ui/activities/xo;
.field private t:Ljava/lang/String;
.field private u:Ljava/io/File;
.field private v:Landroid/app/Dialog;
.field private w:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
sput-object v0, Lcom/bbm/ui/e/s;->l:Lcom/bbm/d/fg;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/util/b/i;Lcom/bbm/ui/e/bh;Lcom/bbm/ui/e/bi;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/ui/e/s;->l:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/s;->m:Lcom/bbm/d/fg;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/s;->i:Landroid/view/View$OnTouchListener;
iput-object p1, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iput-object p4, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
iput-object p3, p0, Lcom/bbm/ui/e/s;->s:Lcom/bbm/ui/activities/xo;
iput-object p6, p0, Lcom/bbm/ui/e/s;->n:Lcom/bbm/ui/e/bi;
iput-object p5, p0, Lcom/bbm/ui/e/s;->o:Lcom/bbm/ui/e/bh;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/s;Landroid/app/Dialog;)Landroid/app/Dialog;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/s;->v:Landroid/app/Dialog;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->m:Lcom/bbm/d/fg;
return-object v0
.end method
.method private static a(Lcom/bbm/d/ex;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/d/ex;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_14
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/bbm/d/ex;->h:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
iget-object v0, p0, Lcom/bbm/d/ex;->j:Ljava/lang/String;
goto :goto_13
.end method
.method private a(Lcom/bbm/d/fg;)V
.registers 12
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/s;->u:Ljava/io/File;
invoke-static {v0}, Lcom/bbm/util/g/d;->a(Ljava/io/File;)Lcom/bbm/util/g/a;
move-result-object v4
:try_start_8
iget-object v0, v4, Lcom/bbm/util/g/a;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v5
invoke-virtual {v5}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_159
invoke-virtual {v5}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_159
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_159
const-class v0, Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v6, 0x7f0a04a8
invoke-virtual {v1, v6}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v6, 0x7f0a04a4
invoke-virtual {v1, v6}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v6
const-class v1, Landroid/widget/TextView;
iget-object v7, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v8, 0x7f0a04a0
invoke-virtual {v7, v8}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v4}, Lcom/bbm/util/g/a;->b()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v7, 0x0
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/e/s;->c:Landroid/widget/TextView;
const/16 v7, 0x8
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v7, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
const v8, 0x7f0e06ed
invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v7}, Lcom/bbm/ui/FileTransferMessageView;->setText(Ljava/lang/String;)V
const-class v1, Landroid/widget/TextView;
iget-object v7, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v8, 0x7f0a049f
invoke-virtual {v7, v8}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const-string v7, ""
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v7, 0x8
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->s()Lcom/bbm/j/w;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_9a
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1c9
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fn;
iget-object v8, v1, Lcom/bbm/d/fn;->j:Ljava/lang/String;
iget-object v9, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
invoke-virtual {v5}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v9, v1}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9a
:goto_bc
iget-object v7, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v8, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
invoke-virtual {v5}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v8, v1}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v7, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v1
sget-object v7, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v1, v7, :cond_13a
if-nez v2, :cond_13a
new-instance v1, Lcom/bbm/ui/e/ac;
invoke-direct {v1, p0, v5}, Lcom/bbm/ui/e/ac;-><init>(Lcom/bbm/ui/e/s;Lcom/google/b/a/l;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
const v1, 0x7f0e04b1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I
move-result v0
invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V
:goto_f3
:cond_f3
:try_end_f3
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f3} :catch_150
invoke-static {v4}, Lcom/bbm/util/g/d;->b(Lcom/a/a/d;)Z
move-result v0
if-eqz v0, :cond_139
:try_start_f9
iget-object v0, p0, Lcom/bbm/ui/e/s;->u:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v0
if-nez v0, :cond_134
invoke-static {v4}, Lcom/bbm/util/g/d;->a(Lcom/a/a/d;)Lcom/google/b/a/l;
move-result-object v4
invoke-virtual {v4}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_134
new-instance v1, Lcom/bbm/d/fd;
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v4}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
invoke-direct {v1, v5, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0, v2, v1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
const-string v0, "Adding vCard image to cache"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v1
:cond_134
iget-object v1, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
:cond_139
:goto_139
:try_end_139
.catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_139} :catch_1bf
return-void
:cond_13a
const/4 v1, 0x0
:try_start_13b
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
const v1, 0x7f0e028d
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I
move-result v0
invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V
:try_end_14f
.catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14f} :catch_150
goto :goto_f3
:catch_150
move-exception v0
const-string v0, "Not a bbm contact card"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_f3
:cond_159
:try_start_159
invoke-virtual {v5}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_f3
invoke-virtual {v5}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f3
iget-boolean v0, p1, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_f3
const-class v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v2, 0x7f0a04a0
invoke-virtual {v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v4}, Lcom/bbm/util/g/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
const v2, 0x7f0e06ed
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v1, 0x7f0e06ec
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
const-class v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v2, 0x7f0a049f
invoke-virtual {v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:try_end_1bd
.catch Ljava/lang/Exception; {:try_start_159 .. :try_end_1bd} :catch_150
goto/16 :goto_f3
:catch_1bf
move-exception v0
const-string v0, "Error getting image from vCard"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_139
:cond_1c9
move v2, v3
goto/16 :goto_bc
.end method
.method static synthetic a(Lcom/bbm/ui/e/s;Lcom/bbm/d/ex;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/d/ex;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/s;Ljava/io/File;Ljava/lang/String;)V
.registers 6
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "android.intent.action.VIEW"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
const-string v2, "com.bbm.fileprovider"
invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
:try_start_19
iget-object v1, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_1e
.catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1e} :catch_1f
:goto_1e
return-void
:catch_1f
move-exception v0
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0351
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_1e
.end method
.method private static a(Ljava/io/File;)V
.registers 5
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_6
if-ge v0, v2, :cond_10
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->delete()Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_10
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
return-object v0
.end method
.method private b(Lcom/bbm/d/ex;)V
.registers 8
invoke-static {p1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/d/ex;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/io/File;
iget-object v0, p1, Lcom/bbm/d/ex;->h:Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_16
:cond_15
:goto_15
return-void
:cond_16
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_8f
new-instance v3, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "/tmp/playback"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
invoke-static {v3}, Lcom/bbm/ui/e/s;->a(Ljava/io/File;)V
new-instance v0, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/d/ex;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_68
invoke-static {v1, v0}, Lcom/bbm/util/bj;->a(Ljava/io/File;Ljava/io/File;)V
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_85
const/4 v1, 0x1
const/4 v3, 0x0
:try_start_6d
invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z
:goto_70
:try_end_70
.catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_8d
iput-object v0, p0, Lcom/bbm/ui/e/s;->u:Ljava/io/File;
if-eqz v2, :cond_15
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_15
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/e/s;->t:Ljava/lang/String;
goto :goto_15
:catch_85
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
:goto_89
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_70
:catch_8d
move-exception v1
goto :goto_89
:cond_8f
move-object v0, v1
goto :goto_70
.end method
.method static synthetic c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->t:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/s;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->u:Ljava/io/File;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/e/s;)Lcom/bbm/ui/e/bi;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->n:Lcom/bbm/ui/e/bi;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/e/s;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/e/s;->w:Z
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/e/s;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->v:Landroid/app/Dialog;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/e/s;)Lcom/bbm/ui/e/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/s;->o:Lcom/bbm/ui/e/bh;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300dd
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/s;->k:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/s;->k:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/s;->i:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a049c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
new-instance v0, Lcom/bbm/ui/e/t;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/t;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v0}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
new-instance v2, Lcom/bbm/ui/e/v;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/v;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
const v0, 0x7f0a049f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/s;->b:Landroid/widget/TextView;
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/s;->c:Landroid/widget/TextView;
const v0, 0x7f0a04a3
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/e/s;->d:Landroid/widget/ProgressBar;
const v0, 0x7f0a04a5
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/s;->e:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/s;->e:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/w;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/w;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a04a6
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/s;->f:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/s;->f:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/z;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/z;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a04a7
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/s;->g:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/s;->g:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/aa;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/aa;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a04a2
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/e/s;->h:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/e/s;->h:Landroid/widget/ImageButton;
new-instance v2, Lcom/bbm/ui/e/ab;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/ab;-><init>(Lcom/bbm/ui/e/s;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/FileTransferMessageView;
iput-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
return-object v0
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 16
const v12, 0x7f0e035c
const v11, 0x7f0e035b
const-wide/16 v5, -0x1
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->a()V
iget-object v0, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/ui/e/s;->t:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/s;->u:Ljava/io/File;
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/s;->m:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v3, p0, Lcom/bbm/ui/e/s;->s:Lcom/bbm/ui/activities/xo;
invoke-static {v0, v3, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
sget-object v0, Lcom/bbm/ui/e/ad;->a:[I
iget-object v3, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v3, v3, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v3}, Lcom/bbm/d/fk;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_3f4
:goto_36
:cond_36
return-void
:pswitch_37
iget-object v3, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v4, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v0, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_36
iput-boolean v1, p0, Lcom/bbm/ui/e/s;->w:Z
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v7, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v0, v7}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v7
iget-object v0, v7, Lcom/bbm/d/fs;->o:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_ad
iget-object v0, v7, Lcom/bbm/d/fs;->o:Ljava/lang/String;
:goto_5d
iget-object v8, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v8, v4}, Lcom/bbm/ui/FileTransferMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v8, v3, Lcom/bbm/d/fg;->s:J
invoke-virtual {v4, v8, v9}, Lcom/bbm/ui/FileTransferMessageView;->setDateText(J)V
iget-object v3, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v4, v7, Lcom/bbm/d/fs;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/ui/FileTransferMessageView;->setDescriptionText(Ljava/lang/String;)V
iget-object v3, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v3, v0}, Lcom/bbm/ui/FileTransferMessageView;->setFilenameText(Ljava/lang/String;)V
iget-object v3, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-static {v0, v7}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Lcom/bbm/d/fs;)Ljava/lang/String;
move-result-object v4
iget-boolean v0, v7, Lcom/bbm/d/fs;->m:Z
if-nez v0, :cond_b9
move v0, v1
:goto_86
invoke-virtual {v3, v4, v0}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
if-eqz v0, :cond_96
iget-object v0, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
iget-object v3, v7, Lcom/bbm/d/fs;->k:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3, v4}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
:cond_96
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v3, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
if-ne v0, v3, :cond_bb
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
new-instance v1, Ljava/io/File;
iget-object v2, v7, Lcom/bbm/d/fs;->k:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->setRequestHigherQualityMessageState(J)V
goto :goto_36
:cond_ad
new-instance v0, Ljava/io/File;
iget-object v8, v7, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_5d
:cond_b9
move v0, v2
goto :goto_86
:cond_bb
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v3, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v3, :cond_140
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v3, Lcom/bbm/d/ft;->r:Lcom/bbm/d/ft;
if-ne v0, v3, :cond_e7
iget-boolean v0, v7, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_135
iget-wide v3, v7, Lcom/bbm/d/fs;->n:J
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v8, 0x7f0e035e
iget-boolean v7, v7, Lcom/bbm/d/fs;->m:Z
if-nez v7, :cond_e5
:goto_d6
invoke-virtual {v0, v8, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
move-wide v0, v3
:goto_da
cmp-long v2, v0, v5
if-nez v2, :cond_139
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
goto/16 :goto_36
:cond_e5
move v1, v2
goto :goto_d6
:cond_e7
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v3, Lcom/bbm/d/ft;->d:Lcom/bbm/d/ft;
if-ne v0, v3, :cond_fa
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v3, v7, Lcom/bbm/d/fs;->m:Z
if-nez v3, :cond_f8
:goto_f3
invoke-virtual {v0, v12, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
move-wide v0, v5
goto :goto_da
:cond_f8
move v1, v2
goto :goto_f3
:cond_fa
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v3, Lcom/bbm/d/ft;->e:Lcom/bbm/d/ft;
if-eq v0, v3, :cond_106
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v3, Lcom/bbm/d/ft;->f:Lcom/bbm/d/ft;
if-ne v0, v3, :cond_113
:cond_106
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v3, v7, Lcom/bbm/d/fs;->m:Z
if-nez v3, :cond_111
:goto_10c
invoke-virtual {v0, v11, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
move-wide v0, v5
goto :goto_da
:cond_111
move v1, v2
goto :goto_10c
:cond_113
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v3, Lcom/bbm/d/ft;->m:Lcom/bbm/d/ft;
if-ne v0, v3, :cond_129
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v3, 0x7f0e0355
iget-boolean v4, v7, Lcom/bbm/d/fs;->m:Z
if-nez v4, :cond_127
:goto_122
invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
move-wide v0, v5
goto :goto_da
:cond_127
move v1, v2
goto :goto_122
:cond_129
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v3, 0x7f0e0354
iget-boolean v4, v7, Lcom/bbm/d/fs;->m:Z
if-nez v4, :cond_137
:goto_132
invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
:cond_135
move-wide v0, v5
goto :goto_da
:cond_137
move v1, v2
goto :goto_132
:cond_139
iget-object v2, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v2, v0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState(J)V
goto/16 :goto_36
:cond_140
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v3, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v3, :cond_160
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v3, 0x7f0e0360
iget-boolean v4, v7, Lcom/bbm/d/fs;->m:Z
if-nez v4, :cond_150
move v2, v1
:cond_150
invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v2, v7, Lcom/bbm/d/fs;->b:J
long-to-int v2, v2
iget-wide v3, v7, Lcom/bbm/d/fs;->p:J
long-to-int v3, v3
invoke-virtual {v0, v2, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setProgressingState(IIZ)V
goto/16 :goto_36
:cond_160
const-string v0, "Unknown status!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_36
:pswitch_169
iget-object v3, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v0, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_36
iput-boolean v1, p0, Lcom/bbm/ui/e/s;->w:Z
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v4, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v7
iget-object v0, v7, Lcom/bbm/d/fs;->o:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f1
iget-object v0, v7, Lcom/bbm/d/fs;->o:Ljava/lang/String;
:goto_187
iget-object v4, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v8, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v4, v8}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v8, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v8, v4}, Lcom/bbm/ui/FileTransferMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v8, v3, Lcom/bbm/d/fg;->s:J
invoke-virtual {v4, v8, v9}, Lcom/bbm/ui/FileTransferMessageView;->setDateText(J)V
iget-object v4, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v8, v7, Lcom/bbm/d/fs;->c:Ljava/lang/String;
invoke-virtual {v4, v8}, Lcom/bbm/ui/FileTransferMessageView;->setDescriptionText(Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v4, v0}, Lcom/bbm/ui/FileTransferMessageView;->setFilenameText(Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-static {v0, v7}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Lcom/bbm/d/fs;)Ljava/lang/String;
move-result-object v8
iget-boolean v0, v7, Lcom/bbm/d/fs;->m:Z
if-nez v0, :cond_1fd
move v0, v1
:goto_1b8
invoke-virtual {v4, v8, v0}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
if-eqz v0, :cond_1e0
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-static {v4, v8, v0}, Lcom/d/a/c/a;->a(Landroid/widget/ImageView;II)Lcom/d/a/b/a/f;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/s;->r:Lcom/bbm/util/b/i;
iget-object v8, v7, Lcom/bbm/d/fs;->i:Ljava/lang/String;
iget-object v9, p0, Lcom/bbm/ui/e/s;->a:Lcom/bbm/ui/ObservingImageView;
iget v10, v0, Lcom/d/a/b/a/f;->a:I
iget v0, v0, Lcom/d/a/b/a/f;->b:I
invoke-virtual {v4, v8, v9, v10, v0}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V
:cond_1e0
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v4, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
if-ne v0, v4, :cond_1ff
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v1, v3, Lcom/bbm/d/fg;->j:Z
iget-wide v3, v7, Lcom/bbm/d/fs;->n:J
invoke-virtual {v0, v1, v3, v4, v2}, Lcom/bbm/ui/FileTransferMessageView;->setRequestSendState(ZJZ)V
goto/16 :goto_36
:cond_1f1
new-instance v0, Ljava/io/File;
iget-object v4, v7, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_187
:cond_1fd
move v0, v2
goto :goto_1b8
:cond_1ff
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_21e
iget-boolean v0, v7, Lcom/bbm/d/fs;->f:Z
if-eqz v0, :cond_21e
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v3, v7, Lcom/bbm/d/fs;->n:J
invoke-virtual {v0, v3, v4}, Lcom/bbm/ui/FileTransferMessageView;->setHigherQualityRequestReceivedState(J)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v3, 0x7f0e0353
iget-boolean v4, v7, Lcom/bbm/d/fs;->m:Z
if-nez v4, :cond_21c
:goto_217
invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
goto/16 :goto_36
:cond_21c
move v1, v2
goto :goto_217
:cond_21e
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_23a
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v4, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
if-ne v0, v4, :cond_23a
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
new-instance v1, Ljava/io/File;
iget-object v2, v7, Lcom/bbm/d/fs;->k:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->setRequestHigherQualityState(J)V
goto/16 :goto_36
:cond_23a
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v4, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v4, :cond_2ee
iget-boolean v0, v7, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_2d0
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_252
iget-object v0, v7, Lcom/bbm/d/fs;->k:Ljava/lang/String;
iget-object v4, v7, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2b6
:cond_252
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_284
new-instance v0, Ljava/io/File;
iget-object v3, v7, Lcom/bbm/d/fs;->k:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v3
iget-boolean v0, v7, Lcom/bbm/d/fs;->e:Z
if-eqz v0, :cond_26a
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setHdRequestButtonVisibility(Z)V
:goto_26a
:cond_26a
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v8, Lcom/bbm/d/ft;->d:Lcom/bbm/d/ft;
if-ne v0, v8, :cond_289
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v7, v7, Lcom/bbm/d/fs;->m:Z
if-nez v7, :cond_287
:goto_276
invoke-virtual {v0, v12, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
:goto_279
:cond_279
cmp-long v0, v3, v5
if-nez v0, :cond_2e7
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
goto/16 :goto_36
:cond_284
iget-wide v3, v7, Lcom/bbm/d/fs;->n:J
goto :goto_26a
:cond_287
move v1, v2
goto :goto_276
:cond_289
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v8, Lcom/bbm/d/ft;->g:Lcom/bbm/d/ft;
if-ne v0, v8, :cond_29e
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v8, 0x7f0e035d
iget-boolean v7, v7, Lcom/bbm/d/fs;->m:Z
if-nez v7, :cond_29c
:goto_298
invoke-virtual {v0, v8, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
goto :goto_279
:cond_29c
move v1, v2
goto :goto_298
:cond_29e
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v8, Lcom/bbm/d/ft;->e:Lcom/bbm/d/ft;
if-eq v0, v8, :cond_2aa
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v8, Lcom/bbm/d/ft;->f:Lcom/bbm/d/ft;
if-ne v0, v8, :cond_279
:cond_2aa
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v7, v7, Lcom/bbm/d/fs;->m:Z
if-nez v7, :cond_2b4
:goto_2b0
invoke-virtual {v0, v11, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
goto :goto_279
:cond_2b4
move v1, v2
goto :goto_2b0
:cond_2b6
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v3, 0x7f0e0350
iget-boolean v4, v7, Lcom/bbm/d/fs;->m:Z
if-nez v4, :cond_2ce
:goto_2bf
invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(IZ)V
new-instance v0, Ljava/io/File;
iget-object v1, v7, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v3
goto :goto_279
:cond_2ce
move v1, v2
goto :goto_2bf
:cond_2d0
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v1, Lcom/bbm/d/ft;->d:Lcom/bbm/d/ft;
if-eq v0, v1, :cond_2e2
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v1, Lcom/bbm/d/ft;->e:Lcom/bbm/d/ft;
if-eq v0, v1, :cond_2e2
iget-object v0, v7, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
sget-object v1, Lcom/bbm/d/ft;->f:Lcom/bbm/d/ft;
if-ne v0, v1, :cond_2e5
:cond_2e2
iget-wide v3, v7, Lcom/bbm/d/fs;->n:J
goto :goto_279
:cond_2e5
move-wide v3, v5
goto :goto_279
:cond_2e7
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0, v3, v4}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState(J)V
goto/16 :goto_36
:cond_2ee
iget-object v0, v7, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v3, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v3, :cond_301
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v2, v7, Lcom/bbm/d/fs;->b:J
long-to-int v2, v2
iget-wide v3, v7, Lcom/bbm/d/fs;->p:J
long-to-int v3, v3
invoke-virtual {v0, v2, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setProgressingState(IIZ)V
goto/16 :goto_36
:cond_301
const-string v0, "Unknown status!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_36
:pswitch_30a
iget-object v3, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v0, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_36
iput-boolean v2, p0, Lcom/bbm/ui/e/s;->w:Z
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v4, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v4
iget-object v0, p0, Lcom/bbm/ui/e/s;->p:Lcom/bbm/d/a;
iget-object v5, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v5}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v5, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/bbm/ui/FileTransferMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v5, v3, Lcom/bbm/d/fg;->s:J
invoke-virtual {v0, v5, v6}, Lcom/bbm/ui/FileTransferMessageView;->setDateText(J)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v5, v4, Lcom/bbm/d/ex;->d:Ljava/lang/String;
invoke-virtual {v0, v5}, Lcom/bbm/ui/FileTransferMessageView;->setDescriptionText(Ljava/lang/String;)V
invoke-static {v4}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/d/ex;)Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/FileTransferMessageView;->setFilenameText(Ljava/lang/String;)V
iget-object v6, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/s;->j:Landroid/content/Context;
invoke-static {v0, v4}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Lcom/bbm/d/ex;)Ljava/lang/String;
move-result-object v7
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v8, Lcom/bbm/d/ez;->c:Lcom/bbm/d/ez;
if-ne v0, v8, :cond_391
move v0, v1
:goto_355
invoke-virtual {v6, v7, v0}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-static {v5}, Lcom/bbm/util/bj;->a(Ljava/lang/String;)I
move-result v6
invoke-virtual {v0, v6}, Lcom/bbm/ui/FileTransferMessageView;->setPicture(I)V
const-class v0, Landroid/widget/TextView;
iget-object v6, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
const v7, 0x7f0a04a0
invoke-virtual {v6, v7}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const/16 v6, 0x8
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/s;->c:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v6, Lcom/bbm/d/ez;->a:Lcom/bbm/d/ez;
if-ne v0, v6, :cond_393
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-boolean v1, v4, Lcom/bbm/d/ex;->g:Z
iget-wide v2, v4, Lcom/bbm/d/ex;->k:J
invoke-static {v5}, Lcom/bbm/util/bj;->d(Ljava/lang/String;)Z
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bbm/ui/FileTransferMessageView;->setRequestSendState(ZJZ)V
goto/16 :goto_36
:cond_391
move v0, v2
goto :goto_355
:cond_393
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v5, Lcom/bbm/d/ez;->b:Lcom/bbm/d/ez;
if-ne v0, v5, :cond_3a6
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v2, v4, Lcom/bbm/d/ex;->c:J
long-to-int v2, v2
iget-wide v3, v4, Lcom/bbm/d/ex;->k:J
long-to-int v3, v3
invoke-virtual {v0, v2, v3, v1}, Lcom/bbm/ui/FileTransferMessageView;->setProgressingState(IIZ)V
goto/16 :goto_36
:cond_3a6
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v5, Lcom/bbm/d/ez;->c:Lcom/bbm/d/ez;
if-eq v0, v5, :cond_3b2
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v5, Lcom/bbm/d/ez;->d:Lcom/bbm/d/ez;
if-ne v0, v5, :cond_36
:cond_3b2
iget-wide v5, v4, Lcom/bbm/d/ex;->k:J
const-wide/16 v7, 0x0
cmp-long v0, v5, v7
if-lez v0, :cond_3ed
invoke-direct {p0, v4}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/d/ex;)V
const-string v0, "text/x-vcard"
iget-object v5, p0, Lcom/bbm/ui/e/s;->t:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d1
const-string v0, "text/vcard"
iget-object v5, p0, Lcom/bbm/ui/e/s;->t:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d2
:cond_3d1
move v2, v1
:cond_3d2
if-eqz v2, :cond_3e4
iget-object v0, v4, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v1, Lcom/bbm/d/ez;->c:Lcom/bbm/d/ez;
if-eq v0, v1, :cond_3e4
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
invoke-direct {p0, v3}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/d/fg;)V
goto/16 :goto_36
:cond_3e4
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v1, v4, Lcom/bbm/d/ex;->k:J
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState(J)V
goto/16 :goto_36
:cond_3ed
iget-object v0, p0, Lcom/bbm/ui/e/s;->q:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
goto/16 :goto_36
:pswitch_data_3f4
.packed-switch 0x1
:pswitch_30a
:pswitch_169
:pswitch_37
.end packed-switch
.end method