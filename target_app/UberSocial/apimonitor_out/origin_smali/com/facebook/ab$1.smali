.class Lcom/facebook/ab$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ab;


# direct methods
.method constructor <init>(Lcom/facebook/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ab$1;->a:Lcom/facebook/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ab$1;->a:Lcom/facebook/ab;

    invoke-static {v0, p1}, Lcom/facebook/ab;->a(Lcom/facebook/ab;Landroid/os/Message;)V

    return-void
.end method