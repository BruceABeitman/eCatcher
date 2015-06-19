.class final Lcom/loopj/android/http/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/loopj/android/http/e;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/e;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/loopj/android/http/f;->a:Lcom/loopj/android/http/e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/loopj/android/http/f;->a:Lcom/loopj/android/http/e;

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/e;->a(Landroid/os/Message;)V

    return-void
.end method
