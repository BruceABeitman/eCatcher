.class public Lcom/twidroid/ui/a/au;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field protected a:Ljava/util/ArrayList;
.field public b:I
.field public c:I
.field protected d:Landroid/view/LayoutInflater;
.field  e:Lcom/twidroid/uberchannels/models/UberTopic;
.field  f:Landroid/content/Context;
.field  g:Landroid/os/Handler;
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/16 v0, 0x80
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x96
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/a/au;->e:Lcom/twidroid/uberchannels/models/UberTopic;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/twidroid/ui/a/au;->f:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/au;->g:Landroid/os/Handler;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/au;->d:Landroid/view/LayoutInflater;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3ff004189374bc6aL
cmpl-double v0, v0, v2
if-lez v0, :cond_41
const/16 v0, 0x64
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x82
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
:goto_40
return-void
:cond_41
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3fefae147ae147aeL
cmpg-double v0, v0, v2
if-gez v0, :cond_5e
const/16 v0, 0x3c
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x46
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
goto :goto_40
:cond_5e
const/16 v0, 0x50
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x5a
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
goto :goto_40
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.registers 7
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/16 v0, 0x80
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x96
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/a/au;->e:Lcom/twidroid/uberchannels/models/UberTopic;
iput-object p2, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/twidroid/ui/a/au;->f:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/au;->g:Landroid/os/Handler;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/au;->d:Landroid/view/LayoutInflater;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3ff004189374bc6aL
cmpl-double v0, v0, v2
if-lez v0, :cond_3c
const/16 v0, 0x64
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0xa0
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
:goto_3b
return-void
:cond_3c
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3fefae147ae147aeL
cmpg-double v0, v0, v2
if-gez v0, :cond_59
const/16 v0, 0x3c
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x5a
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
goto :goto_3b
:cond_59
const/16 v0, 0x50
iput v0, p0, Lcom/twidroid/ui/a/au;->b:I
const/16 v0, 0x6e
iput v0, p0, Lcom/twidroid/ui/a/au;->c:I
goto :goto_3b
.end method
.method public a(Lcom/twidroid/uberchannels/models/UberTopic;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/au;->e:Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {p0}, Lcom/twidroid/ui/a/au;->notifyDataSetChanged()V
return-void
.end method
.method public a(Lcom/twidroid/uberchannels/models/UberTopic;Landroid/widget/ImageView;)V
.registers 10
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v1, "UberTopicAdapter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Image URI: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->g()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_b0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_60
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v1, v1, v3
if-ltz v1, :cond_76
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_af
:cond_76
new-instance v0, Lcom/twidroid/ui/a/au$1;
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->g()Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "Accept"
aput-object v5, v1, v4
const/4 v4, 0x1
const-string v5, "application/json"
aput-object v5, v1, v4
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v4
move-object v1, p0
move-object v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a/au$1;-><init>(Lcom/twidroid/ui/a/au;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twidroid/uberchannels/models/UberTopic;Landroid/widget/ImageView;)V
invoke-virtual {v0}, Lcom/twidroid/ui/a/au$1;->start()V
:cond_af
return-void
:cond_b0
const/4 v1, 0x0
invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_60
.end method
.method public a(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/twidroid/ui/a/au;->notifyDataSetChanged()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
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
.registers 13
const/4 v8, 0x4
const/4 v7, -0x2
const v6, -0x777778
const/16 v5, 0x8
iget-object v0, p0, Lcom/twidroid/ui/a/au;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
if-nez p2, :cond_91
iget-object v1, p0, Lcom/twidroid/ui/a/au;->d:Landroid/view/LayoutInflater;
const v2, 0x7f030046
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/twidroid/ui/a/av;
invoke-direct {v2, p0}, Lcom/twidroid/ui/a/av;-><init>(Lcom/twidroid/ui/a/au;)V
const v1, 0x7f0900f4
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
iget-object v1, v2, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
const/4 v4, 0x1
invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v1, v2, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, v2, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
const v1, 0x7f0900f3
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v2, Lcom/twidroid/ui/a/av;->b:Landroid/widget/ImageView;
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_50
instance-of v2, p3, Landroid/widget/GridView;
if-nez v2, :cond_98
iget-object v2, p0, Lcom/twidroid/ui/a/au;->e:Lcom/twidroid/uberchannels/models/UberTopic;
if-eqz v2, :cond_98
iget-object v2, p0, Lcom/twidroid/ui/a/au;->e:Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {v2, v0}, Lcom/twidroid/uberchannels/models/UberTopic;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_98
iget-object v2, v1, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V
:goto_65
iget-object v2, v1, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/twidroid/ui/a/av;->b:Landroid/widget/ImageView;
invoke-virtual {p0, v0, v1}, Lcom/twidroid/ui/a/au;->a(Lcom/twidroid/uberchannels/models/UberTopic;Landroid/widget/ImageView;)V
instance-of v0, p3, Landroid/widget/Gallery;
if-eqz v0, :cond_81
new-instance v0, Landroid/widget/Gallery$LayoutParams;
iget v1, p0, Lcom/twidroid/ui/a/au;->c:I
iget v2, p0, Lcom/twidroid/ui/a/au;->b:I
invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_81
instance-of v0, p3, Landroid/widget/LinearLayout;
if-eqz v0, :cond_90
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v5, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_90
return-object p2
:cond_91
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/av;
goto :goto_50
:cond_98
iget-object v2, v1, Lcom/twidroid/ui/a/av;->a:Landroid/widget/TextView;
const/4 v3, -0x1
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v2, v1, Lcom/twidroid/ui/a/av;->b:Landroid/widget/ImageView;
const v3, 0x7f0201db
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V
goto :goto_65
.end method