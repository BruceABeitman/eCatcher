.class final Lcom/squareup/picasso/af;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Landroid/os/HandlerThread;
.field final b:Lcom/squareup/picasso/e;
.field final c:Landroid/os/Handler;
.field  d:J
.field  e:J
.field  f:J
.field  g:J
.field  h:J
.field  i:J
.field  j:J
.field  k:J
.field  l:I
.field  m:I
.field  n:I
.method constructor <init>(Lcom/squareup/picasso/e;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/af;->b:Lcom/squareup/picasso/e;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "Picasso-Stats"
const/16 v2, 0xa
invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/squareup/picasso/af;->a:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/squareup/picasso/af;->a:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Lcom/squareup/picasso/ag;
iget-object v1, p0, Lcom/squareup/picasso/af;->a:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/ag;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/af;)V
iput-object v0, p0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;
return-void
.end method
.method private a(Landroid/graphics/Bitmap;I)V
.registers 7
invoke-static {p1}, Lcom/squareup/picasso/am;->a(Landroid/graphics/Bitmap;)I
move-result v0
iget-object v1, p0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;
iget-object v2, p0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;
const/4 v3, 0x0
invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method final a()V
.registers 3
iget-object v0, p0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method final a(Landroid/graphics/Bitmap;)V
.registers 3
const/4 v0, 0x2
invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;I)V
return-void
.end method
.method final b(Landroid/graphics/Bitmap;)V
.registers 3
const/4 v0, 0x3
invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;I)V
return-void
.end method