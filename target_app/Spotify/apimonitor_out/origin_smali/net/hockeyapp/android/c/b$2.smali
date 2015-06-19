.class final Lnet/hockeyapp/android/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/c/b;
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/c/b;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/c/b;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/c/b$2;->a:Lnet/hockeyapp/android/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lnet/hockeyapp/android/c/b$2;->a:Lnet/hockeyapp/android/c/b;

    invoke-static {v0}, Lnet/hockeyapp/android/c/b;->a(Lnet/hockeyapp/android/c/b;)Lnet/hockeyapp/android/b/a;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/c/b$2;->a:Lnet/hockeyapp/android/c/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/b/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
