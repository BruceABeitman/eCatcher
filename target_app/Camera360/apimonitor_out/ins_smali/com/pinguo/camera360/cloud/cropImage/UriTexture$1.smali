.class  Lcom/pinguo/camera360/cloud/cropImage/UriTexture$1;
.super Ljava/lang/Thread;
.source "UriTexture.java"
.field private final synthetic val$options:Landroid/graphics/BitmapFactory$Options;
.method constructor <init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
.registers 3
iput-object p2, p0, Lcom/pinguo/camera360/cloud/cropImage/UriTexture$1;->val$options:Landroid/graphics/BitmapFactory$Options;
invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 3
const-wide/16 v0, 0x1770
:try_start_2
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/UriTexture$1;->val$options:Landroid/graphics/BitmapFactory$Options;
invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
:try_end_a
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
goto :goto_a
.end method