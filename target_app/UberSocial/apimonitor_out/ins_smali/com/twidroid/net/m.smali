.class public Lcom/twidroid/net/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/l;
.field private a:Landroid/app/Activity;
.field private b:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/m;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/twidroid/net/m;->b:Landroid/widget/ImageView;
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/m;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/m;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/m;->a:Landroid/app/Activity;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/twidroid/net/m;->a:Landroid/app/Activity;
new-instance v1, Lcom/twidroid/net/m$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/net/m$1;-><init>(Lcom/twidroid/net/m;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_4
.end method