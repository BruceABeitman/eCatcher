.class final Lnet/hockeyapp/android/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/b;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lnet/hockeyapp/android/c;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
    .registers 4

    iput-object p1, p0, Lnet/hockeyapp/android/b$2;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/hockeyapp/android/b$2;->b:Lnet/hockeyapp/android/c;

    iput-boolean p3, p0, Lnet/hockeyapp/android/b$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lnet/hockeyapp/android/b$2;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/b$2;->b:Lnet/hockeyapp/android/c;

    iget-boolean v2, p0, Lnet/hockeyapp/android/b$2;->c:Z

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V

    return-void
.end method
