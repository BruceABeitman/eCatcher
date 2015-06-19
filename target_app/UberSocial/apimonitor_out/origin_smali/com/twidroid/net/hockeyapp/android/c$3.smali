.class final Lcom/twidroid/net/hockeyapp/android/c$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/hockeyapp/android/c;->d(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twidroid/net/hockeyapp/android/d;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->b:Lcom/twidroid/net/hockeyapp/android/d;

    iput-boolean p3, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->c:Z

    iput-object p4, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->b:Lcom/twidroid/net/hockeyapp/android/d;

    invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;)V

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->b:Lcom/twidroid/net/hockeyapp/android/d;

    iget-boolean v2, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->c:Z

    iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/c$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method
