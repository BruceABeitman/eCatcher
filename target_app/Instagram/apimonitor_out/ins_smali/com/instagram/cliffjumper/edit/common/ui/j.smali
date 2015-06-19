.class final Lcom/instagram/cliffjumper/edit/common/ui/j;
.super Lcom/instagram/cliffjumper/edit/common/ui/h;
.source "TileButton.java"
.implements Ljava/lang/Runnable;
.field private static a:I
.field private b:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x19
sput v0, Lcom/instagram/cliffjumper/edit/common/ui/j;->a:I
return-void
.end method
.method public constructor <init>(Landroid/view/View;)V
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/h;-><init>(Landroid/view/View;)V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;
sget v1, Lcom/instagram/cliffjumper/edit/common/ui/j;->a:I
int-to-long v1, v1
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method protected final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;
invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final run()V
.registers 3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/j;->a(J)V
return-void
.end method