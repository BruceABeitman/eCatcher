.class final Lcom/a/a/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/p;->a:Lcom/a/a/bf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/a/a/p;->a:Lcom/a/a/bf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/bf;->a(Lcom/a/a/bf;Z)Z

    return-void
.end method
