.class public Lcom/igexin/push/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/igexin/sdk/aidl/IGexinMsgService;

.field private d:Landroid/content/ServiceConnection;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/ServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/b;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method public a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/b;->c:Lcom/igexin/sdk/aidl/IGexinMsgService;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/igexin/sdk/aidl/IGexinMsgService;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/d/b;->c:Lcom/igexin/sdk/aidl/IGexinMsgService;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/d/b;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/d/b;->e:Ljava/lang/String;

    return-object v0
.end method