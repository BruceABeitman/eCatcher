.class final Lcom/twidroid/ui/a$5;
.super Lcom/ubermedia/net/f;
.source "SourceFile"
.field final synthetic a:Landroid/widget/RemoteViews;
.field final synthetic b:I
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Z
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/RemoteViews;ILjava/lang/String;Z)V
.registers 8
iput-object p4, p0, Lcom/twidroid/ui/a$5;->a:Landroid/widget/RemoteViews;
iput p5, p0, Lcom/twidroid/ui/a$5;->b:I
iput-object p6, p0, Lcom/twidroid/ui/a$5;->c:Ljava/lang/String;
iput-boolean p7, p0, Lcom/twidroid/ui/a$5;->d:Z
invoke-direct {p0, p1, p2, p3}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/twidroid/ui/a$5;->a:Landroid/widget/RemoteViews;
if-eqz v0, :cond_29
iget v0, p0, Lcom/twidroid/ui/a$5;->b:I
if-lez v0, :cond_29
const/4 v0, 0x0
:try_start_9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a$5;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x3e8
iget v3, p0, Lcom/twidroid/ui/a$5;->b:I
iget-boolean v4, p0, Lcom/twidroid/ui/a$5;->d:Z
invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
:try_end_29
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_2a
:cond_29
:goto_29
return-void
:catch_2a
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_29
.end method