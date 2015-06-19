.class public final Lcom/instagram/common/h/g;
.super Ljava/lang/Object;
.source "IgGlobalEventBus.java"
.field private static a:Lcom/instagram/common/h/b;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/instagram/common/h/b;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/h/b;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/instagram/common/h/g;->a:Lcom/instagram/common/h/b;
return-void
.end method
.method public static a()Lcom/instagram/common/h/b;
.registers 1
sget-object v0, Lcom/instagram/common/h/g;->a:Lcom/instagram/common/h/b;
return-object v0
.end method