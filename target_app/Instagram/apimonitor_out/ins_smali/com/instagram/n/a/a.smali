.class public final Lcom/instagram/n/a/a;
.super Ljava/lang/Object;
.source "AlertDialogUtil.java"
.field private static final a:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/instagram/n/a/a;->a:Landroid/os/Handler;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/instagram/n/a/a;->a:Landroid/os/Handler;
new-instance v1, Lcom/instagram/n/a/b;
invoke-direct {v1, p0, p2, p1, p3}, Lcom/instagram/n/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method