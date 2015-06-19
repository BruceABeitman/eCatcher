.class final Lcom/a/a/a/cx;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/a/a/a/cw;
.method private constructor <init>(Lcom/a/a/a/cw;)V
.registers 2
iput-object p1, p0, Lcom/a/a/a/cx;->a:Lcom/a/a/a/cw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/a/a/a/cw;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/a/a/a/cx;-><init>(Lcom/a/a/a/cw;)V
return-void
.end method
.method static synthetic a(Lcom/a/a/a/cx;Landroid/app/Application;)V
.registers 3
if-eqz p1, :cond_a
new-instance v0, Lcom/a/a/a/cy;
invoke-direct {v0, p0}, Lcom/a/a/a/cy;-><init>(Lcom/a/a/a/cx;)V
invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
:cond_a
return-void
.end method