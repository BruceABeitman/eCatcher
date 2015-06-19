.class public Lcom/bbm/ui/activities/GroupPictureActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupPictureActivity.java"
.field private a:Landroid/content/Intent;
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private d:Lcom/bbm/ui/InlineImageTextView;
.field private e:Lcom/bbm/ui/InlineImageTextView;
.field private f:Landroid/widget/TextView;
.field private g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.field private h:Lcom/bbm/ui/activities/rh;
.field private i:Landroid/widget/RelativeLayout;
.field private j:Landroid/net/Uri;
.field private k:I
.field private l:Landroid/content/Context;
.field private m:Z
.field private n:Lcom/bbm/util/b/d;
.field private final o:Lcom/bbm/j/k;
.field private p:Lcom/bbm/d/b/f;
.field private final q:Lcom/bbm/ui/cj;
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->k:I
new-instance v0, Lcom/bbm/ui/activities/qu;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qu;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->o:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/qv;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qv;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->p:Lcom/bbm/d/b/f;
new-instance v0, Lcom/bbm/ui/activities/re;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/re;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->q:Lcom/bbm/ui/cj;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->b:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->d:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->e:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->f:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->i:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
return-object v0
.end method
.method private f()V
.registers 4
invoke-static {p0}, Lcom/bbm/util/fb;->c(Landroid/app/Activity;)Landroid/content/Intent;
move-result-object v0
const-string v1, "output"
const-string v2, "image/jpeg"
invoke-static {v2}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupPictureActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->k:I
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/GroupPictureActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->f()V
return-void
.end method
.method static synthetic i(Lcom/bbm/ui/activities/GroupPictureActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->m:Z
return v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/GroupPictureActivity;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "image/jpeg"
invoke-static {v1}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
const-string v1, "output"
iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const/4 v1, 0x2
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic k(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->l:Landroid/content/Context;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/util/b/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->n:Lcom/bbm/util/b/d;
return-object v0
.end method
.method final a(Lcom/bbm/ui/activities/rf;)Lcom/bbm/ui/gp;
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, v0, Lcom/bbm/ui/gk;->e:[I
array-length v0, v0
if-ge v1, v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, v0, Lcom/bbm/ui/gk;->a:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/gp;
iget-object v2, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;
if-ne v2, p1, :cond_18
:goto_17
return-object v0
:cond_18
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1c
new-instance v0, Lcom/bbm/ui/gp;
invoke-direct {v0, p1}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V
goto :goto_17
.end method
.method public final b()V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/GroupProfileActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 9
const/4 v4, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/md;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, -0x1
if-eq p2, v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->a:Landroid/content/Intent;
const-string v1, "addpic"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->finish()V
:cond_14
:goto_14
return-void
:cond_15
const/4 v0, 0x0
const/4 v1, 0x1
if-ne p1, v1, :cond_77
if-eqz p3, :cond_2c
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
if-eqz v1, :cond_68
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->a:Landroid/content/Intent;
const-string v2, "addpic"
invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
:goto_2c
:cond_2c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "selectedImageUri "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz v0, :cond_14
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->a:Landroid/content/Intent;
const-string v3, "addpic"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v2, "groupUri"
iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "picturePath"
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_14
:cond_68
invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2c
invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_2c
:cond_77
const/4 v1, 0x2
if-ne p1, v1, :cond_2c
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/bbm/util/b/h;->b(Landroid/content/Context;Landroid/net/Uri;)V
goto :goto_2c
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v6, 0x7f0e05d0
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_14
const-string v0, "cameraFileUri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
:cond_14
const v0, 0x7f030030
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->a:Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->a:Landroid/content/Intent;
const-string v1, "addpic"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_2d
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->f()V
:cond_2d
iput-object p0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->l:Landroid/content/Context;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->l:Landroid/content/Context;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->m:Z
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0201e8
const v3, 0x7f0e041c
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-boolean v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->m:Z
if-eqz v1, :cond_161
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0201fb
invoke-direct {v1, p0, v2, v6}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
:goto_5d
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->q:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f03010a
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0535
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0539
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->d:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a053a
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0538
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->f:Landroid/widget/TextView;
const v0, 0x7f0a01d9
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/qy;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qy;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->b:Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/ui/activities/qz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qz;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->d:Lcom/bbm/ui/InlineImageTextView;
new-instance v1, Lcom/bbm/ui/activities/ra;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ra;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->e:Lcom/bbm/ui/InlineImageTextView;
new-instance v1, Lcom/bbm/ui/activities/rb;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/rb;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a01d6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->i:Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0018
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->k:I
new-instance v0, Lcom/bbm/util/b/f;
invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V
const v1, 0x3e19999a
invoke-virtual {v0, v1}, Lcom/bbm/util/b/f;->a(F)V
invoke-static {v0, p0}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->n:Lcom/bbm/util/b/d;
new-instance v0, Lcom/bbm/ui/activities/rh;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->p:Lcom/bbm/d/b/f;
invoke-direct {v0, p0, p0, v1}, Lcom/bbm/ui/activities/rh;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;Landroid/content/Context;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;
const-wide/16 v1, 0xc8
iput-wide v1, v0, Lcom/bbm/ui/ct;->a:J
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/rh;->b(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0}, Lcom/bbm/ui/activities/rh;->d()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0}, Lcom/bbm/ui/activities/rh;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
new-instance v1, Lcom/bbm/ui/activities/rc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/rc;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/rh;->a(Lcom/bbm/ui/cx;)V
const v0, 0x7f0a01d5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
new-instance v1, Lcom/bbm/ui/activities/rd;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/rd;-><init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
sget-object v2, Lcom/bbm/g/aw;->b:Lcom/bbm/g/aw;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_161
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0201fc
const v3, -0x777778
invoke-direct {v1, p0, v2, v6, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;III)V
invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
goto/16 :goto_5d
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->p:Lcom/bbm/d/b/f;
invoke-virtual {v0}, Lcom/bbm/d/b/f;->g()V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->p:Lcom/bbm/d/b/f;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/rh;->a(Lcom/bbm/ui/cx;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0}, Lcom/bbm/ui/activities/rh;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0}, Lcom/bbm/ui/activities/rh;->f()V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeAllViewsInLayout()V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->i:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->n:Lcom/bbm/util/b/d;
invoke-virtual {v0, p0}, Lcom/bbm/util/b/d;->a(Landroid/app/Activity;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->o:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
invoke-virtual {v0}, Lcom/bbm/ui/activities/rh;->e()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->m:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->m:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->o:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->h:Lcom/bbm/ui/activities/rh;
iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "cameraFileUri"
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureActivity;->j:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method