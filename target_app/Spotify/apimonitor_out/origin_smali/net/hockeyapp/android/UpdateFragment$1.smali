.class final Lnet/hockeyapp/android/UpdateFragment$1;
.super Lnet/hockeyapp/android/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lnet/hockeyapp/android/UpdateFragment;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->b:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lnet/hockeyapp/android/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lnet/hockeyapp/android/h;->b()Lnet/hockeyapp/android/i;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/i;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment$1;->b:Lnet/hockeyapp/android/UpdateFragment;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->a:Landroid/app/Activity;

    #calls: Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lnet/hockeyapp/android/UpdateFragment;->access$000(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    :cond_d
    return-void
.end method
