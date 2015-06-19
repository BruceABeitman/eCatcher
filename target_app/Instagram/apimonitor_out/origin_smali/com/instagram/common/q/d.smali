.class final Lcom/instagram/common/q/d;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/q/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instagram/common/q/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/common/q/d;->c:Lcom/instagram/common/q/b;

    iput-object p2, p0, Lcom/instagram/common/q/d;->a:Lcom/instagram/common/q/a;

    iput-object p3, p0, Lcom/instagram/common/q/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/q/d;->a:Lcom/instagram/common/q/a;

    invoke-virtual {v0}, Lcom/instagram/common/q/a;->a()Lcom/instagram/common/q/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/q/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/q/a;->a(Ljava/lang/String;)V

    return-void
.end method
