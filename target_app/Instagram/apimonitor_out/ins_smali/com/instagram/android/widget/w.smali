.class public abstract Lcom/instagram/android/widget/w;
.super Ljava/lang/Object;
.source "ShareTableFacebookAuthListener.java"
.implements Lcom/facebook/b/e;
.field private static final a:Landroid/os/Handler;
.field private final b:Lcom/instagram/model/a/b;
.field private final c:Landroid/support/v4/app/Fragment;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/instagram/android/widget/w;->a:Landroid/os/Handler;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/widget/w;->c:Landroid/support/v4/app/Fragment;
iput-object p2, p0, Lcom/instagram/android/widget/w;->b:Lcom/instagram/model/a/b;
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
sget-object v0, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
iget-object v1, p0, Lcom/instagram/android/widget/w;->b:Lcom/instagram/model/a/b;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V
invoke-static {}, Lcom/instagram/share/b/a;->b()V
invoke-virtual {p0}, Lcom/instagram/android/widget/w;->b()V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
return-void
.end method
.method public abstract b()V
.end method