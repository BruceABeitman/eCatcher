.class public final Lcom/bbm/c/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"
.field public a:Landroid/app/Application$ActivityLifecycleCallbacks;
.field public b:Landroid/app/Application;
.method public constructor <init>(Landroid/app/Application;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/c/b;
invoke-direct {v0, p0}, Lcom/bbm/c/b;-><init>(Lcom/bbm/c/a;)V
iput-object v0, p0, Lcom/bbm/c/a;->a:Landroid/app/Application$ActivityLifecycleCallbacks;
iput-object p1, p0, Lcom/bbm/c/a;->b:Landroid/app/Application;
return-void
.end method