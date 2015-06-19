.class final Landroid/support/v4/app/w;
.super Ljava/lang/Object;
.source "FragmentManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v4/app/u;
.method constructor <init>(Landroid/support/v4/app/u;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/w;->a:Landroid/support/v4/app/u;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/w;->a:Landroid/support/v4/app/u;
iget-object v1, p0, Landroid/support/v4/app/w;->a:Landroid/support/v4/app/u;
iget-object v1, v1, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;
invoke-virtual {v1}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;
const/4 v1, 0x0
const/4 v2, -0x1
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z
return-void
.end method