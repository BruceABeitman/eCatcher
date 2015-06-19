.class final Lnet/hockeyapp/android/b$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lnet/hockeyapp/android/c;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
    .registers 4

    iput-object p1, p0, Lnet/hockeyapp/android/b$3;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/hockeyapp/android/b$3;->b:Lnet/hockeyapp/android/c;

    iput-boolean p3, p0, Lnet/hockeyapp/android/b$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lnet/hockeyapp/android/b$3;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/b$3;->b:Lnet/hockeyapp/android/c;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;)V

    iget-object v0, p0, Lnet/hockeyapp/android/b$3;->a:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lnet/hockeyapp/android/b$3;->b:Lnet/hockeyapp/android/c;

    iget-boolean v1, p0, Lnet/hockeyapp/android/b$3;->c:Z

    invoke-static {v0, v1}, Lnet/hockeyapp/android/b;->a(Lnet/hockeyapp/android/c;Z)V

    return-void
.end method
