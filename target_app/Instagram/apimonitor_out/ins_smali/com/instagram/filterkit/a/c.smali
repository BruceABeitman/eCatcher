.class public final Lcom/instagram/filterkit/a/c;
.super Ljava/lang/Object;
.source "IgRenderSurface.java"
.field private final a:Lcom/instagram/filterkit/a/e;
.field private final b:Landroid/graphics/SurfaceTexture;
.field private final c:Landroid/view/SurfaceHolder;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->b:Landroid/graphics/SurfaceTexture;
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->c:Landroid/view/SurfaceHolder;
sget-object v0, Lcom/instagram/filterkit/a/e;->c:Lcom/instagram/filterkit/a/e;
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->a:Lcom/instagram/filterkit/a/e;
return-void
.end method
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/filterkit/a/c;->b:Landroid/graphics/SurfaceTexture;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->c:Landroid/view/SurfaceHolder;
sget-object v0, Lcom/instagram/filterkit/a/e;->a:Lcom/instagram/filterkit/a/e;
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->a:Lcom/instagram/filterkit/a/e;
return-void
.end method
.method public constructor <init>(Landroid/view/SurfaceHolder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->b:Landroid/graphics/SurfaceTexture;
iput-object p1, p0, Lcom/instagram/filterkit/a/c;->c:Landroid/view/SurfaceHolder;
sget-object v0, Lcom/instagram/filterkit/a/e;->b:Lcom/instagram/filterkit/a/e;
iput-object v0, p0, Lcom/instagram/filterkit/a/c;->a:Lcom/instagram/filterkit/a/e;
return-void
.end method
.method public final a()Ljava/lang/Object;
.registers 4
sget-object v0, Lcom/instagram/filterkit/a/d;->a:[I
iget-object v1, p0, Lcom/instagram/filterkit/a/c;->a:Lcom/instagram/filterkit/a/e;
invoke-virtual {v1}, Lcom/instagram/filterkit/a/e;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_32
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "SURFACE_TYPE "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/c;->a:Lcom/instagram/filterkit/a/e;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " not handled"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2a
iget-object v0, p0, Lcom/instagram/filterkit/a/c;->c:Landroid/view/SurfaceHolder;
:goto_2c
return-object v0
:pswitch_2d
iget-object v0, p0, Lcom/instagram/filterkit/a/c;->b:Landroid/graphics/SurfaceTexture;
goto :goto_2c
:pswitch_30
const/4 v0, 0x0
goto :goto_2c
:pswitch_data_32
.packed-switch 0x1
:pswitch_2a
:pswitch_2d
:pswitch_30
.end packed-switch
.end method