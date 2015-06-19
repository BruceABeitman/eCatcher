.class public Lcom/twidroid/ui/a/ai;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private static final j:Ljava/lang/String; = "ThemeAdapter"
.field protected a:Landroid/view/LayoutInflater;
.field  b:Landroid/content/Context;
.field  c:Landroid/os/Handler;
.field  d:J
.field  e:J
.field public f:Z
.field public g:Z
.field  h:Lcom/twidroid/UberSocialApplication;
.field  i:Ljava/util/List;
.field private k:Ljava/util/ArrayList;
.field private l:I
.field private m:I
.method public constructor <init>(Landroid/content/Context;JLcom/twidroid/UberSocialApplication;)V
.registers 8
const/4 v2, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/ui/a/ai;->e:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/ui/a/ai;->f:Z
iput-boolean v2, p0, Lcom/twidroid/ui/a/ai;->g:Z
iput v2, p0, Lcom/twidroid/ui/a/ai;->l:I
iput v2, p0, Lcom/twidroid/ui/a/ai;->m:I
iput-object p1, p0, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/ai;->c:Landroid/os/Handler;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/ai;->a:Landroid/view/LayoutInflater;
iput-wide p2, p0, Lcom/twidroid/ui/a/ai;->d:J
iput-object p4, p0, Lcom/twidroid/ui/a/ai;->h:Lcom/twidroid/UberSocialApplication;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/themes/m;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/ai;->i:Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ai;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/a/ai;->m:I
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->i:Ljava/util/List;
invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/a/ai;->a(Landroid/content/Context;Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/a/ai;->l:I
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ai;->b(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/ai;)I
.registers 2
iget v0, p0, Lcom/twidroid/ui/a/ai;->l:I
return v0
.end method
.method private a(Landroid/content/Context;Ljava/util/List;)V
.registers 16
const/4 v3, 0x0
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_5
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v4, v0
check-cast v4, Lcom/twidroid/ui/themes/n;
iget-object v11, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
iget v12, p0, Lcom/twidroid/ui/a/ai;->m:I
new-instance v0, Lcom/twidroid/ui/themes/b/b;
const-string v1, "2"
invoke-virtual {v4}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;
move-result-object v2
const-string v6, "ubermedia"
const/4 v7, 0x0
invoke-virtual {v4}, Lcom/twidroid/ui/themes/n;->a()Ljava/lang/String;
move-result-object v8
invoke-virtual {v4}, Lcom/twidroid/ui/themes/n;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v5
invoke-static {v4, v5}, Lcom/twidroid/ui/themes/m;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v9
move-object v4, v3
move-object v5, v3
invoke-direct/range {v0 .. v9}, Lcom/twidroid/ui/themes/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v11, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
goto :goto_5
:cond_3a
return-void
.end method
.method static synthetic b(Lcom/twidroid/ui/a/ai;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
return-object v0
.end method
.method private b(Landroid/content/Context;)V
.registers 9
new-instance v0, Lcom/twidroid/ui/a/ai$1;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://twidroydfactory.appspot.com/u/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/twidroid/ui/a/ai;->d:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "custom_theme_cache.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
move-object v1, p0
move-object v2, p1
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a/ai$1;-><init>(Lcom/twidroid/ui/a/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/twidroid/ui/a/ai$1;->start()V
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 11
const/4 v7, 0x0
const/4 v3, 0x0
iget-object v8, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v0, Lcom/twidroid/ui/themes/b/c;
const-string v1, "1"
const v2, 0x7f0c02e4
invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/themes/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x5
const-string v5, "file:///android_asset/themes/icon_timeline_ice.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x4
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x3
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x1
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x2
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x6
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/4 v4, 0x7
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0x8
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0x9
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0xa
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0xb
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0xc
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0xd
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/ui/themes/b/a;
const-string v2, "1"
const/16 v4, 0xe
const-string v5, "file:///android_asset/themes/appicon_ut.png"
invoke-direct {v1, v2, v4, v5}, Lcom/twidroid/ui/themes/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_117
iget-object v8, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
new-instance v0, Lcom/twidroid/ui/themes/b/c;
const-string v1, "1"
const v2, 0x7f0c018b
invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/themes/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_117
return-void
.end method
.method public a(Landroid/content/Context;Lcom/twidroid/ui/themes/b/c;Landroid/widget/ImageView;)V
.registers 12
const/4 v5, 0x0
instance-of v0, p2, Lcom/twidroid/ui/themes/b/b;
if-nez v0, :cond_9
instance-of v0, p2, Lcom/twidroid/ui/themes/b/a;
if-eqz v0, :cond_16
:cond_9
invoke-virtual {p2, p1}, Lcom/twidroid/ui/themes/b/c;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
:cond_15
:goto_15
return-void
:cond_16
const-string v0, "ListAdapter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Image URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p2, Lcom/twidroid/ui/themes/b/c;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "ListAdapter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "ImageHash UberSocialRemoteTheme "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/twidroid/ui/themes/b/c;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/twidroid/ui/themes/b/c;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_b8
invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
:goto_7a
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v6, 0x9ba3c0
sub-long/2addr v3, v6
cmp-long v1, v1, v3
if-ltz v1, :cond_90
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_15
:cond_90
new-instance v0, Lcom/twidroid/ui/a/ai$4;
iget-object v3, p2, Lcom/twidroid/ui/themes/b/c;->e:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/twidroid/ui/themes/b/c;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object v1, p0
move-object v2, p1
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a/ai$4;-><init>(Lcom/twidroid/ui/a/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/ImageView;)V
invoke-virtual {v0}, Lcom/twidroid/ui/a/ai$4;->start()V
goto/16 :goto_15
:cond_b8
invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_7a
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/4 v3, 0x0
const/4 v6, -0x1
const/4 v2, 0x4
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->k:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/themes/b/c;
iget-object v1, v0, Lcom/twidroid/ui/themes/b/c;->g:Ljava/lang/String;
if-nez v1, :cond_3e
new-instance p2, Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;
invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const v1, -0xbbbbbc
invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/c;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V
const v0, 0x7f02007d
invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V
const/4 v0, 0x2
const/high16 v1, 0x4180
invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
const/4 v1, 0x1
invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
move-object v0, p2
:goto_3d
return-object v0
:cond_3e
iget-object v1, v0, Lcom/twidroid/ui/themes/b/c;->g:Ljava/lang/String;
const-string v2, "create_your_own_theme"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_78
iget-object v0, p0, Lcom/twidroid/ui/a/ai;->a:Landroid/view/LayoutInflater;
const v1, 0x1090003
invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V
iget-boolean v1, p0, Lcom/twidroid/ui/a/ai;->f:Z
if-eqz v1, :cond_71
iget-boolean v1, p0, Lcom/twidroid/ui/a/ai;->g:Z
if-eqz v1, :cond_6d
const v1, 0x7f0c0118
:goto_61
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:goto_64
new-instance v1, Lcom/twidroid/ui/a/ai$2;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a/ai$2;-><init>(Lcom/twidroid/ui/a/ai;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_3d
:cond_6d
const v1, 0x7f0c015d
goto :goto_61
:cond_71
const v1, 0x7f0c01e3
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
goto :goto_64
:cond_78
if-eqz p2, :cond_7e
instance-of v1, p2, Landroid/widget/RelativeLayout;
if-nez v1, :cond_107
:cond_7e
iget-object v1, p0, Lcom/twidroid/ui/a/ai;->a:Landroid/view/LayoutInflater;
const v2, 0x7f03005a
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/twidroid/ui/a/aj;
invoke-direct {v2, p0}, Lcom/twidroid/ui/a/aj;-><init>(Lcom/twidroid/ui/a/ai;)V
const v1, 0x7f090109
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/ui/a/aj;->a:Landroid/widget/TextView;
const v1, 0x7f090040
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v2, Lcom/twidroid/ui/a/aj;->d:Landroid/widget/ImageView;
const v1, 0x7f09010a
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/ui/a/aj;->b:Landroid/widget/TextView;
const v1, 0x7f090134
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/ui/a/aj;->c:Landroid/widget/TextView;
const v1, 0x7f090135
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, v2, Lcom/twidroid/ui/a/aj;->e:Landroid/widget/Button;
iget-object v1, v2, Lcom/twidroid/ui/a/aj;->e:Landroid/widget/Button;
new-instance v3, Lcom/twidroid/ui/a/ai$3;
invoke-direct {v3, p0}, Lcom/twidroid/ui/a/ai$3;-><init>(Lcom/twidroid/ui/a/ai;)V
invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_d1
iget-wide v2, p0, Lcom/twidroid/ui/a/ai;->e:J
int-to-long v4, p1
cmp-long v2, v2, v4
if-nez v2, :cond_10e
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->a:Landroid/widget/TextView;
const/high16 v3, -0x1
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_df
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/c;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->b:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/ui/themes/b/c;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->c:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/ui/themes/b/c;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->e:Landroid/widget/Button;
invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v1, v1, Lcom/twidroid/ui/a/aj;->d:Landroid/widget/ImageView;
invoke-virtual {p0, v2, v0, v1}, Lcom/twidroid/ui/a/ai;->a(Landroid/content/Context;Lcom/twidroid/ui/themes/b/c;Landroid/widget/ImageView;)V
move-object v0, p2
goto/16 :goto_3d
:cond_107
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/aj;
goto :goto_d1
:cond_10e
iget-object v2, v1, Lcom/twidroid/ui/a/aj;->a:Landroid/widget/TextView;
invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_df
.end method