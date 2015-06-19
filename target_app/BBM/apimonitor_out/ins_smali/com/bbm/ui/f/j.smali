.class final Lcom/bbm/ui/f/j;
.super Lcom/bbm/util/b;
.source "ChannelNotificationItem.java"
.field final synthetic a:Lcom/bbm/ui/f/i;
.method constructor <init>(Lcom/bbm/ui/f/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method private varargs b()Ljava/lang/Void;
.registers 6
iget-object v0, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v0}, Lcom/bbm/ui/f/i;->a(Lcom/bbm/ui/f/i;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_50
iget-object v0, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v0}, Lcom/bbm/ui/f/i;->b(Lcom/bbm/ui/f/i;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x1050005
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v0
float-to-int v0, v0
iget-object v1, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v1}, Lcom/bbm/ui/f/i;->b(Lcom/bbm/ui/f/i;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x1050006
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
:try_start_32
iget-object v2, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
new-instance v3, Ljava/net/URL;
iget-object v4, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v4}, Lcom/bbm/ui/f/i;->a(Lcom/bbm/ui/f/i;)Lcom/bbm/d/ec;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v3
invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v1}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v2, v0}, Lcom/bbm/ui/f/i;->a(Lcom/bbm/ui/f/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
:goto_50
:try_end_50
.catch Ljava/net/MalformedURLException; {:try_start_32 .. :try_end_50} :catch_52
.catch Ljava/net/URISyntaxException; {:try_start_32 .. :try_end_50} :catch_57
:cond_50
const/4 v0, 0x0
return-object v0
:catch_52
move-exception v0
invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
goto :goto_50
:catch_57
move-exception v0
invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
goto :goto_50
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/f/j;->b()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v0}, Lcom/bbm/ui/f/i;->d(Lcom/bbm/ui/f/i;)Lcom/bbm/ui/f/l;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-static {v1}, Lcom/bbm/ui/f/i;->c(Lcom/bbm/ui/f/i;)Lcom/bbm/d/ei;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ei;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/f/j;->a:Lcom/bbm/ui/f/i;
invoke-virtual {v2}, Lcom/bbm/ui/f/i;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method