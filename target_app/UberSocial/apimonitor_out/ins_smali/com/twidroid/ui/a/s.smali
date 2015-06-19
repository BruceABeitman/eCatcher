.class public Lcom/twidroid/ui/a/s;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private final a:[I
.field private b:Ljava/util/ArrayList;
.field private c:Landroid/content/Context;
.field private d:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/16 v0, 0xb
new-array v0, v0, [I
fill-array-data v0, :array_10
iput-object v0, p0, Lcom/twidroid/ui/a/s;->a:[I
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/s;->a(Landroid/content/Context;)V
return-void
:array_10
.array-data 0x4
0x30t 0x1t 0xct 0x7ft
0x26t 0x1t 0xct 0x7ft
0x28t 0x1t 0xct 0x7ft
0x29t 0x1t 0xct 0x7ft
0x2at 0x1t 0xct 0x7ft
0x2bt 0x1t 0xct 0x7ft
0x2ct 0x1t 0xct 0x7ft
0x2dt 0x1t 0xct 0x7ft
0x2et 0x1t 0xct 0x7ft
0x2ft 0x1t 0xct 0x7ft
0x27t 0x1t 0xct 0x7ft
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/16 v0, 0xb
new-array v0, v0, [I
fill-array-data v0, :array_14
iput-object v0, p0, Lcom/twidroid/ui/a/s;->a:[I
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/s;->a(Landroid/content/Context;)V
invoke-direct {p0, p2}, Lcom/twidroid/ui/a/s;->a(Landroid/graphics/Bitmap;)V
return-void
nop
:array_14
.array-data 0x4
0x30t 0x1t 0xct 0x7ft
0x26t 0x1t 0xct 0x7ft
0x28t 0x1t 0xct 0x7ft
0x29t 0x1t 0xct 0x7ft
0x2at 0x1t 0xct 0x7ft
0x2bt 0x1t 0xct 0x7ft
0x2ct 0x1t 0xct 0x7ft
0x2dt 0x1t 0xct 0x7ft
0x2et 0x1t 0xct 0x7ft
0x2ft 0x1t 0xct 0x7ft
0x27t 0x1t 0xct 0x7ft
.end array-data
.end method
.method private a()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/s;->d:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/ui/a/s;)Landroid/graphics/Bitmap;
.registers 2
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->a()Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/s;->c:Landroid/content/Context;
return-void
.end method
.method private a(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/s;->d:Landroid/graphics/Bitmap;
return-void
.end method
.method private b()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/s;->c:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/ui/a/s;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
return-object v0
.end method
.method private c()Ljava/util/ArrayList;
.registers 9
const/4 v7, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
if-nez v0, :cond_13
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->a()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_16
:cond_13
:goto_13
iget-object v0, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
return-object v0
:cond_16
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->a()Landroid/graphics/Bitmap;
move-result-object v1
invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
new-instance v3, Lcom/twidroid/ui/a/t;
iget-object v4, p0, Lcom/twidroid/ui/a/s;->c:Landroid/content/Context;
iget-object v5, p0, Lcom/twidroid/ui/a/s;->a:[I
aget v5, v5, v2
invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, p0, v0, v4, v2}, Lcom/twidroid/ui/a/t;-><init>(Lcom/twidroid/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move v1, v2
:goto_34
const/16 v0, 0xa
if-ge v1, v0, :cond_5a
add-int/lit8 v3, v1, 0x1
iget-object v4, p0, Lcom/twidroid/ui/a/s;->b:Ljava/util/ArrayList;
new-instance v5, Lcom/twidroid/ui/a/t;
iget-object v0, p0, Lcom/twidroid/ui/a/s;->a:[I
array-length v0, v0
if-ge v3, v0, :cond_57
iget-object v0, p0, Lcom/twidroid/ui/a/s;->c:Landroid/content/Context;
iget-object v6, p0, Lcom/twidroid/ui/a/s;->a:[I
aget v6, v6, v3
invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_4d
invoke-direct {v5, p0, v7, v0, v3}, Lcom/twidroid/ui/a/t;-><init>(Lcom/twidroid/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_34
:cond_57
const-string v0, ""
goto :goto_4d
:cond_5a
new-instance v0, Lcom/twidroid/ui/a/u;
invoke-direct {v0, p0}, Lcom/twidroid/ui/a/u;-><init>(Lcom/twidroid/ui/a/s;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Void;
aput-object v7, v1, v2
const/4 v2, 0x1
aput-object v7, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/u;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_13
.end method
.method public a(I)Lcom/twidroid/ui/a/t;
.registers 3
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->c()Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/t;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public getCount()I
.registers 2
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->c()Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/s;->a(I)Lcom/twidroid/ui/a/t;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
if-nez p2, :cond_63
invoke-direct {p0}, Lcom/twidroid/ui/a/s;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "layout_inflater"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f03001e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
:goto_16
instance-of v0, v1, Landroid/view/ViewGroup;
if-eqz v0, :cond_62
move-object v0, v1
check-cast v0, Landroid/view/ViewGroup;
const v2, 0x7f09005c
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
const v3, 0x7f09005d
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
const v4, 0x7f09005b
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v2, :cond_62
sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/s;->a(I)Lcom/twidroid/ui/a/t;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/ui/a/t;->a()Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_52
const/4 v5, 0x0
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
const/16 v5, 0x8
invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V
:cond_52
invoke-virtual {v4}, Lcom/twidroid/ui/a/t;->a()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
if-eqz v0, :cond_62
invoke-virtual {v4}, Lcom/twidroid/ui/a/t;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_62
return-object v1
:cond_63
move-object v1, p2
goto :goto_16
.end method