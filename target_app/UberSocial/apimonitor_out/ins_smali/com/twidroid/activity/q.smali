.class  Lcom/twidroid/activity/q;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method private constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/SendTweet$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/q;-><init>(Lcom/twidroid/activity/SendTweet;)V
return-void
.end method
.method protected varargs a([Ljava/lang/String;)Lcom/twidroid/activity/r;
.registers 14
const/4 v4, 0x2
const/4 v11, 0x3
const/4 v8, 0x1
const/4 v6, 0x0
const/4 v0, 0x0
if-eqz p1, :cond_a
array-length v1, p1
if-ge v1, v8, :cond_b
:cond_a
:goto_a
return-object v0
:cond_b
array-length v1, p1
if-lez v1, :cond_95
aget-object v1, p1, v6
if-eqz v1, :cond_95
aget-object v2, p1, v6
:goto_14
array-length v1, p1
if-le v1, v8, :cond_98
aget-object v1, p1, v8
if-eqz v1, :cond_98
aget-object v1, p1, v8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
move v3, v1
:goto_26
array-length v1, p1
if-le v1, v4, :cond_9a
aget-object v1, p1, v4
if-eqz v1, :cond_9a
aget-object v1, p1, v4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
move v4, v1
:goto_38
array-length v1, p1
if-le v1, v11, :cond_9d
aget-object v1, p1, v11
if-eqz v1, :cond_9d
aget-object v1, p1, v11
:goto_41
if-eqz v1, :cond_9f
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
:goto_47
iget-object v5, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
iget-object v7, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v7}, Lcom/twidroid/activity/SendTweet;->a(Landroid/app/Activity;)I
move-result v7
invoke-static {v5, v2, v7}, Lcom/twidroid/d/r;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v7
if-nez v7, :cond_cc
:try_start_55
iget-object v5, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v5}, Lcom/twidroid/activity/SendTweet;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
invoke-static {v5, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
:try_end_5e
.catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5e} :catch_a1
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_ab
move-result-object v7
move-object v5, v7
:goto_60
if-eqz v5, :cond_a
:goto_62
if-eqz v3, :cond_ca
const/16 v3, 0x5a
invoke-static {v5, v3}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v3
:goto_6a
invoke-static {v2}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
invoke-static {v3, v5, v7}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
move-result-object v7
if-nez v7, :cond_b5
move v5, v8
:goto_77
if-eqz v5, :cond_ba
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
const/4 v3, -0x1
if-eq v4, v3, :cond_b7
iget-object v3, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v3}, Lcom/twidroid/activity/SendTweet;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
int-to-long v7, v4
invoke-static {v3, v7, v8, v11, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
move-object v4, v2
:goto_8b
new-instance v0, Lcom/twidroid/activity/r;
invoke-direct/range {v0 .. v6}, Lcom/twidroid/activity/r;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
invoke-static {v0}, Lcom/twidroid/d/m;->a(Lcom/twidroid/activity/r;)V
goto/16 :goto_a
:cond_95
move-object v2, v0
goto/16 :goto_14
:cond_98
move v3, v6
goto :goto_26
:cond_9a
const/4 v1, -0x1
move v4, v1
goto :goto_38
:cond_9d
move-object v1, v0
goto :goto_41
:cond_9f
move-object v1, v0
goto :goto_47
:catch_a1
move-exception v5
const-string v9, "com.twidroid.SendTweet"
const-string v10, ""
invoke-static {v9, v10, v5}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v5, v7
goto :goto_60
:catch_ab
move-exception v5
const-string v9, "com.twidroid.SendTweet"
const-string v10, ""
invoke-static {v9, v10, v5}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v5, v7
goto :goto_60
:cond_b5
move v5, v6
goto :goto_77
:cond_b7
move-object v4, v0
move-object v3, v0
goto :goto_8b
:cond_ba
const/16 v0, 0x64
invoke-static {v3, v0}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_c8
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
move-object v4, v7
move-object v3, v0
goto :goto_8b
:cond_c8
move-object v4, v7
goto :goto_8b
:cond_ca
move-object v3, v5
goto :goto_6a
:cond_cc
move-object v5, v7
goto :goto_62
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/q;->a([Ljava/lang/String;)Lcom/twidroid/activity/r;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 3
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
iget-object v0, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;Z)V
return-void
.end method
.method protected a(Lcom/twidroid/activity/r;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;Z)V
if-eqz p1, :cond_16
invoke-virtual {p1}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/activity/q;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0, p1}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)V
:cond_16
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/activity/r;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/q;->a(Lcom/twidroid/activity/r;)V
return-void
.end method