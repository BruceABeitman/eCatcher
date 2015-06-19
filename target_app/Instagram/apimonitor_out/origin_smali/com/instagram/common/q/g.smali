.class final Lcom/instagram/common/q/g;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/q/a;

.field final synthetic b:Lcom/instagram/common/q/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/q/g;->b:Lcom/instagram/common/q/b;

    iput-object p2, p0, Lcom/instagram/common/q/g;->a:Lcom/instagram/common/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/q/g;->a:Lcom/instagram/common/q/a;

    invoke-virtual {v0}, Lcom/instagram/common/q/a;->a()Lcom/instagram/common/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/q/a;->c()V

    return-void
.end method
