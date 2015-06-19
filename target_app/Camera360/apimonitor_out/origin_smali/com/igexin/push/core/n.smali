.class public Lcom/igexin/push/core/n;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/igexin/push/core/n;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/n;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/n;

    invoke-direct {v0}, Lcom/igexin/push/core/n;-><init>()V

    sput-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v1, Lcom/igexin/push/core/a;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method
