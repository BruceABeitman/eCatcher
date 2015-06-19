.class public final Lcom/bbm/v;
.super Ljava/lang/Object;
.source "LifecycleLogger.java"


# instance fields
.field private final a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/w;

    invoke-direct {v0, p0}, Lcom/bbm/w;-><init>(Lcom/bbm/v;)V

    iput-object v0, p0, Lcom/bbm/v;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p1, p0, Lcom/bbm/v;->b:Landroid/app/Application;

    iget-object v0, p0, Lcom/bbm/v;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
