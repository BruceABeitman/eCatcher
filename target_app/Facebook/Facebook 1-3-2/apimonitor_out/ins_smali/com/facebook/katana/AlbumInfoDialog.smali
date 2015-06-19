.class public Lcom/facebook/katana/AlbumInfoDialog;
.super Ljava/lang/Object;
.source "AlbumInfoDialog.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static create(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookAlbum;)Landroid/app/Dialog;
.registers 7
const/4 v4, 0x0
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v3, 0x108009b
invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
const v3, 0x7f08000e
invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
const-string v3, "layout_inflater"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const/high16 v3, 0x7f03
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-static {p0, v1, p1}, Lcom/facebook/katana/AlbumInfoDialog;->fillView(Landroid/content/Context;Landroid/view/View;Lcom/facebook/katana/service/api/FacebookAlbum;)V
const v3, 0x7f0800bf
invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v3
return-object v3
.end method
.method private static fillView(Landroid/content/Context;Landroid/view/View;Lcom/facebook/katana/service/api/FacebookAlbum;)V
.registers 13
const v5, 0x7f0b0002
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getImageBytes()[B
move-result-object v2
if-eqz v2, :cond_62
const/4 v5, 0x0
array-length v6, v2
invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v5
invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_18
const v5, 0x7f0b0003
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v5, 0x7f0b0005
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
sget-object v5, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCreated()J
move-result-wide v6
const-wide/16 v8, 0x3e8
mul-long/2addr v6, v8
invoke-static {p0, v5, v6, v7}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v5, 0x7f0b0007
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v5, 0x7f0b0009
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_62
const/high16 v5, 0x7f02
invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_18
.end method
.method public static update(Landroid/app/Dialog;Lcom/facebook/katana/service/api/FacebookAlbum;)V
.registers 4
invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;
move-result-object v0
const/high16 v1, 0x7f0b
invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/facebook/katana/AlbumInfoDialog;->fillView(Landroid/content/Context;Landroid/view/View;Lcom/facebook/katana/service/api/FacebookAlbum;)V
return-void
.end method